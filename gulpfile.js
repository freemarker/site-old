'use strict';

var path      = require('path');

var gulp      = require('gulp');
var less      = require('gulp-less');
var rename    = require('gulp-rename');
var minifyCss = require('gulp-minify-css');
var prefix    = require('gulp-autoprefixer');

var paths = {
  target: path.join(__dirname, 'build', 'site')
};

gulp.task('styles', function() {
  gulp.src('./src/less/styles.less')
    .pipe(
      less()
    )
    .pipe(
      gulp.dest(path.join(paths.target))
    )
    //auto prefix
    .pipe(
      prefix(["last 1 version", "> 1%", "ie 8", "ie 7"], { cascade: true })
    )
    .pipe(
      gulp.dest(path.join(paths.target))
    )
    //minify and rename
    .pipe(
      rename({ suffix: ".min" })
    )
    .pipe(
      minifyCss()
    )
    .pipe(
      gulp.dest(path.join(paths.target))
    );

});


gulp.task('default', ['styles']);