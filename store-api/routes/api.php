<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Products Functionality
Route::get('products/{name?}', 'ProductController@index');
Route::get('products/sort/name={name?}&likes={likes?}', 'ProductController@sort');
Route::put('products/like/{id}', 'ProductController@like')->middleware('auth:api');
Route::post('products', 'ProductController@store')->middleware('auth:api');
Route::put('products/{product}', 'ProductController@update')->middleware('auth:api');
Route::delete('products/{id}', 'ProductController@delete')->middleware('auth:api');

//Buy a product
Route::post('order', 'OrderController@buy')->middleware('auth:api');

//Passport Authentication
Route::group([
    'prefix' => 'auth'
], function () {
    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');

    Route::group([
        'middleware' => 'auth:api'
    ], function () {
        Route::get('logout', 'AuthController@logout');
        Route::get('user', 'AuthController@user');
    });
});
