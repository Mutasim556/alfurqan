@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Services') }}
@endpush
@section('content')
    <section class="service-section section-padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7 col-12">
                    <div class="section-title">
                        <h2>{{ __('admin_local.Our Services') }}</h2>
                        <h3>{{ __('admin_local.Our Services For Humanity') }}</h3>
                    </div>
                </div>
            </div>
            <div class="service-wrap">
                <div class="row">
                    @php
                        $services = \App\Models\Admin\Service::where([['status', 1], ['delete', 0]])->get();
                    @endphp
                    @foreach ($services as $key => $service)
                        <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                            <a href="">
                                <div class="service-card">
                                    <div class="top-number">
                                        <span>{{ sprintf('%02d', $key + 1) }}</span>
                                    </div>
                                    <div class="icon">
                                        <img src="{{ asset($service->service_image) }}" style="border-radius: 10%"
                                            alt="image">
                                    </div>
                                    <div class="text" style="min-height:250px;max-height:500px">
                                        <h2>{{ $service->service_name }}</h2>
                                        <p>{{ $service->service_short_details }} </p>
                                        <a href="{{ route('serviceDetails',$service->service_name_slug) }}">{{ __('admin_local.Read More') }}</a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endsection
