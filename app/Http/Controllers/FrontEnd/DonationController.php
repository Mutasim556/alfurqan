<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DonationController extends Controller
{
    public function index(){
        return view('frontend.blade.donation.index');
    }
}
