@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.About us') }}
@endpush
@section('content')
@php
    $aboutUs = App\Models\Admin\AboutUs::first();
@endphp
    <section class="about-section" style="margin-bottom: 150px;">
        <div class="container">
            <div class="wrap">
                <div class="left-img">
                    <div class="about-1">
                        <img src="{{ asset('public/alfurqan/images/image13.jpg') }}" alt="">
                    </div>
                    <div class="about-2">
                        <img src="{{ asset('public/alfurqan/images/image3.jpeg') }}" alt="">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 offset-lg-6">
                        <div class="content">
                            <div class="section-title">
                                <h2>{{ __('admin_local.About Us') }}</h2>
                                <h3>{{ $aboutUs->about_us_title }}</h3>
                                <p>{{ $aboutUs->short_details }}</p>
                            </div>
                            <div class="about-bottom">
                                @if ($aboutUs->email!=NULL)
                                <div class="call">
                                    <div class="icon">
                                        <img src="{{ asset('public/alfurqan/assets/images/event/email.svg') }}" height="22px;" alt="icon">
                                    </div>
                                    <div class="text">
                                        <a href="#" style="font-family: 'Times New Roman', Times, serif">
                                            {{ $aboutUs->email }}
                                        </a>
                                    </div>
                                </div>
                                @endif
                                @if ($aboutUs->phone!=NULL)
                                <div class="call">
                                    <div class="icon">
                                        <img src="{{ asset('public/alfurqan/assets/images/event/phone2.svg') }}" height="22px;" alt="icon">
                                    </div>
                                    <div class="text">
                                        <a href="#" style="font-family: 'Times New Roman', Times, serif">
                                            {{ $aboutUs->phone }}
                                        </a>
                                    </div>
                                </div>
                                @endif
                            </div>
                            <div class="about-bottom mt-5">
                                @if ($aboutUs->address!=NULL)
                                <div class="call">
                                    <div class="icon">
                                        <img src="{{ asset('public/alfurqan/assets/images/event/location.png') }}" height="22px;" alt="icon">
                                    </div>
                                    <div class="text">
                                        <a href="#" style="font-family: 'Times New Roman', Times, serif">
                                            {{ $aboutUs->address }}
                                        </a>
                                    </div>
                                </div>
                                @endif
                            </div>
                            <div class="about-bottom mt-5">
                                @if ($aboutUs->details!=NULL)
                                <h5><u>{{ __('admin_local.Details About Alfurqan') }}</u></h5>
                                @endif
                            </div>
                            <div class="about-bottom ">
                                @if ($aboutUs->details!=NULL)
                                <p>{!! $aboutUs->details !!}</p>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        <!-- start of about -->
   {{-- <section class="about-section-s3" style="margin-top: 100px;">
        <div class="container">
            <div class="wrap">
                <div class="row align-items-center">
                    <div class="left-img">
                        <div class="about-1">
                            <img src="{{ asset('public/alfurqan/images/image3.jpeg') }}" alt="">
                        </div>
                        <div class="about-2">
                            <img src="assets/images/about-2.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 col-12">
                        <div class="content">
                            <div class="section-title">
                                <h2>{{ __('admin_local.About Us') }}</h2>
                                <h3>{{ __('admin_local.Welcome to Al-Furqan Islamic Iinstitute') }}</h3>
                                <p>{{ __('admin_local.Al Furqan Islamic Institute is embarking on a journey to establish a center of faith, learning, and community service—a future masjid and educational hub dedicated to fostering Islamic knowledge and strengthening our Muslim community') }}</p>
                            </div>
                            <div class="about-bottom">

                                <div class="call">
                                    <div class="icon">
                                        <img src="" alt="">
                                    </div>
                                    <div class="text">
                                        <span><img src="{{ asset('public/alfurqan/assets/images/event/email.svg') }}" height="22px;" alt="icon"> {{ __('admin_local.Email') }} </span>
                                        <a href="#" style="font-family: 'Times New Roman', Times, serif">
                                            contact@alfurqancv.org
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}

    <!-- start of pillars -->
    <section class="pillars-section section-padding">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col-12">
                   <div class="section-title">
                        <h2>{{ __('admin_local.Islam Pillars') }}</h2>
                        <h3>{{ __('admin_local.Five Pillars Of Islam') }}</h3>
                    </div>
                </div>
            </div>
            <div class="pillars-wrap">
                <div class="pillars-slider">
                    <div class="pillars-card">
                        <div class="image">
                            <a href="{{ asset('public/alfurqan/images/image5.jpeg') }}" class="fancybox" data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image5.jpeg') }}" alt="pillars" class="img img-responsive">
                                <div class="popup-icon">
                                    <i class="ti-plus"></i>
                                </div>
                            </a>
                        </div>
                        <h2>
                            {{ __('admin_local.Shahadah') }}
                        </h2>
                    </div>
                    <div class="pillars-card">
                        <div class="image">
                            <a href="{{ asset('public/alfurqan/images/image6.jpg') }}" class="fancybox" data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image6.jpg') }}" alt="pillars" class="img img-responsive">
                                <div class="popup-icon">
                                    <i class="ti-plus"></i>
                                </div>
                            </a>
                        </div>
                        <h2>
                            {{ __('admin_local.Salah') }}
                        </h2>
                    </div>
                    <div class="pillars-card">
                        <div class="image">
                            <a href="{{ asset('public/alfurqan/images/image7.jpg') }}" class="fancybox" data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image7.jpg') }}" alt="pillars" class="img img-responsive">
                                <div class="popup-icon">
                                    <i class="ti-plus"></i>
                                </div>
                            </a>
                        </div>
                        <h2>
                            {{ __('admin_local.Sawm') }}
                        </h2>
                    </div>
                    <div class="pillars-card">
                        <div class="image">
                            <a href="{{ asset('public/alfurqan/images/image8.webp') }}" class="fancybox" data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image8.webp') }}" alt="pillars" class="img img-responsive">
                                <div class="popup-icon">
                                    <i class="ti-plus"></i>
                                </div>
                            </a>
                        </div>
                        <h2>
                            {{ __('admin_local.Zakah') }}
                        </h2>
                    </div>
                    <div class="pillars-card">
                        <div class="image">
                            <a href="{{ asset('public/alfurqan/images/image9.jpeg') }}" class="fancybox" data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image9.jpeg') }}" alt="pillars" class="img img-responsive">
                                <div class="popup-icon">
                                    <i class="ti-plus"></i>
                                </div>
                            </a>
                        </div>
                        <h2>
                            {{ __('admin_local.Hajj') }}
                        </h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
