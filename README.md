# Alpha
> Is a pseudo workflow for frontend developments, it's built over preprocessors: Jade for html, Stylus for css and Coffeescript for javascript.
> This works thanks Gulp, you can see the gulpfile.js for understand the defaults tasks and feel free to change whatever you want for your project.
> Also, we're using Bower to manage dependencies that you can add or delete from bower.json


### First of all
Clone the repo and you'll get something like this:

![alt text](http://i60.tinypic.com/zl505i.png "Title")
 
Go the automatization folder and run the **.folder.sh** file:
**Just for the record, we're working at automatization folder every time**
```sh
$ sudo bash .folders.sh
```
After that, you'll see this

![alt text](http://i59.tinypic.com/ih4jk1.png "Title")

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
$ sudo chmod 777 alpha/
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


### Useful links
[FrontendLabs - Comunidad de desarrollo front end](http://frontendlabs.io/)
[Flux - un futuro framework frontend](https://github.com/frontend-labs/flux)
[Gulp - primeros pasos](http://frontendlabs.io/1669--gulp-js-en-espanol-tutorial-basico-primeros-pasos-y-ejemplos)
[Gulpjs](http://gulpjs.com/)
[Bower](http://bower.io/)