# Laravel Store Api

## About the app.

This is a web app store that allows users to add/remove products(admin only), list all products, register new users for purchasing and like the products. Its Implemented in a MySQL database(provided in the root repository has Database_Dump_Homestead.sql), Laravel Passport Authentication and an angular front end.

## Requirements.

Download and install the Php server and MySql Database.

https://www.apachefriends.org/es/index.html

Download and install Node.js from the following link.

https://nodejs.org/en/download/

Install Node Package Manager from Node Terminal.

https://docs.npmjs.com/cli/install

Install Angular cli from the node terminal.

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
#https://github.com/JuanROrellana/Store-Api.git
#cd Store-Api/
```

### Implmenting the database.

You can either run the Database_Dump_Homestead.sql dump file provided on the root of the repository on your MySQl Database. 
Or you can create a new database and user. Granting all privileges and running the migrations with the following command on the root of your laravel project.

```bash
#php artisan migrate
```
### Installation

In the Store-Api folder run the following command on the terminal for installing the composer dependencies.

```bash
#composer install
```

Notice: If you have a vires protection installed be aware you may enconunter with the following problem when.

https://github.com/laravel/framework/issues/23809


## Running the app

