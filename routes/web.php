<?php

use App\Http\Controllers\ChartsController;
use App\Http\Controllers\IssueController;
use App\Http\Controllers\NavigatorController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [NavigatorController::class, 'login']);
Route::post('/', [NavigatorController::class, 'index']);
Route::get('/estate',[IssueController::class, 'index']);
Route::get('/charts',[ChartsController::class, 'index']);
Route::get('/search', [ChartsController::class, 'search']);
Route::get('/estate/{estate}', [ChartsController::class, 'estate']);
Route::get('/details/{month}/{year}',[ChartsController::class, 'byMonth']);
Route::get('/all',[ChartsController::class, 'allData']);
