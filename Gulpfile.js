'use strict'

const gulp = require('gulp'),
      connect = require('gulp-connect'),
      wrap = require('gulp-wrap')

gulp.task('render-markdown', function() {
    const mdAdapter = require('gulp-markdown-it-adapter'),
          markdownIt = require('markdown-it')
    const md = new markdownIt('commonmark')
    md.use(require('markdown-it-katex'),
        {"throwOnError" : false, "errorColor" : " #cc0000"})
    md.use(require('markdown-it-deflist'))

    return gulp
        .src('src/**/*')
        .pipe(mdAdapter(md))
        .pipe(wrap({src: 'template.html'}))
        .pipe(connect.reload())
        .pipe(gulp.dest('.build/www/'))
})

gulp.task('copy-katex-dist', function() {
    return gulp
        .src('node_modules/katex/dist/katex.min.css')
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
