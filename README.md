# Alpha
> Is a pseudo workflow for frontend developments, it's built over preprocessors: Jade for html, Stylus for css and Coffeescript for javascript.
> This works thanks Gulp, you can see the gulpfile.js for understand the defaults tasks and feel free to change whatever you want for your project.
> Also, we're using Bower to manage dependencies that you can add or delete from bower.json


### First of all
Clone the repo and you'll get something like this:

![alt text](http://i60.tinypic.com/zl505i.png "Title")
 
Go the automatization folder and run the **.folder.sh** file:
```sh
$ sudo bash .folder.sh
```
If you are using OSX, could try to edit the .local_osx.sh and then run the file:  
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
### And Finally
> Remember analyze the 'gulpfile.js', you can custom or change any task that you want to. Don't forget that you just need to make changes at Frontend folder, the gulp tasks were made for easier your life.