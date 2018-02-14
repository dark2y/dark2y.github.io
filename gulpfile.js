var gulp = require("gulp");

var connect = require("gulp-connect"),
    sass = require("gulp-sass"),
    htmlmin = require("gulp-htmlmin");



gulp.task("s",["sass","build","watch"], function(){
    connect.server({ 
        root: ".", 
        livereload: true 
    });
});

gulp.task("sass", function(){
    return gulp
        .src("./sass/**/*.scss")
        .pipe(sass().on("error", sass.logError))
        .pipe(gulp.dest("./assets/css/"));
})

gulp.task("build", function(){
     return gulp
       .src("src/*.html")
       .pipe(htmlmin({
           collapseWhitespace: true,
           minifyJS: true,
           processScripts: ["application/ld+json"]
         }))
       .pipe(gulp.dest("."));
})

gulp.task("watch", function() {
  gulp.watch("src/**/*.html", ["build"]);
  gulp.watch("sass/*.sass", ["sass"]);
});