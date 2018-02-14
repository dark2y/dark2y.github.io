var gulp = require("gulp");
var ghpages = require("gh-pages");
var util = require("gulp-util");

var connect = require("gulp-connect"),
    sass = require("gulp-sass"),
    htmlmin = require("gulp-htmlmin")
    inlineCss = require("gulp-inline-css")
    nunjucks = require("gulp-nunjucks")
    rename = require("gulp-rename");

var config = require("./settings.json");

gulp.task("s",["sass","build","watch"], function(){
    connect.server({ 
        root: "public", 
        livereload: true 
    });
});

gulp.task("sass", function() {
  return gulp
    .src("./scss/app.scss")
    .pipe(
      sass({
        outputStyle:
          config.enviroment == "dev" ? "compact" : "compressed"
      }).on("error", sass.logError)
    )
    .pipe(gulp.dest("./public/assets/css/"));
});

gulp.task("build", function(){
     return gulp
       .src("src/*.tpl")
       .pipe(nunjucks.compile(config))
       .pipe(htmlmin({
           collapseWhitespace: true,
           minifyJS: true,
           processScripts: ["application/ld+json"]
         }))
       .pipe(rename("index.html"))
       .pipe(gulp.dest("public"));
})

gulp.task("publish", function(){

    config.enviroment = "prod";

    util.log("Started production build and deploy to github, env:" + config.enviroment);

    gulp.start("sass");
    gulp.start("build");
    
    return ghpages.publish("public", function(err) {
        util.log("Deployment done");
    });

})

gulp.task("watch", function() {
  gulp.watch(["src/**/*.tpl"], ["build"]);
  gulp.watch(["scss/*.scss"], ["sass"]);
});