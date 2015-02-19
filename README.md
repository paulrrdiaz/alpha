# Alpha
> Is a pseudo workflow for frontend developments, it's built over preprocessors: Jade for html, Stylus for css and Coffeescript for javascript.
> This works thanks Gulp, you can see the gulpfile.js for understand the defaults tasks and feel free to change whatever you want for your project.
> Also, we're using Bower to manage dependencies that you can add or delete from bower.json


### First of all
Clone the repo and you'll get something like this:

![alt text](http://i60.tinypic.com/zl505i.png "First time")
 
Go the automatization folder and run the **.folder.sh** file:
**Just for the record, we're working at automatization folder every time**
```sh
$ sudo bash .folders.sh
```
After that, you'll see this

![alt text](http://i59.tinypic.com/ih4jk1.png "App structure")

If you are using OSX Yosemite, could try to open and edit the .local_osx.sh for config virtual host, read it carefully and then run the file:  
```sh
$ sudo bash .local_osx.sh
```
Be sure that you have install gulp and bower already, if not, just run:
```sh
$ sudo npm install gulp -g
$ sudo npm install bower -g
```
After that, you need to install node's package and the bower dependencies:
```sh
$ sudo npm install
$ bower install
```
if you have an error with **bower install**, is probably that you need to give permissions, something like this:
```sh
$ sudo chmod -R 777 alpha/
```
there is only modify the page.jade file at frontend/sources/jade/_config/
```sh
- page.url = "http://local.alpha.com/"
- page.app = "http://local.alpha.com/"
to...
- page.url = "http://local.myproject.com/"
- page.app = "http://local.myproject.com/"
```
And finally run every task in the gulpfile.js
```sh
$ gulp
```
> **Tasks:**

> - **gulp** - run task default
> - **gulp html** - compile jade
> - **gulp css** - compile stylus
> - **gulp js** - compile coffeescript
> - **gulp watch** - watching jade, stylus and coffeescript files for compile
> - **gulp fonts** - join every .svg in static/icons folder, generate icons.styl and the fonts in static/fonts/icons
> - **gulp sprite** - compile the images in static/img/sprite to make a sprite and minified

### If you're not using a virtual host
you can run
```sh
$ gulp server
instead of
$ gulp watch
```
and change
```sh
- page.url = "http://local.alpha.com/"
- page.app = "http://local.alpha.com/"
to...
- page.url = "http://localhost:3000/"
- page.app = "http://localhost:3000/"
```
that's it...

**PD: if you have any problem with anything, just send a tweet @paulrrdiaz**

### How to use...
For this small version the views will be in the first level of jade folder, like this:

![alt text](http://i62.tinypic.com/i5zo85.png "Jade folder")

and you set up your css and js module in each view, I mean:

![alt text](http://i58.tinypic.com/seoy6d.png "Set up")

### Useful links
- [FrontendLabs - Comunidad de desarrollo front end](http://frontendlabs.io/)
- [Flux - un futuro framework frontend](https://github.com/frontend-labs/flux)
- [Gulp - primeros pasos](http://frontendlabs.io/1669--gulp-js-en-espanol-tutorial-basico-primeros-pasos-y-ejemplos)
- [Gulpjs](http://gulpjs.com/)
- [Bower](http://bower.io/)