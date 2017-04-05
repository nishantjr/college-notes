'use strict'

const
    connect = require('gulp-connect'),
    gulpFrontMatter = require('gulp-front-matter'),
    gulp = require('gulp'),
    gulpTap = require('gulp-tap'),
    gulpWatch = require('gulp-watch'),
    gulpWrap = require('gulp-wrap'),
    markdownIt = require('markdown-it'),
    mdAdapter = require('gulp-markdown-it-adapter'),
    mdDeflist = require('markdown-it-deflist'),
    mdKatex = require('markdown-it-katex'),
    path = require('path'),
    concat = require('gulp-concat') // XXX

function titleFromPath() {
    return gulpTap(function(vinyl) {
        vinyl.title = (vinyl.frontMatter && vinyl.frontMatter.title)
            || path.basename(vinyl.path, '.md').split('-').map((s) =>
                (s.slice(0, 1).toUpperCase() + s.slice(1).toLowerCase())
            ).join(' ')
        vinyl.style = (vinyl.frontMatter && vinyl.frontMatter.style)
    })
}

const test = {

}

gulp.task('render-markdown', function() {
    const md = new markdownIt('commonmark')
    md.use(mdKatex,
        {"throwOnError" : false, "errorColor" : " #cc0000"})
    md.use(mdDeflist)
    md.enable('table')
    md.enable('strikethrough')

    const stream = gulp
        .src('src/**/*')
        .pipe(gulpFrontMatter({property: "frontMatter", remove: true }))
        .pipe(titleFromPath())
        .pipe(mdAdapter(md))
        .pipe(gulpWrap({src: 'template.html'}))
        .pipe(gulp.dest('.build/www/'))
        .pipe(concat('/dev/null'))
        .pipe(connect.reload())
    return stream;
})

gulp.task('copy-static-files', function() {
    return gulp
        .src('static/**/*')
        .pipe(gulp.dest('.build/www/'))
})

gulp.task('copy-katex-dist', function() {
    return gulp
        .src('node_modules/katex/dist/**/*')
        .pipe(gulp.dest('.build/www/katex/'))
})

gulp.task('build', ['copy-katex-dist', 'render-markdown', 'copy-static-files'])

gulp.task('serve', ['build'], function() {
    connect.server({
        root: '.build/www',
        livereload: true
        })
    gulpWatch(['./template.html*', 'src/**/*'], function() { gulp.start('build') } )
})

gulp.task('insta', function() {
    const insta = require('instant-markdown-d/index.js')
    const md = new markdownIt('commonmark')
    md.use(mdKatex,
        {"throwOnError" : false, "errorColor" : " #cc0000"})
    md.use(mdDeflist)
    md.enable('table')
    md.enable('strikethrough')

    insta({ md: md,
      interface: '127.0.0.1',
      allow_unsafe_content: false,
      block_external: false,
    })
})
