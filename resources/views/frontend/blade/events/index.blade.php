@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Events') }}
@endpush
@section('content')
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
                $events = \App\Models\Admin\Event::where([['status',1],['delete',0]])->get();
            @endphp
            @foreach ($events as $event)
            <div class="event-wrap">
                <div class="image-wrap">
                    <div class="image">
                        {{-- <img src="{{ asset('public/alfurqan/assets/images/event/1.jpg') }}" alt="event"> --}}
                        @if ($event->event_images)
                            @php
                                $eimages = explode(',',$event->event_images);
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
                        <p>
                            {!! $event->short_details !!}
                        </p>
                        <ul>
                            @if ($event->has_start_date==1)
                            <li><img src="{{ asset('public/alfurqan/assets/images/event/date.png') }}" height="20px;" alt="icon">
                                {{ $event->has_start_date==1?date('l , d F Y',strtotime($event->event_start_date)):'' }}
                                {{ $event->has_end_date==1?" to ".date('l , d F Y',strtotime($event->event_end_date)):'' }}
                            </li>
                            @endif
                            @if ($event->has_time==1)
                            <li><img src="{{ asset('public/alfurqan/assets/images/event/time.svg') }}" height="20px;" alt="icon">
                                {{ $event->event_schedule??'' }} &nbsp;
                                {{ $event->event_start_time?date('h:i A',strtotime($event->event_start_time)):'' }}
                                 {{ $event->event_start_time&&$event->event_end_time?" to ".date('h:i A',strtotime($event->event_end_time)):'' }}
                            </li>
                            @endif
                            @if ($event->event_location!=NULL)
                            <li><img src="{{ asset('public/alfurqan/assets/images/event/pin.svg') }}" height="20px;" alt="icon">
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
                            $eventdatetime = date('F d, Y',strtotime($event->event_start_date))." ".date('h:i:s',strtotime($event->event_start_time));

                        @endphp
                        @if(date('Y-m-d',strtotime($event->event_start_date))>=date('Y-m-d'))
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
                        <p>
                            {!! $event->details !!}
                        </p>
                        {{-- <a href="contact.html" class="theme-btn">Join Now</a> --}}
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

@endsection
