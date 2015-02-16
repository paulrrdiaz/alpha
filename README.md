# Alpha
> Is a pseudo workflow for frontend developments, it's built over preprocessors: Jade for html, Stylus for css and Coffeescript for javascript.
> This works thanks Gulp, you can see the gulpfile.js for understand the defaults tasks and feel free to change whatever you want for your project.
> Also, we're using Bower to manage dependencies that you can add or delete from bower.json

### The structure that you'll see, after clone the project, it's something like this...

![subl](http://oi58.tinypic.com/4imtck.jpg)

> [see complete structure](http://oi57.tinypic.com/212v85w.jpg)

### First of all, you need to install gulp and bower globally
```sh
$ sudo npm install -g gulp
$ sudo npm install -g bower
```
### Clone the repo, copy the frontend' folder and paste it 
### Then install dependencies
```sh
$ sudo npm install -d
```
### After that you have to download libraries from bower
> If is necessary you can change the directory, just modify the file .bowerrc***

```sh
$ bower install
```
### And Finally
> Remember analyze the 'gulpfile.js', you can custom or change any task that you want to. Don't forget that you just need to make changes at Frontend folder, the gulp tasks were made for easier your life.