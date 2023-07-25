<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\PackageController;
use App\Http\Controllers\TechnicianController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\AppointmentController; 
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

Route::post('register',[UserController::class, 'register']);
Route::post('login',[UserController::class, 'login']);
Route::get('profile',[UserController::class, 'getAuthenticatedUser']);
Route::resource('customer', CustomerController::class);
Route::get('searchuser',[CustomerController::class, 'searchuser']);

Route::resource('category', CategoryController::class);
Route::resource('service', ServiceController::class);
Route::resource('schedule', ScheduleController::class);
Route::resource('package', PackageController::class);
Route::resource('technician', TechnicianController::class);
Route::resource('appointment', AppointmentController::class);
Route::get('appointmentbyday',[AppointmentController::class, 'appointmentbyday']);

Route::post('tempservice',[ServiceController::class, 'tempservice']);
Route::get('tempservice',[ServiceController::class, 'tempserviceList']);
Route::get('deletetemp',[ServiceController::class, 'deletetemp']);
Route::get('deleteSchedule',[ScheduleController::class, 'deleteSchedule']);