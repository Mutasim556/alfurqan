@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Contact') }}
@endpush
@section('content')
@php
    $contact = \App\Models\Admin\Contact::first();
@endphp
<section class="wpo-contact-pg-section section-padding" style="url(../images/slider/bg.png);">
    <div class="container">
        <div class="row">
            <div class="col col-lg-12">
                <div class="office-info">
                    <div class="row">
                        @if ($contact->address!=NULL)
                        <div class="col col-xl-4 col-lg-6 col-md-6 col-12">
                            <div class="office-info-item">
                                <div class="office-info-icon">
                                    <div class="icon">
                                        <i class="fi flaticon-placeholder"></i>
                                    </div>
                                </div>
                                <div class="office-info-text">
                                    <h2>{{ __('admin_local.Address') }}</h2>
                                    <p>{{ $contact->address }}</p>
                                </div>
                            </div>
                        </div>
                        @endif
                        @if ($contact->email!=NULL)
                        <div class="col col-xl-4 col-lg-6 col-md-6 col-12">
                            <div class="office-info-item">
                                <div class="office-info-icon">
                                    <div class="icon">
                                        <i class="fi flaticon-email"></i>
                                    </div>
                                </div>
                                <div class="office-info-text">
                                    <h2>{{ __('admin_local.Email') }}</h2>
                                    <p>{{ $contact->email }}g</p>
                                </div>
                            </div>
                        </div>
                        @endif
                        @if ($contact->phone!=NULL)
                        <div class="col col-xl-4 col-lg-6 col-md-6 col-12">
                            <div class="office-info-item">
                                <div class="office-info-icon">
                                    <div class="icon">
                                        <i class="fi flaticon-phone-call"></i>
                                    </div>
                                </div>
                                <div class="office-info-text">
                                    <h2>{{ __('admin_local.Phone') }}</h2>
                                    <p>{{ $contact->phone }}</p>
                                </div>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
                <div class="wpo-contact-title">
                    <h2>{{ __('admin_local.Have Any Question?') }}</h2>
                    <p>{{ __('admin_local.It is a long established fact that a reader will be distracted content of a page when looking.') }}</p>
                </div>
                <div class="wpo-contact-form-area">
                    <div class="row">

                        <div class="col col-xl-5 col-lg-5 col-md-5 col-12">
                            <form method="post" method="{{ route('contact') }}" class="contact-validation-active" >
                                @csrf
                                <div>
                                    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" id="name"
                                        placeholder="{{ __("admin_local.Your Name") }}*" value="{{ old('name') }}">
                                    @error('name')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div>
                                    <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" id="phone"
                                        placeholder="{{ __('admin_local.Your Phone Number') }}*" value="{{ old('phone') }}">
                                    @error('phone')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div>
                                    <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" id="email"
                                        placeholder="{{ __('admin_local.Your Email') }}*" value="{{ old('email') }}">
                                    @error('email')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div>
                                    <input type="text" class="form-control @error('address') is-invalid @enderror" name="address" id="address"
                                        placeholder="Adress" value="{{ old('address') }}">
                                    @error('address')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div>
                                    <select name="service" class="form-control @error('service') is-invalid @enderror">
                                        <option value="help_now" {{ old('service')=='help_now'?'selected':'' }}>Help Now</option>
                                        <option value="become_a_member" {{ old('service')=='become_a_member'?'selected':'' }} >Become a volunteer</option>
                                        <option value="quick_fundraising" {{ old('service')=='quick_fundraising'?'selected':'' }}>Quick fundraising</option>
                                        <option value="start_donation" {{ old('service')=='start_donation'?'selected':'' }}>Start donating</option>
                                    </select>
                                    @error('service')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="fullwidth">
                                    <textarea class="form-control" name="message" id="message"
                                        placeholder="Message...">{{ old('message') }}</textarea>
                                    @error('message')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="submit-area">
                                    <button type="submit" class="theme-btn">{{ __('admin_local.Get in Touch') }}</button>

                                </div>
                                <div class="clearfix text-center" >
                                    @if (session()->has('success'))
                                        <div class="text-success" style="font-size:16px;font-weight:700;">{{ __('admin_local.Thank you for your messages .We will contact as soon as possible.') }}</div>
                                    @endif
                                    @if(session()->has('error'))
                                    <div class="text-danger" style="font-size:16px;font-weight:700;">
                                        {{ __('admin_local.Error occurred while sending messages. Please try again later.') }}
                                    </div>
                                    @endif
                                </div>
                            </form>
                        </div>
                        <div class="col col-xl-7 col-lg-7 col-md-7 col-12">
                            <section class="wpo-contact-map-section">
                                <h2 class="hidden">Contact map</h2>
                                <div class="wpo-contact-map">
                                    <iframe src="{{ $contact->location }}" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            </section>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div> <!-- end container -->
</section>
<!-- end wpo-contact-pg-section -->

<!--  start wpo-contact-map -->

@endsection
