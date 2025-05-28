<?php

use App\Http\Controllers\FrontEnd\DonationController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cookie;
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
Route::middleware('frontLang')->group(function(){
    Route::get('/', function () {
        
        return view('frontend.blade.homepage.index');
    });

    Route::get('/dashboard', function () {
        return view('dashboard');
    })->middleware(['auth', 'verified'])->name('dashboard');

    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });

    Route::get('/change-front-lang/{lang}',function(){
        try {
            Cookie::queue('front_language', request()->lang, 10);
            return back();
        } catch (\Throwable $th) {
            Cookie::queue('front_language','en',10);
            return back();
        }
    })->name('changeFrontLang');

    /** Donation Start */
    Route::controller(DonationController::class)->name('donation.')->group(function(){
        Route::get('/donation','index')->name('index');
    });
    /** Donation End */
});


require __DIR__.'/auth.php';


