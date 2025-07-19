<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Models\Admin\Service;
use Illuminate\Http\Request;

class OtherPagesController extends Controller
{
    public function aboutUs(){
        return view('frontend.blade.about-us.index');
    }

    public function contact(){
        return view('frontend.blade.contact.index');
    }
    public function services(){
        return view('frontend.blade.services.index');
    }

    public function events(){
        return view('frontend.blade.events.index');
    }

    public function jummah(){
        return view('frontend.blade.jummah.index');
    }

    public function serviceDetails(string $slug){
        // dd($slug);
        $service = Service::where([['delete',0],['status',1],['service_name_slug',$slug]])->firstOrFail();
        return view('frontend.blade.services.single',compact('service'));
    }
}
