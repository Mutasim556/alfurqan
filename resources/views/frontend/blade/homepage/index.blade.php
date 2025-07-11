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
            <h2 class="title">{{ __('admin_local.Read In the Name of your Lord, Who has created') }}</h2>
            <span class="subtitle">{{ __('admin_local.The heart that beats for Allah is always a stranger among the hearts that beat for the dunya(world)') }}</span>
            <div class="hero-btn">
                <a href="about.html" class="theme-btn">{{ __('admin_local.Discover More') }}</a>
            </div>
        </div>
    </div>
    <div class="image">
        <img src="{{ asset('public/alfurqan/images/image2.jpg') }}" height="100%" width="100%" alt="assets">
    </div>
</section>

<!-- start of prayertine -->
<section class="prayertine-section-s3">
    <div class="container">
        <div class="prayertine-wrap">
            <div class="row g-0">
                @php
                    $prayer_time = App\Models\PrayerTime::where('last_update',date('Y-m-d'))->first();
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
                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
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
                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
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
                    <h2>Our Event</h2>
                    <h3>Our Upcoming Events</h3>
                </div>
            </div>
        </div>
        <div class="event-active">
            <div class="event-wrap">
                <div class="image-wrap">
                    <div class="image">
                        {{-- <img src="{{ asset('public/alfurqan/assets/images/event/1.jpg') }}" alt="event"> --}}
                        <img src="{{ asset('public/alfurqan/images/1000020073.jpg') }}" alt="event">
                    </div>
                </div>
                <div class="content-wrap">
                    <div class="content">
                        <h4 class="title">According to the Islamic Society of North America (ISNA) Eid-Al-Adha will be on Friday , June 6th , 2025</h4>
                        <ul>
                            <li><img src="{{ asset('public/alfurqan/assets/images/event/date.png') }}" height="20px;" alt="icon"> June 6th, 2025
                            </li>
                            <li><img src="{{ asset('public/alfurqan/assets/images/event/time.svg') }}" alt="icon">1st Eid Prayer 8.00 AM | 2nd Eid Prayer 9.15 AM
                            </li>
                            <li><img src="{{ asset('public/alfurqan/assets/images/event/pin.svg') }}" alt="icon">140 NY-32, Central Valley, NY 10917
                            </li>
                        </ul>
                        {{-- @php
                            $start = new DateTime(date('Y-m-d H:i:s'));
                            $end = new DateTime('2025-06-06 08:00:00');

                            // Get difference
                            $interval = $start->diff($end);
                        @endphp --}}
                        <div class="event-date" data-event-date="June 6, 2025 08:00:00">
                            <div class="item">
                                <h2 class="days">65</h2>
                                <span>Days</span>
                            </div>
                            <div class="item">
                                <h2 class="hours">46</h2>
                                <span>Hours</span>
                            </div>
                            <div class="item">
                                <h2 class="mins">37</h2>
                                <span>Minutes</span>
                            </div>
                            <div class="item">
                                <h2 class="sec">60</h2>
                                <span>Seconds</span>
                            </div>
                        </div>
                        {{-- <a href="contact.html" class="theme-btn">Join Now</a> --}}
                    </div>
                </div>
            </div>
            {{-- <div class="event-wrap">
                <div class="image-wrap">
                    <div class="image">
                        <img src="assets/images/event/1.jpg" alt="event">
                    </div>
                </div>
                <div class="content-wrap">
                    <div class="content">
                        <h2 class="title">Exploring Islamic Insights and Wisdom</h2>
                        <ul>
                            <li><img src="assets/images/event/time.svg" alt="icon"> July 2, 2024 @ 15:00 - 19:00
                            </li>
                            <li><img src="assets/images/event/pin.svg" alt="icon">85 Preston Rd. Inglewood,
                                Maine 980
                            </li>
                        </ul>
                        <div class="event-date" data-event-date="Dec 12, 2023 00:00:00">
                            <div class="item">
                                <h2 class="days">65</h2>
                                <span>Days</span>
                            </div>
                            <div class="item">
                                <h2 class="hours">46</h2>
                                <span>Hours</span>
                            </div>
                            <div class="item">
                                <h2 class="mins">37</h2>
                                <span>Minutes</span>
                            </div>
                            <div class="item">
                                <h2 class="sec">60</h2>
                                <span>Seconds</span>
                            </div>
                        </div>
                        <a href="contact.html" class="theme-btn">Join Now</a>
                    </div>
                </div>
            </div>
            <div class="event-wrap">
                <div class="image-wrap">
                    <div class="image">
                        <img src="assets/images/event/1.jpg" alt="event">
                    </div>
                </div>
                <div class="content-wrap">
                    <div class="content">
                        <h2 class="title">Exploring Islamic Insights and Wisdom</h2>
                        <ul>
                            <li><img src="assets/images/event/time.svg" alt="icon"> July 2, 2024 @ 15:00 - 19:00
                            </li>
                            <li><img src="assets/images/event/pin.svg" alt="icon">85 Preston Rd. Inglewood,
                                Maine 980
                            </li>
                        </ul>
                        <div class="event-date" data-event-date="June 2, 2024 00:00:00">
                            <div class="item">
                                <h2 class="days">65</h2>
                                <span>Days</span>
                            </div>
                            <div class="item">
                                <h2 class="hours">46</h2>
                                <span>Hours</span>
                            </div>
                            <div class="item">
                                <h2 class="mins">37</h2>
                                <span>Minutes</span>
                            </div>
                            <div class="item">
                                <h2 class="sec">60</h2>
                                <span>Seconds</span>
                            </div>
                        </div>
                        <a href="contact.html" class="theme-btn">Join Now</a>
                    </div>
                </div>
            </div> --}}
        </div>
    </div>
</section>
<!-- start of about -->
<section class="about-section-s3">
    <div class="container">
        <div class="wrap">
            <div class="row align-items-center">
                <div class="col-lg-6 col-12">
                    <div class="image">
                        <img src="{{ asset('public/alfurqan/images/image3.jpeg') }}" alt="image" />
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
                            <a href="{{ route('aboutUs') }}" class="theme-btn">{{ __('admin_local.Discover More') }}</a>

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

<!-- start of funfact -->
<section class="funfact-section section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-10 col-12">
                <div class="funfact-content">
                    <div class="top-content">
                        <h2 class="title">{{ __('admin_local.Support us') }},</h2>
                        <h3 class="sudtitle">{{ __('admin_local.we need your help') }}.</h3>
                        <p class="text">{{ __('admin_local.May Allah bless you! Thank you. Those who (in charity) spend of their goods by night and by day, in secret and in public, have their reward with their Lord') }}</p>
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
