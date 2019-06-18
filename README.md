# Laravel Store Api

## About the app.

This is a web app store that allows users to add/remove products(admin only), list all products, register new users for purchasing and liking the products. Its Implemented in a MySQL database provided in the root repository has Database_Dump_Homestead.sql, Laravel Passport Authentication and an Angular CLI front end.

## Requirements.

Download and install the PHP server and MySql Database.

https://www.apachefriends.org/es/index.html

Download and install Node.js from the following link.

https://nodejs.org/en/download/

Install Node Package Manager from Node Terminal.

https://docs.npmjs.com/cli/install

Install Angular CLI from the node terminal.

https://cli.angular.io/

Download and install Composer.

https://getcomposer.org/download/

Install Laravel from composer terminal.

https://laravel.com/docs/5.8/installation

## Getting started.

Download the repository from the following link.

https://github.com/JuanROrellana/Store-Api

Or Git clone the repository from the git bash and navigate to the Store-Api folder.

```bash
#git clone https://github.com/JuanROrellana/Store-Api.git
#cd Store-Api/
```

### Implementing the database.

You can either run the Database_Dump_Homestead.sql dump file provided on the root of the repository on your MySql Database. 
Or you can create a new database and user. Granting all privileges and running the migrations with the following command on the root of your laravel project and modifing the .env file on the root of the laravel project.

```bash
#php artisan migrate
```
### Installation

In the Store-Api folder run the following command on the terminal for installing the composer dependencies.

```bash
#composer install
```
In the Client folder root run the following command on the terminal for installing the npm dependencies.

```bash
#npm install
```

## Running the app

Notice: If you have a virus protection installed be aware you may enconunter with the following problem when running the app.

https://github.com/laravel/framework/issues/23809

Navigate to the store-api folder run the following command on the terminal.

```bash
#php artisan serve
```
There you will see the URL for you to test the app.

http://127.0.0.1:8000

Navigate to the client root folder run the following command on the terminal.

```bash
#npm start
```
There it will open a browser window with the angular app.

http://localhost:4200/

## Testing

Here is a  Postman battery of the available Request for you to test your app after its running.

https://documenter.getpostman.com/view/3115916/S1ZxaUde?version=latest
