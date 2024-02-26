<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterController;

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


//methode pour form action controller
Route::post('/register', [RegisterController::class, 'register']);


/*============================================= */

/*route url admin */
