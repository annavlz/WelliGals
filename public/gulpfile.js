var gulp = require('gulp'),
    watch = require('gulp-watch'),
    run = require('gulp-run');

gulp.task('watch', function (cb) {
    watch('./source/*.js', function () {
        gulp.start('browserify');
    });
});

gulp.task('browserify', function() {
    gulp.src('./source/*.js')
        run('./bin/bundle').exec()
});

gulp.task('default', ['browserify', 'watch']);
