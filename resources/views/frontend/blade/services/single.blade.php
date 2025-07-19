@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Service Details') }}
@endpush
@push('css')
    <style>
        .wpo-service-single-wrap .wpo-service-single-content .wpo-service-single-content-des ul li{
            margin-left:40px;
        }
    </style>
@endpush
@section('content')
    <section class="wpo-service-single-section section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="wpo-service-single-wrap">
                        <div class="wpo-service-single-content">
                            <div class="wpo-service-single-content-des" style="padding-top:0px">
                                <h2>{{ $service->service_name }}</h2>
                                <h5 class="mb-4">{{ $service->service_short_details }}</h5>
                                {!! $service->service_details !!}

                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-lg-4 col-md-8">
                    <div class="wpo-single-sidebar">
                        <div class="wpo-service-widget widget">
                            <img src="{{ asset($service->service_image??'') }}" height="300px" style="width: 300px;" alt="image" />
                        </div>
                        <div class="wpo-service-widget widget">
                            <h2>{{ __('admin_local.All Services') }}</h2>
                            <ul>
                                @php
                                    $services = \App\Models\Admin\Service::where([['status', 1], ['delete', 0]])->get();
                                @endphp
                                @foreach ($services as $key => $service)
                                <li><a href="{{ route('serviceDetails',$service->service_name_slug) }}">{{ $service->service_name }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
