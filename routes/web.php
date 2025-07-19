<?php

use App\Http\Controllers\FrontEnd\DonationController;
use App\Http\Controllers\FrontEnd\OtherPagesController;
use App\Http\Controllers\FrontEnd\PrayerTimeController;
use App\Http\Controllers\Payment\StripeController;
use App\Http\Controllers\ProfileController;
use App\Models\PrayerTime;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Http;
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
        $check = PrayerTime::where('last_update',date('Y-m-d'))->first();

        if(!$check){
            $response = Http::get('https://www.islamicfinder.us/index.php/api/prayer_times?country=US&zipcode=10001');
            PrayerTime::where('id',1)->update([
                'fajr'=>strtoupper(str_replace('%','',$response['results']['Fajr'])),
                'duha'=>strtoupper(str_replace('%','',$response['results']['Duha'])),
                'dhuhr'=>strtoupper(str_replace('%','',$response['results']['Dhuhr'])),
                'asr'=>strtoupper(str_replace('%','',$response['results']['Asr'])),
                'maghrib'=>strtoupper(str_replace('%','',$response['results']['Maghrib'])),
                'isha'=>strtoupper(str_replace('%','',$response['results']['Isha'])),
                // 'jummah'=>$response['results']['Jummah'],
                'last_update'=>date('Y-m-d'),
            ]);
        }
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
        Route::get('/donation/stripe','stripeIndex')->name('stripe.index');
        Route::post('/donation','store')->name('store');
        Route::get('/donation/receipt/{donation_id}','generatePdf')->name('generatePdf');
    });
    Route::controller(StripeController::class)->group(function(){
        // Route::post('/stripe/checkout','stripeCheckout')->name('stripe.checkout');
        Route::get('/stripe/checkout/success','stripeCheckoutSuccess')->name('stripe.checkout.success');
    });
    /** Donation End */

    /** Prayer Time Start */
    Route::controller(PrayerTimeController::class)->group(function(){
        Route::get('/prayer-time','prayerTimes');
    });
    /** Prayer Time End */

    /** Other Pages Start */
    Route::controller(OtherPagesController::class)->group(function(){
        Route::get('about-us','aboutUs')->name('aboutUs');
        Route::get('contact','contact')->name('contact');
        Route::get('services','services')->name('services');
        Route::get('services/{slug}','serviceDetails')->name('serviceDetails');
        Route::get('events','events')->name('events');
        Route::get('jummah','jummah')->name('jummah');
    });
    /** Other Pages end */

});


require __DIR__.'/auth.php';


