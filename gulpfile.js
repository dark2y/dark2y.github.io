var gulp = require("gulp");
var ghpages = require("gh-pages");
var util = require("gulp-util");
var reload = require('require-reload');

// Plugins
var connect = require("gulp-connect"),
    sass = require("gulp-sass"),
    htmlmin = require("gulp-htmlmin"),
    inlineCss = require("gulp-inline-css"),
    nunjucks = require("gulp-nunjucks"),
    rename = require("gulp-rename"),
    uglify = require('gulp-uglify'),
    cleanCSS = require('gulp-clean-css');
    gap = require('gulp-append-prepend');

var config = require("./settings.json");

gulp.task("serve",["sass","build","watch"], function(){
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

gulp.task('fonts', function() {
  return gulp.src('node_modules/@fortawesome/fontawesome-free/webfonts/*')
             .pipe(gulp.dest('public/assets/webfonts/'));
});

gulp.task("build", function(){
    
    // reload the settings
    var config = reload("./settings.json");

    return gulp
       .src("src/*.tpl")
       .pipe(nunjucks.compile(config))
       .pipe(htmlmin({
           collapseWhitespace: true,
           minifyJS: true,
           processScripts: ["application/ld+json"]
         }))
       .pipe(gap.prependFile('src/signature.txt'))
       .pipe(rename("index.html"))
       .pipe(gulp.dest("public"));
})

gulp.task("publish", function(){

    config.enviroment = "prod";

    util.log("Started production build and deploy to github, env:" + config.enviroment);

    gulp.start("sass");
    gulp.start("build");
    gulp.start("fonts");
    
    return ghpages.publish("public", function(err) {
        util.log("Deployment done");
    });

})

gulp.task("watch", function() {
  gulp.watch(["src/**/*.tpl", "./settings.json"], ["build"]);
  gulp.watch(["scss/*.scss"], ["sass", "fonts"]);
});

gulp.task("s", ["serve"]);