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
                                <img src="{{ asset('public/alfurqan/assets/images/429.svg') }}" style="height:300px" alt>
                            </div>
                            <div class="error-message">
                                <h3>{{ __('admin_local.Opps ! You have attempt more then 5 times to submit get touch in form.') }}</h3>
                                <p>{{ __('admin_local.We are sorry that we can not let you to submit this form.Please try again afterg 5 minutes') }}</p>
                                <a href="{{ url('/') }}" class="theme-btn">{{ __('admin_local.Back to home') }}</a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
@endsection
