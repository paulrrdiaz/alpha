var path = {
	sources : '../sources/',
	jade : '../sources/jade/',
	stylus : '../sources/stylus/',
	coffee : '../sources/coffee/',
	static : {
		icons : '../sources/static/icons/',
		sprites : '../sources/static/img/sprites/',
		plugins : '../sources/static/img/plugins/',
		fonts : '../sources/static/fonts/'
	},
	app : '../../app/',
	html : '../../app/',
	css : '../../app/css/',
	fonts : '../../app/css/fonts/',
	js : '../../app/js/',
	img : '../../app/img/',
	plugins : '../../app/img/plugins/',
	sprite : '../../../img/'
};

var 
	gulp = require('gulp'),
	jade = require('gulp-jade'),
	stylus = require('gulp-stylus'),
	coffee = require('gulp-coffee'),
	uglify = require('gulp-uglify'),
	plumber = require('gulp-plumber'),
	recursiveConcat = require('gulp-recursive-concat'),
	runSequence = require('run-sequence'),
	rimraf = require('gulp-rimraf'),
	iconfont = require('gulp-iconfont'),
	iconfontCss = require('gulp-iconfont-css'),
	imagemin = require('gulp-imagemin'),
	spritesmith = require('gulp.spritesmith'),
	fs = require('fs'),
	pkg = require('./package.json'),
	notifier = require('node-notifier');

// task watch
gulp.task('watch', function() {
  gulp.watch([
  	path.jade + '**/*.jade',
  	path.jade + '**/**/*.jade'
  ], ['html']);

  gulp.watch([
  	path.stylus + '**/*.styl',
  	path.stylus + '**/**/*.styl'
  ], ['css']);

  gulp.watch([
  	path.coffee + 'libs/**/*.coffee',
  	path.coffee + 'modules/**/*.coffee'
  ], ['js']);
});

// task html | gulp-jade
gulp.task('html', function() {
	return gulp.src([
		path.jade + '**/*.jade',
		path.jade + '**/**/*.jade',
		'!' + path.jade + '_**/*.jade',
		'!' + path.jade + '**/**/_*.jade'
	])
	.pipe(plumber())
	.pipe(jade({
		pretty: true
	}))
	.pipe(gulp.dest(path.html));
});

// task css | gulp-stylus
gulp.task('css', function() {
	return gulp.src([
		path.stylus + '**/*.styl',
		path.stylus + '**/**/*.styl',
		'!' + path.stylus + '_**/*.styl',
		'!' + path.stylus + '**/_**/*.styl'
	])
	.pipe(plumber())
	.pipe(stylus({
		compress: true
	}))
	.pipe(gulp.dest(path.css));
});

// task js
gulp.task('js', function (cb) {
    runSequence('cleanJs', 'coffee', 'concat', cb);
});

// task coffee | gulp-coffee
gulp.task('coffee', function() {
	gulp.src([path.coffee + 'libs/**/*.coffee'])
	.pipe(plumber())
	.pipe(coffee())
	.pipe(gulp.dest(path.js + 'libs/'));

	return gulp.src([path.coffee + 'modules/**/*.coffee'])
	.pipe(plumber())
	.pipe(coffee())
	.pipe(uglify())
	.pipe(gulp.dest(path.js + 'modules/'));
});

// task concat | gulp-recursive-concat
gulp.task('concat', function() {
	return gulp.src([path.js + 'modules/**/*.js'])
	.pipe(plumber())
	.pipe(recursiveConcat({dist: 'modules/', extname: ".js"}))
	.pipe(gulp.dest(path.js + 'modules/'));
});

// task cleanJs | gulp-rimraf
gulp.task('cleanJs', function() {
	return gulp.src(path.js + 'modules/*')
	.pipe(rimraf({ force: true }));
});

// task icons | gulp-iconfont
gulp.task('icons', function() {
	return gulp.src([path.static.icons + '*.svg'])
	.pipe(plumber())
	.pipe(iconfontCss({
		fontName: 'icons',
		targetPath: '../../../' + path.stylus + '_helpers/icons.styl',
		fontPath: '../fonts/icons/'
	}))
	.pipe(iconfont({
		fontName: 'icons',
		fontHeight: 1000,
		normalize: true,
		centerHorizontally: true
	}))
	.pipe(gulp.dest(path.static.fonts + 'icons/'));
});

// task fonts
gulp.task('fonts', ['icons'], function() {
	return gulp.src(path.static.fonts + '*/*')
	.pipe(gulp.dest(path.fonts));
});

// task sprite \ gulp.spriteminth
gulp.task('sprite', function () {
  var spriteData = gulp.src(path.static.sprites + '*.png')
  .pipe(plumber())
  .pipe(spritesmith({
  	imgPath: path.sprite + 'sprite.png',
    imgName: 'sprite.png',
    cssName: 'sprite.styl'
  }));
  spriteData.img
  	.pipe(plumber())
    .pipe(imagemin())
    .pipe(gulp.dest(path.img));
  spriteData.css
  	.pipe(plumber())
    .pipe(gulp.dest(path.stylus + '_mixins/'));
});

// gulp
gulp.task('default', function (cb) {
    runSequence('html', 'css', 'js', 'fonts', cb);
});