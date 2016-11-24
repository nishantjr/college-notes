'use strict'

const gulp = require('gulp'),
      connect = require('gulp-connect'),
      wrap = require('gulp-wrap'),
      path = require('path'),
      tap = require('gulp-tap')


function titleFromPath() {
    return tap(function(vinyl) {
        vinyl.title = path.basename(vinyl.path, '.md')
    })
}

gulp.task('render-markdown', function() {
    const mdAdapter = require('gulp-markdown-it-adapter'),
          markdownIt = require('markdown-it')
    const md = new markdownIt('commonmark')
    md.use(require('markdown-it-katex'),
        {"throwOnError" : false, "errorColor" : " #cc0000"})
    md.use(require('markdown-it-deflist'))

    return gulp
        .src('src/**/*')
        .pipe(titleFromPath())
        .pipe(mdAdapter(md))
        .pipe(wrap({src: 'template.html'}))
        .pipe(connect.reload())
        .pipe(gulp.dest('.build/www/'))
})

gulp.task('copy-katex-dist', function() {
    return gulp
        .src('node_modules/katex/dist/**/*')
        .pipe(gulp.dest('.build/www/katex/'))
})

gulp.task('build', ['copy-katex-dist', 'render-markdown'])

gulp.task('serve', ['build'], function() {
    const watch = require('gulp-watch')

    connect.server({
        root: '.build/www',
        livereload: true
        })
    watch(['./template.html*', 'src/**/*'], function() { gulp.start('build') } )
})
