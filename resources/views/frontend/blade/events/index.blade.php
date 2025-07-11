@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Events') }}
@endpush
@section('content')
    <section class="event-section" style="margin-top: 150px;margin-bottom:50px;">
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
            <div class="event-wrap">
                <div class="image-wrap">
                    <div class="image">
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
        </div>
    </div>
</section>

@endsection