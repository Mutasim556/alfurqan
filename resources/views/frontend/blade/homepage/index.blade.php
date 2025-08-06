@extends('frontend.shared.app')
@push('title')
    {{ __('admin_local.Home') }}
@endpush
@section('content')
    <!-- start of static-hero-s2 -->
    <section class="static-hero-s2">
        <div class="container-fluid">
            <div class="content">
                <div class="icon">
                    <img src="{{ asset('public/alfurqan/assets/images/slider/icon.svg') }}" alt="icon">
                </div>
                @php
                    $sliderText = \App\Models\Admin\SliderText::where([['status', 1], ['delete', 0]])->first();
                @endphp
                <h2 class="title">{{ $sliderText->title }}</h2>
                <span class="subtitle">{{ $sliderText->short_details }}</span>
                <div class="hero-btn">
                    <a href="{{ route('aboutUs') }}" class="theme-btn">{{ $sliderText->button_text }}</a>
                </div>
            </div>
        </div>
        <div class="hero-slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    @php
                        $sliders = \App\Models\Admin\HomepageSilder::where([['status', 1], ['delete', 0]])->get();
                    @endphp
                    @foreach ($sliders as $slider)
                        <div class="swiper-slide">
                            <div class="slide-inner slide-bg-image" data-background="{{ asset($slider->slider_image) }}">

                            </div> <!-- end slide-inner -->
                        </div> <!-- end swiper-slide -->
                    @endforeach
                </div>
                <!-- end swiper-wrapper -->

                <!-- swipper controls -->
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </section>

    <!-- start of prayertine -->
    <section class="prayertine-section-s3">
        <div class="container">
            <div class="prayertine-wrap">
                <div class="row g-0">
                    @php
                        $prayer_time = App\Models\PrayerTime::where('last_update', date('Y-m-d'))->first();
                    @endphp
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                        <div class="item">
                            <h2>{{ __('admin_local.Fajr') }}</h2>
                            <span>{{ $prayer_time->fajr }}</span>
                        </div>
                    </div>
                    {{-- <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                    <div class="item">
                        <h2>Sunrize</h2>
                        <span>5:50 am</span>
                    </div>
                </div> --}}
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                        <div class="item">
                            <h2>{{ __('admin_local.Dhuhr') }}</h2>
                            <span>{{ $prayer_time->dhuhr }}</span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                        <div class="item">
                            <h2>{{ __('admin_local.Asr') }}</h2>
                            <span>{{ $prayer_time->asr }}</span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                        <div class="item">
                            <h2>{{ __('admin_local.Maghrib') }}</h2>
                            <span>{{ $prayer_time->maghrib }}</span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                        <div class="item">
                            <h2>{{ __('admin_local.Isha') }}</h2>
                            <span>{{ $prayer_time->isha }}</span>
                        </div>
                    </div>
                    @php
                        $jummah = \App\Models\Admin\Jummah::where([['delete',0],['status',1]])->orderBy('id','DESC')->first();
                    @endphp
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                        <div class="item">
                            <h2>{{ __('admin_local.Jummah') }}</h2>
                            @if($jummah)<span>{{ date('h:i A',strtotime($jummah->jummah_azan_time)) }}</span>@endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- start of event -->
    <section class="event-section s3">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col-12">
                    <div class="section-title">
                        <h2>{{ __('admin_local.Our Event') }}</h2>
                        <h3>{{ __('admin_local.Our Upcoming Events') }}</h3>
                    </div>
                </div>
            </div>
            <div class="event-active">
                @php
                    $events = \App\Models\Admin\Event::where([['status', 1], ['delete', 0]])->get();
                @endphp
                @foreach ($events as $event)
                    <div class="event-wrap">
                        <div class="image-wrap">
                            <div class="image">
                                {{-- <img src="{{ asset('public/alfurqan/assets/images/event/1.jpg') }}" alt="event"> --}}
                                @if ($event->event_images)
                                    @php
                                        $eimages = explode(',', $event->event_images);
                                    @endphp
                                    <img src="{{ $eimages[0] }}" alt="event">
                                @else
                                    <img src="{{ asset('public/alfurqan/images/1000020073.jpg') }}" alt="event">
                                @endif

                            </div>
                        </div>
                        <div class="content-wrap">
                            <div class="content">
                                <h4 class="title">{{ $event->title }}</h4>
                                <ul>
                                    @if ($event->has_start_date == 1)
                                        <li><img src="{{ asset('public/alfurqan/assets/images/event/date.png') }}"
                                                height="20px;" alt="icon">
                                            {{ $event->has_start_date == 1 ? date('l , d F Y', strtotime($event->event_start_date)) : '' }}
                                            {{ $event->has_end_date == 1 ? ' to ' . date('l , d F Y', strtotime($event->event_end_date)) : '' }}
                                        </li>
                                    @endif
                                    @if ($event->has_time == 1)
                                        <li><img src="{{ asset('public/alfurqan/assets/images/event/time.svg') }}"
                                                height="20px;" alt="icon">
                                            {{ $event->event_schedule ?? '' }} &nbsp;
                                            {{ $event->event_start_time ? date('h:i A', strtotime($event->event_start_time)) : '' }}
                                            {{ $event->event_start_time && $event->event_end_time ? ' to ' . date('h:i A', strtotime($event->event_end_time)) : '' }}
                                        </li>
                                    @endif
                                    @if ($event->event_location != null)
                                        <li><img src="{{ asset('public/alfurqan/assets/images/event/pin.svg') }}"
                                                height="20px;" alt="icon">
                                            {{ $event->event_location }}
                                        </li>
                                    @endif
                                </ul>
                                {{-- @php
                            $start = new DateTime(date('Y-m-d H:i:s'));
                            $end = new DateTime('2025-06-06 08:00:00');

                            // Get difference
                            $interval = $start->diff($end);
                        @endphp --}}
                                @php
                                    $eventdatetime =
                                        date('F d, Y', strtotime($event->event_start_date)) .
                                        ' ' .
                                        date('h:i:s', strtotime($event->event_start_time));

                                @endphp
                                @if (date('Y-m-d', strtotime($event->event_start_date)) >= date('Y-m-d'))
                                    <div class="event-date" data-event-date="{{ $eventdatetime }}">
                                        <div class="item">
                                            <h2 class="days">65</h2>
                                            <span>{{ __('admin_local.Days') }}</span>
                                        </div>
                                        <div class="item">
                                            <h2 class="hours">46</h2>
                                            <span>{{ __('admin_local.Hours') }}</span>
                                        </div>
                                        <div class="item">
                                            <h2 class="mins">37</h2>
                                            <span>{{ __('admin_local.Minutes') }}</span>
                                        </div>
                                        <div class="item">
                                            <h2 class="sec">60</h2>
                                            <span>{{ __('admin_local.Seconds') }}</span>
                                        </div>
                                    </div>
                                @else
                                    <div class="event-date">
                                        {{ __('admin_local.Event Started or Finished') }}
                                    </div>
                                @endif
                                {{-- <a href="contact.html" class="theme-btn">Join Now</a> --}}
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- start of about -->

    <section class="event-section-s2">
        <div class="container">
            <div class="row justify-content-center">
                <div class=" col-12">
                    <div class="section-title">
                        <h2>{{ __('admin_local.Video Gallery') }}</h2>
                        <h3>{{ __('admin_local.Our Video Gallery') }}</h3>
                    </div>
                </div>
            </div>
            <div class="event-slider">
                @php
                    $videos = \App\Models\Admin\VideoGallery::where([['status',1],['delete',0]])->get();
                @endphp
                @foreach ($videos as $video)
                <div class="event-single-card">
                    <div class="image" style="text-align:center">
                        <img src="{{ asset($video->video_thumbnail) }}" alt="event">
                        <a href="https://www.youtube.com/embed/{{ $video->video_embeded_code }}" class="theme-btn py-0 px-4 mt-2 video-btn" style="font-size:14px;" data-type="iframe">{{__('admin_local.View')}}</a>
                    </div>
                    <div class="content mt-0 py-2 px-2" style="background-color: lightgrey">
                        <h2 class="text-center"><a href="#">{{ $video->video_title }}</a></h2>
                        <ul class="px-2">
                            <li ><img src="{{ asset('public/alfurqan/assets/images/event/time2.svg') }}" alt="time2"> {{ date('d F , Y',strtotime($video->video_date)) }}</li>
                            <li style="float: right;padding:0px;"><img src="{{ asset('public/alfurqan/assets/images/event/pin2.svg') }}" alt="pin2"> {{ $video->video_location }}</li>
                        </ul>
                    </div>
                </div>
                @endforeach
                
            </div>
        </div>
    </section>
    @php
        $aboutUs = App\Models\Admin\AboutUs::first();
    @endphp
    <section class="about-section-s3" style="margin-top:70px;">
        <div class="container">
            <div class="wrap">
                <div class="row align-items-center">
                    <div class="row justify-content-center">
                        <div class=" col-12">
                            <div class="section-title">
                                <h3 class="text-center">{{ __('admin_local.About Us') }}</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-12">
                        <div class="image">
                            <img src="{{ asset($aboutUs->image2) }}" alt="image" />
                        </div>
                    </div>

                    <div class="col-lg-6 col-12">
                        <div class="content">
                            <div class="section-title">
                                <h2>{{ __('admin_local.About Us') }}</h2>
                                <h3>{{ $aboutUs->about_us_title }}</h3>
                                <p>{{ $aboutUs->short_details }}</p>
                            </div>

                            <div class="about-bottom">
                                @if ($aboutUs->email != null)
                                    <div class="call">
                                        <div class="text">
                                            <span><img src="{{ asset('public/alfurqan/assets/images/event/email.svg') }}"
                                                    height="22px;" alt="icon"> {{ __('admin_local.Email') }} </span>
                                            <a href="#" style="font-family: 'Times New Roman', Times, serif">
                                                {{ $aboutUs->email }}
                                            </a>
                                        </div>
                                    </div>
                                @endif
                                @if ($aboutUs->phone != null)
                                    <div class="call">
                                        <div class="text">
                                            <span><img src="{{ asset('public/alfurqan/assets/images/event/phone2.svg') }}"
                                                    height="22px;" alt="icon"> {{ __('admin_local.Phone') }} </span>
                                            <a href="#" style="font-family: 'Times New Roman', Times, serif">
                                                {{ $aboutUs->phone }}
                                            </a>
                                        </div>
                                    </div>
                                @endif



                            </div>
                            <div class="about-bottom mt-4">
                                @if ($aboutUs->address != null)
                                    <div class="call">
                                        <div class="text">
                                            <span><img
                                                    src="{{ asset('public/alfurqan/assets/images/event/location.png') }}"
                                                    height="22px;" alt="icon"> {{ __('admin_local.Address') }}
                                            </span>
                                            <a href="#" style="font-family: 'Times New Roman', Times, serif">
                                                {{ $aboutUs->address }}
                                            </a>
                                        </div>
                                    </div>
                                @endif

                            </div>
                            <a href="{{ route('aboutUs') }}"
                                class="theme-btn mt-3">{{ __('admin_local.Discover More') }}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- start of pillars -->
    <section class="pillars-section-s3 section-padding">
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
                            <a href="{{ asset('public/alfurqan/images/image5.jpeg') }}" class="fancybox"
                                data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image5.jpeg') }}" alt="pillars"
                                    class="img img-responsive">
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
                            <a href="{{ asset('public/alfurqan/images/image6.jpg') }}" class="fancybox"
                                data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image6.jpg') }}" alt="pillars"
                                    class="img img-responsive">
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
                            <a href="{{ asset('public/alfurqan/images/image7.jpg') }}" class="fancybox"
                                data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image7.jpg') }}" alt="pillars"
                                    class="img img-responsive">
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
                            <a href="{{ asset('public/alfurqan/images/image8.webp') }}" class="fancybox"
                                data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image8.webp') }}" alt="pillars"
                                    class="img img-responsive">
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
                            <a href="{{ asset('public/alfurqan/images/image9.jpeg') }}" class="fancybox"
                                data-fancybox-group="gall-1">
                                <img src="{{ asset('public/alfurqan/images/image9.jpeg') }}" alt="pillars"
                                    class="img img-responsive">
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

    <!-- start of funfact -->
    <section class="funfact-section section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-10 col-12">
                    <div class="funfact-content">
                        <div class="top-content">
                            <h2 class="title">{{ __('admin_local.Support us') }},</h2>
                            <h3 class="sudtitle">{{ __('admin_local.we need your help') }}.</h3>
                            <p class="text">
                                {{ __('admin_local.May Allah bless you! Thank you. Those who (in charity) spend of their goods by night and by day, in secret and in public, have their reward with their Lord') }}
                            </p>
                        </div>
                        {{-- <div class="funfact">
                        <div class="item">
                            <h2><span class="odometer" data-count="65">00</span>+</h2>
                            <h4>Mosque</h4>
                        </div>
                        <div class="item">
                            <h2><span class="odometer" data-count="20">00</span>+</h2>
                            <h4>Madrashas</h4>
                        </div>
                        <div class="item">
                            <h2><span class="odometer" data-count="500">00</span>+</h2>
                            <h4>Students</h4>
                        </div>
                        <div class="item">
                            <h2>
                                <span class="odometer" data-count="80">00</span>+
                            </h2>
                            <h4>Emam</h4>
                        </div>
                    </div> --}}
                        <a href="{{ route('donation.index') }}" class="theme-btn">{{ __('admin_local.Donate Now') }}</a>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- start of service -->
    {{-- <section class="service-section section-padding">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-7 col-12">
                <div class="section-title">
                    <h2>Our Services</h2>
                    <h3>Our Services For Humanity</h3>
                </div>
            </div>
        </div>
        <div class="service-wrap">
            <div class="row">
                <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                    <div class="service-card">
                        <div class="top-number">
                            <span>01</span>
                        </div>
                        <div class="icon">
                            <img src="assets/images/service/1.svg" alt="image">
                        </div>
                        <div class="text">
                            <h2>Quran Memorization</h2>
                            <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                Digsim amet feugiat nec proin lacinia.</p>
                            <a href="service-single.html">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                    <div class="service-card">
                        <div class="top-number">
                            <span>02</span>
                        </div>
                        <div class="icon">
                            <img src="assets/images/service/2.svg" alt="image">
                        </div>
                        <div class="text">
                            <h2>Special Child Care</h2>
                            <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                Digsim amet feugiat nec proin lacinia.</p>
                            <a href="service-single.html">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                    <div class="service-card">
                        <div class="top-number">
                            <span>03</span>
                        </div>
                        <div class="icon">
                            <img src="assets/images/service/3.svg" alt="image">
                        </div>
                        <div class="text">
                            <h2>Mosque Development</h2>
                            <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                Digsim amet feugiat nec proin lacinia.</p>
                            <a href="service-single.html">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                    <div class="service-card">
                        <div class="top-number">
                            <span>04</span>
                        </div>
                        <div class="icon">
                            <img src="assets/images/service/4.svg" alt="image">
                        </div>
                        <div class="text">
                            <h2>Charity & Donation</h2>
                            <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                Digsim amet feugiat nec proin lacinia.</p>
                            <a href="service-single.html">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                    <div class="service-card">
                        <div class="top-number">
                            <span>05</span>
                        </div>
                        <div class="icon">
                            <img src="assets/images/service/5.svg" alt="image">
                        </div>
                        <div class="text">
                            <h2>Matrimonial</h2>
                            <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                Digsim amet feugiat nec proin lacinia.</p>
                            <a href="service-single.html">Read More...</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                    <div class="service-card">
                        <div class="top-number">
                            <span>06</span>
                        </div>
                        <div class="icon">
                            <img src="assets/images/service/6.svg" alt="image">
                        </div>
                        <div class="text">
                            <h2>Funerals</h2>
                            <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                Digsim amet feugiat nec proin lacinia.</p>
                            <a href="service-single.html">Read More...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> --}}




    <!-- start of testimonial -->
    {{-- <section class="testimonial-section section-padding">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-7 col-12">
                <div class="section-title">
                    <h2>Testimonial</h2>
                    <h3>What Our Donor Says</h3>
                </div>
            </div>
        </div>
        <div class="testimonial-slider">
            <div class="testimonial-card">
                <div class="top-content">
                    <div class="image">
                        <img src="assets/images/testimonial/1.jpg" alt="image" />
                    </div>
                    <div class="title">
                        <h2>Kristin Watson</h2>
                        <span>Marketing Coordinator</span>
                    </div>
                </div>
                <p class="text">
                    “Purus eget consectur massa amet. Hac diam suspen disse faucibus posuere dignissim amet at.
                    Eget vitae magna condimentum tristique scelerisque”
                </p>

                <div class="icon">
                    <img src="assets/images/testimonial/quote.svg" alt="icon" />
                </div>
            </div>
            <div class="testimonial-card">
                <div class="top-content">
                    <div class="image">
                        <img src="assets/images/testimonial/2.jpg" alt="image" />
                    </div>
                    <div class="title">
                        <h2>Abdul-'Adl</h2>
                        <span>Marketing Coordinator</span>
                    </div>
                </div>
                <p class="text">
                    “Purus eget consectur massa amet. Hac diam suspen disse faucibus posuere dignissim amet at.
                    Eget vitae magna condimentum tristique scelerisque”
                </p>

                <div class="icon">
                    <img src="assets/images/testimonial/quote.svg" alt="icon" />
                </div>
            </div>
            <div class="testimonial-card">
                <div class="top-content">
                    <div class="image">
                        <img src="assets/images/testimonial/3.jpg" alt="image" />
                    </div>
                    <div class="title">
                        <h2>Falih Zubayr</h2>
                        <span>Marketing Coordinator</span>
                    </div>
                </div>
                <p class="text">
                    “Purus eget consectur massa amet. Hac diam suspen disse faucibus posuere dignissim amet at.
                    Eget vitae magna condimentum tristique scelerisque”
                </p>

                <div class="icon">
                    <img src="assets/images/testimonial/quote.svg" alt="icon" />
                </div>
            </div>
        </div>
    </div>
</section> --}}

    <!-- start of blog -->
    {{-- <section class="blog-section section-padding">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-7 col-12">
                <div class="section-title">
                    <h2>Our Blog</h2>
                    <h3>Our Latest News</h3>
                </div>
            </div>
        </div>
        <div class="blog-wrap">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-card">
                        <div class="image">
                            <img src="assets/images/blog/img-1.jpg" alt="image">
                        </div>
                        <div class="contnet">
                            <ul>
                                <li>Sep 03, 2021</li>
                                <li>Anne William</li>
                            </ul>
                            <h2>
                                <a href="blog-single.html">
                                    How to Teach Kids Ramadan
                                    Isn’t about Food
                                </a>
                            </h2>
                            <a href="blog-single.html">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-card">
                        <div class="image">
                            <img src="assets/images/blog/img-2.jpg" alt="image">
                        </div>
                        <div class="contnet">
                            <ul>
                                <li>Sep 03, 2021</li>
                                <li>Anne William</li>
                            </ul>
                            <h2>
                                <a href="blog-single.html">
                                    The Importance of Marriage
                                    in Islam.
                                </a>
                            </h2>
                            <a href="blog-single.html">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-card">
                        <div class="image">
                            <img src="assets/images/blog/img-3.jpg" alt="image">
                        </div>
                        <div class="contnet">
                            <ul>
                                <li>Sep 03, 2021</li>
                                <li>Anne William</li>
                            </ul>
                            <h2>
                                <a href="blog-single.html">
                                    Five Groups of People during
                                    Ramadan
                                </a>
                            </h2>
                            <a href="blog-single.html">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> --}}
@endsection
