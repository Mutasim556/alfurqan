<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Models\PrayerTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class PrayerTimeController extends Controller
{
    public function prayerTimes(){

        // dd($response['results']);

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
    }
}
