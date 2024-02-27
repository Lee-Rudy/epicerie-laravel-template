<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\LoginController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


/*route url client */
Route::get('/', function () {
    return view('index');
});

Route::get('/signUp', function () {
    return view('signUp');
});

Route::get('/login', function () {
    return view('login');
});

Route::get('/pageTest', function () {
    return view('pageTest');
});

Route::get('/pageLogin', function () {
    return view('pageLogin');
});


//methode pour form action controller
Route::post('/register', [RegisterController::class, 'register']);
Route::post('/loginController', [LoginController::class, 'login']);




/*============================================= */

/*route url admin */
