var gulp = require("gulp");
var ghpages = require("gh-pages");
var util = require("gulp-util");

var connect = require("gulp-connect"),
    sass = require("gulp-sass"),
    htmlmin = require("gulp-htmlmin")
    inlineCss = require("gulp-inline-css");

var enviroment = "development";

gulp.task("s",["build","watch"], function(){
    connect.server({ 
        root: "public", 
        livereload: true 
    });
});

gulp.task("sass", function(){
    return gulp
      .src("./sass/**/*.scss")
      .pipe(sass({
          outputStyle: (enviroment == "development") ? "compact" : "compressed"
        }).on("error", sass.logError))
      .pipe(gulp.dest("./public/assets/css/"));
})

gulp.task("build",["sass"], function(){
     return gulp
       .src("src/*.html")
       .pipe(htmlmin({
           collapseWhitespace: true,
           minifyJS: true,
           processScripts: ["application/ld+json"]
         }))
       .pipe(gulp.dest("public"));
})

gulp.task("publish", function(){

    enviroment = "production";

    util.log("Started production build and deploy to github, env:" + enviroment);
    gulp.start("build");
    
    return ghpages.publish("public", function(err) {
        util.log("Deployment done");
    });

})

gulp.task("watch", function() {
  gulp.watch("src/**/*.html", ["build"]);
  gulp.watch("sass/**/*.sass", ["sass"]);
});