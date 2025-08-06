@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Contact') }}
@endpush
@section('content')
<section class="error-404-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="content clearfix">
                            <div class="error">
                                <img src="{{ asset('public/alfurqan/assets/images/404.jpg') }}" style="height:300px" alt>
                            </div>
                            <div class="error-message">
                                <h3>{{ __('admin_local.Opps ! We do not find any page') }}</h3>
                                <p>{{ __('admin_local.We are sorry that we do not find any page.Please find the valid one') }}</p>
                                <a href="{{ url('/') }}" class="theme-btn">{{ __('admin_local.Back to home') }}</a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
@endsection
