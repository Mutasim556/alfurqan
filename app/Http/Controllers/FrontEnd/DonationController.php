<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Models\Donation;
use App\Models\StripePayment;
use Barryvdh\DomPDF\Facade\Pdf;
use Dompdf\Dompdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Stripe\StripeClient;

class DonationController extends Controller
{
    public function index(){
        if(session()->get('data')){
            $data = session()->get('data');
            // dd( $data);
            return view('frontend.blade.donation.index',compact('data'));
        }
        return view('frontend.blade.donation.index');
    }

    public function stripeIndex(){
        return view('frontend.blade.donation.stripe');
    }

    public function store(Request $data){
        $data->merge([
            'donation' => floatval(str_replace(',', '', $data->donation))
        ]);
        $data->validate([
            'donation_type'=>'required',
            'donation'=>'required|gte:1',
            'full_name'=>'required|max:30',
            'country'=>'required',
            'email'=>'required|email|max:30',
            'phone'=>'required|min:11|max:14',
            'address'=>'required|max:60',
            'payment_option'=>'required',
        ],[
            'donation_type.required'=>__('admin_local.The donation type field is required'),
            'donation.required'=>__('admin_local.The donation field is required'),
            'donation.gte'=>__('admin_local.Minimum donation should be at least 1'),
            'full_name.required'=>__('admin_local.Full name field is required'),
            'full_name.max'=>__('admin_local.Maximum name length should not be greater then 30'),
            'country.required'=>__('admin_local.Country field is required'),
            'email.required'=>__('admin_local.Email field is required'),
            'email.email'=>__('admin_local.Invalid email format'),
            'email.max'=>__('admin_local.Maximum email length should not be greater then 30'),
            'phone.required'=>__('admin_local.Phone field is required'),
            'phone.min'=>__('admin_local.Invalid phone number'),
            'phone.max'=>__('admin_local.Invalid phone number'),
            'address.required'=>__('admin_local.Address field is required'),
            'payment_option.required'=>__('admin_local.Payment option field is required'),
        ]);


        if($data->payment_option=='Stripe'){
            $stripe = new StripeClient(config('stripeconfig.stripe.secret_key'));
            $redirectUrl = route('stripe.checkout.success').'?session_id={CHECKOUT_SESSION_ID}';

            $response = $stripe->checkout->sessions->create([
                'success_url'=>$redirectUrl,
                'customer_email'=>$data->email,
                'payment_method_types' => ['card'],
                'line_items' => [
                    [
                        'price_data'=>[
                            'product_data'=>[
                                'name' =>$data->donation_type,
                            ],
                            'unit_amount'=> 100*$data->donation,
                            'currency'=>'USD',

                        ],
                        'quantity'=>1,

                    ]
                ],
                'mode'=>'payment',
                'allow_promotion_codes'=>false,
            ]);
            // dd($response);
            $donation = new Donation();
            $donation->full_name = $data->full_name;
            $donation->phone = $data->phone;
            $donation->email = $data->email;
            $donation->country = $data->country;
            $donation->address = $data->address;
            $donation->message = $data->message;
            $donation->donation_type = $data->donation_type;
            $donation->donation = $data->donation;
            $donation->currency = $response['currency'];
            $donation->payment_method = $data->payment_option;
            $donation->payment_status = 0;
            $donation->save();


            $stripeStore = new StripePayment();
            $stripeStore->donation_id = $donation->id;
            $stripeStore->session_id = $response['id'];
            $stripeStore->currency2 = $response['currency'];
            $stripeStore->amount2 = $data->donation;

            $stripeStore->save();

            // dd($donation);
            return redirect($response['url']);

        }elseif($data->payment_option=='Paypal'){

        }
    }

    public function generatePdf(){
        // if(request()->ajax()){
            $dData= Donation::where([['id',decrypt(request()->donation_id)]])->first();
            $stripePayments = StripePayment::where([['donation_id',decrypt(request()->donation_id)]])->first();
            if($dData && $stripePayments){
                $data = [
                    'company'=>[
                        'name'=>'AL FURQAN ISLAMIC INSTITUTE',
                        'address'=>'76-18 Glenmore Ave, Ozone Park, NY 11417, United States',
                        'email'=>'contact@alfurqancv.org',

                    ],
                    'donation'=> $dData,
                    'stripe_data'=>$stripePayments,
                ];
                $pdf = Pdf::loadView('frontend.pdf.stripe_payment_invoice', ['data' => $data]);
                $pdf->setPaper('A4', 'portrait');

                return $pdf->download('invoice.pdf');
            }
        // }

    }
}
