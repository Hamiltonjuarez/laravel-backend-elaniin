<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register',[AuthController::class,'registerUser'])->name('auth.register');

Route::post('/login',[AuthController::class,'login'])->name('auth.login');

Route::post('/forgot-password',[AuthController::class,'forgotPassword'])->name('auth.forgot');

Route::post('/reset-password',[AuthController::class,'resetPassword'])->name('auth.reset');

Route::group(['middleware' => ['auth:api']], function () {
    Route::post('/logout',[AuthController::class,'logout'])->name('auth.logout'); 
    Route::resource('/users', UserController::class)->only(['index','store','show','update','destroy']);
    Route::resource('/products', ProductController::class)->only(['index','store','show','update','destroy']);
});

