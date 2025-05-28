@extends('frontend.shared.app')
@push('title')
    {{ __('admin_local.Donate') }}
@endpush
@push('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <style>
        .select2-container .select2-choice {
            padding: 5px 10px;
            height: 40px;
            width: 132px; 
            font-size: 1.2em;  
            background: red;
        }
        .select2-container--default .select2-selection--single{
            background: transparent;
            width: 100%;
            height: 50px;
            border: 0;
            border: 1px solid #111010;
            padding-top: 10px;
            border-radius: 0;
            box-shadow: none !important;
            color: #525252;
            border-radius: 5px;
            line-height: 50px;
        }

        .select2-container--default .select2-selection--single .select2-selection__arrow {
             width: 40px;
                color: #fff;
                font-size: 1.3em;
                padding: 4px 12px;
                height: 27px;
                position: absolute;
                top: 0px;
                right: 0px;
                width: 20px;
        }
    </style>
@endpush
@section('content')


 <div class="wpo-donation-page-area section-padding" >
        <div class="container py-4" style="background: #f7f4f0">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="wpo-donate-header">
                        <h2>{{ __('admin_local.Make a Donation') }}</h2>
                    </div>
                    <div id="Donations" class="tab-pane">
                        <form action="#">
                            <div class="wpo-donations-amount">
                                <h2>{{ __('admin_local.Donation Type') }}</h2>
                                <select class="form-control" name="donation_type" id="donation_type">
                                    <option value="">{{ __('admin_local.Select Please') }}</option>
                                    <option value="">{{ __('admin_local.Zakat') }}</option>
                                    <option value="">{{ __('admin_local.Sadaqah') }}</option>
                                    <option value="">{{ __('admin_local.Fitra') }}</option>
                                    <option value="">{{ __('admin_local.Masjid Maintenance') }}</option>
                                </select >
                                <h2>{{ __('admin_local.Your Donation') }}</h2>
                                <input type="text" class="form-control" name="donation" id="donation"
                                    placeholder="{{ __('admin_local.Enter Donation Amount') }}">
                            </div>
                            <div class="wpo-donations-details">
                                <h2>{{ __('admin_local.Details') }}</h2>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-12 form-group">
                                        <input type="text" class="form-control" name="full_name" id="full_name"
                                            placeholder="{{ __('admin_local.Full Name') }}">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-12 form-group">
                                        <select class="form-control" name="country" id="country">
                                            <option value="">{{ __('admin_local.Select Country') }}</option>
                                            @php
                                                $countries = \App\Models\AppCountry::all();
                                            @endphp
                                            @foreach ($countries as $country)
                                                <option value="{{ $country->country_name }}">{{ $country->country_name }}</option>
                                            @endforeach
                                        </select >
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-12 form-group clearfix">
                                        <input type="email" class="form-control" name="email" id="email"
                                            placeholder="Email">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-12 form-group">
                                        <input type="text" class="form-control" name="Adress" id="Adress"
                                            placeholder="Adress">
                                    </div>
                                    <div class="col-lg-12 col-12 form-group">
                                        <textarea class="form-control" name="note" id="note"
                                            placeholder="Message"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="wpo-doanation-payment">
                                <h2>Choose Your Payment Method</h2>
                                <div class="wpo-payment-area">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="wpo-payment-option" id="open4">
                                                <div class="wpo-payment-select">
                                                    <ul>
                                                        <li class="addToggle">
                                                            <input id="add" type="radio" checked="checked"
                                                                name="payment" value="30">
                                                            <label for="add">Payment By Card</label>
                                                        </li>
                                                        <li class="removeToggle">
                                                            <input id="remove" type="radio" name="payment"
                                                                value="30">
                                                            <label for="remove">Offline Donation</label>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div id="open5" class="payment-name">
                                                    <ul>
                                                        <li class="visa"><input id="1" type="radio" name="size"
                                                                value="30">
                                                            <label for="1"><img
                                                                    src="assets/images/checkout/img-1.png"
                                                                    alt=""></label>
                                                        </li>
                                                        <li class="mas"><input id="2" type="radio" name="size"
                                                                value="30">
                                                            <label for="2"><img
                                                                    src="assets/images/checkout/img-2.png"
                                                                    alt=""></label>
                                                        </li>
                                                        <li class="ski"><input id="3" type="radio" name="size"
                                                                value="30">
                                                            <label for="3"><img
                                                                    src="assets/images/checkout/img-3.png"
                                                                    alt=""></label>
                                                        </li>
                                                        <li class="pay"><input id="4" type="radio" name="size"
                                                                value="30">
                                                            <label for="4"><img
                                                                    src="assets/images/checkout/img-4.png"
                                                                    alt=""></label>
                                                        </li>
                                                    </ul>
                                                    <div class="contact-form form-style">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-12 col-12">
                                                                <label>Card holder Name</label>
                                                                <input type="text" placeholder="" name="name">
                                                            </div>
                                                            <div class="col-lg-6 col-md-12 col-12">
                                                                <label>Card Number</label>
                                                                <input type="text" placeholder="" name="card">
                                                            </div>
                                                            <div class="col-lg-6 col-md-12 col-12">
                                                                <label>CVV</label>
                                                                <input type="text" placeholder="" name="CVV">
                                                            </div>
                                                            <div class="col-lg-6 col-md-12 col-12">
                                                                <label>Expire Date</label>
                                                                <input type="text" placeholder="" name="date">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-area">
                                <button type="submit" class="theme-btn submit-btn">Donate Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#country').select2();
        });
    </script>
@endpush