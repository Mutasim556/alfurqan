@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Contact') }}
@endpush
@section('content')
<section class="wpo-contact-pg-section section-padding" style="url(../images/slider/bg.png);">
    <div class="container">
        <div class="row">
            <div class="col col-lg-12">
                <div class="office-info">
                    <div class="row">
                        <div class="col col-xl-2 col-lg-2 col-md-2 col-12 mx-auto"></div>
                        <div class="col col-xl-4 col-lg-6 col-md-6 col-12">
                            <div class="office-info-item">
                                <div class="office-info-icon">
                                    <div class="icon">
                                        <i class="fi flaticon-placeholder"></i>
                                    </div>
                                </div>
                                <div class="office-info-text">
                                    <h2>{{ __('admin_local.Address') }}</h2>
                                    <p>140 NY-32, Central Valley, NY 10917</p>
                                </div>
                            </div>
                        </div>
                        <div class="col col-xl-4 col-lg-6 col-md-6 col-12">
                            <div class="office-info-item">
                                <div class="office-info-icon">
                                    <div class="icon">
                                        <i class="fi flaticon-email"></i>
                                    </div>
                                </div>
                                <div class="office-info-text">
                                    <h2>{{ __('admin_local.Email') }}</h2>
                                    <p>contact@alfurqancv.org</p>
                                </div>
                            </div>
                        </div>
                        <div class="col col-xl-2 col-lg-2 col-md-2 col-12 mx-auto"></div>
                    </div>
                </div>
                <div class="wpo-contact-title">
                    <h2>{{ __('admin_local.Have Any Question?') }}</h2>
                    <p>{{ __('admin_local.It is a long established fact that a reader will be distracted content of a page when looking.') }}</p>
                </div>
                <div class="wpo-contact-form-area">
                    <div class="row">
                        
                        <div class="col col-xl-5 col-lg-5 col-md-5 col-12">
                            <form method="post" action="mail-contact.php" class="contact-validation-active" id="contact-form-main">
                                <div>
                                    <input type="text" class="form-control" name="name" id="name"
                                        placeholder="Your Name*">
                                </div>
                                <div>
                                    <input type="email" class="form-control" name="email" id="email"
                                        placeholder="Your Email*">
                                </div>
                                <div>
                                    <input type="text" class="form-control" name="adress" id="adress"
                                        placeholder="Adress">
                                </div>
                                <div>
                                    <select name="service" class="form-control">
                                        <option disabled="disabled" selected="">Become a volunteer</option>
                                        <option>Quick fundraising</option>
                                        <option>Start donating</option>
                                        <option>Help Now</option>
                                    </select>
                                </div>
                                <div class="fullwidth">
                                    <textarea class="form-control" name="note" id="note"
                                        placeholder="Message..."></textarea>
                                </div>
                                <div class="submit-area">
                                    <button type="button" class="theme-btn">{{ __('admin_local.Get in Touch') }}</button>
                                    <div id="loader">
                                        <i class="ti-reload"></i>
                                    </div>
                                </div>
                                <div class="clearfix error-handling-messages">
                                    <div id="success">Thank you</div>
                                    <div id="error"> Error occurred while sending email. Please try again later.
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col col-xl-7 col-lg-7 col-md-7 col-12">
                            <section class="wpo-contact-map-section">
                                <h2 class="hidden">Contact map</h2>
                                <div class="wpo-contact-map">
                                    <iframe
                                        src="https://maps.google.com/maps?q=AL%20FURQAN%20ISLAMIC%20INSTITUTE%20New%20York&t=&z=13&ie=UTF8&iwloc=&output=embed"
                                        allowfullscreen></iframe>
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