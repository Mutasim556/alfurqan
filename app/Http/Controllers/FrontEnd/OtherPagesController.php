<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Models\Admin\Message;
use App\Models\Admin\Service;
use Illuminate\Http\Request;
use Mews\Purifier\Facades\Purifier;

class OtherPagesController extends Controller
{
    public function aboutUs()
    {
        return view('frontend.blade.about-us.index');
    }

    public function contact()
    {
        return view('frontend.blade.contact.index');
    }
    public function contactStore(Request $data)
    {
        $data->merge([
            'phone' => Purifier::clean(preg_replace('/\D/', '', $data->phone), [
                'HTML.Allowed' => ''
            ]),
            'email' =>  Purifier::clean(strtolower(trim($data->email)), [
                'HTML.Allowed' => ''
            ]),
            'name' => Purifier::clean($data->name, [
                'HTML.Allowed' => ''
            ]),
            'address' => Purifier::clean($data->address, [
                'HTML.Allowed' => ''
            ]),
            'service' => Purifier::clean($data->service, [
                'HTML.Allowed' => ''
            ]),
            'message' => Purifier::clean($data->message, [
                'HTML.Allowed' => ''
            ]),
        ]);
        $data->validate([
            'name' => 'required|max:49',
            'email' => 'required|email|max:49',
            'phone' => 'required|digits_between:10,15',
            'address' => 'required',
            'service' => 'required',
            'message' => 'required',
        ], [
            'name.required' => __('admin_local.Name field is required'),
            'name.max' => __('admin_local.Maximum 49 letters are allowed'),
            'email.required' => __('admin_local.Email field is required'),
            'email.email' => __('admin_local.Invalid email'),
            'email.max' => __('admin_local.Email shoul not greater then 49 letters'),
            'phone.required' => __('admin_local.Phone number is required'),
            'phone.digits_between' => __('admin_local.The phone field must be between 10 and 15 digits'),
            'address.required' => __('admin_local.Address is required'),
            'service.required' => __('admin_local.Type is required'),
            'message.required' => __('admin_local.Message is required'),
        ]);

        $message = new Message();
        $message->name = $data->name;
        $message->email = $data->email;
        $message->phone = $data->phone;
        $message->address = $data->address;
        $message->reason = $data->service;
        $message->message = $data->message;


        if($message->save()){
            return back()->with('success',1);
        }
    }
    public function services()
    {
        return view('frontend.blade.services.index');
    }

    public function events()
    {
        return view('frontend.blade.events.index');
    }

    public function jummah()
    {
        return view('frontend.blade.jummah.index');
    }

    public function serviceDetails(string $slug)
    {
        // dd($slug);
        $service = Service::where([['delete', 0], ['status', 1], ['service_name_slug', $slug]])->firstOrFail();
        return view('frontend.blade.services.single', compact('service'));
    }
}
