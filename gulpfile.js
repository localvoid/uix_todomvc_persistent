'use strict';

var gulp = require('gulp');
var del = require('del');
var deploy = require('gulp-gh-pages');

gulp.task('clean', del.bind(null, ['./build']));

gulp.task('assets', function() {
  gulp.src(['./node_modules/todomvc-app-css/index.css',
            './node_modules/todomvc-common/base.js'])
    .pipe(gulp.dest('./web'));
});

gulp.task('deploy', ['default'], function () {
  return gulp.src(DEST + '/**/*')
    .pipe(deploy());
});

gulp.task('default', ['assets']);
