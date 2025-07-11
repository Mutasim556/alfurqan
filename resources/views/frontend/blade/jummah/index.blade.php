@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Jummah') }}
@endpush
@section('content')
<div class="event-details-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col col-lg-10 mx-auto">
                <div class="wpo-event-item">
                    <div class="wpo-event-img">
                        <img src="{{ asset('public/alfurqan/images/image14.gif') }}" alt="">
                    </div>
                    <div class="wpo-event-details-text">
                        <h2>{{ __('admin_local.Jummah is the special Friday prayer and a weekly gathering for Muslims') }}</h2>
                        <p>{{ __('admin_local.Jummah is the special Friday prayer that holds great significance in Islam. It is performed in congregation and includes a sermon (khutbah) before the two-unit prayer. Attending Jummah is obligatory for adult Muslim men and highly recommended for women. Muslims are encouraged to prepare by bathing, wearing clean clothes, and arriving early. Jummah is a weekly opportunity for spiritual renewal, reflection, and strengthening community bonds.') }}</p>
                    </div>
                    <div class="wpo-event-details-wrap">
                        {{-- <div class="wpo-event-details-tab">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" id="Schedule-tab" data-bs-toggle="tab"
                                        href="#Schedule" role="tab" aria-controls="Schedule"
                                        aria-selected="true">Event Schedule</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="Map-tab" data-bs-toggle="tab" href="#Map" role="tab"
                                        aria-controls="Map" aria-selected="false">Map Location</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="Contact-tab" data-bs-toggle="tab" href="#Contact"
                                        role="tab" aria-controls="Contact" aria-selected="false">Contact Us</a>
                                </li>
                            </ul>
                        </div> --}}
                        {{-- <div class="wpo-event-details-content">
                            <div class="tab-content">
                                <div id="Schedule" class="tab-pane active">
                                    <p>These cases are perfectly simple and easy to distinguish. In a free hour,
                                        when our power of choice is untrammelled and when nothing prevents our
                                        being able to do what we like best, every pleasure is to be welcomed and
                                        every pain avoided.</p>
                                    <ul>
                                        <li>The wise man therefore in these matters.</li>
                                        <li>In a free hour, when our power of choice and when nothing.</li>
                                        <li>Else he pains to avoid pains.</li>
                                        <li>We denounce with righteous indignation dislike men. </li>
                                        <li>Which is the same as saying through.</li>
                                        <li>The wise man therefore always holds in these matters.</li>
                                        <li>Power of choice and when nothing.</li>
                                        <li>Pains to avoid worse pains.</li>
                                    </ul>
                                </div>
                                <div id="Map" class="tab-pane">
                                    <div class="contact-map">
                                        <iframe
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.9147703055!2d-74.11976314309273!3d40.69740344223377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbd!4v1547528325671"
                                            allowfullscreen></iframe>
                                    </div>
                                </div>
                                <div id="Contact" class="tab-pane">
                                    <div class="event-contact">
                                        <div class="wpo-donations-details">
                                            <form method="post" class="contact-validation-active"
                                                id="contact-form-main">
                                                <div class="row">
                                                    <div
                                                        class="col-lg-12 col-md-12 col-sm-12 col-12 form-group">
                                                        <input type="text" class="form-control" name="name"
                                                            id="name" placeholder="Your Name*">
                                                    </div>
                                                    <div
                                                        class="col-lg-12 col-md-12 col-sm-12 col-12 form-group clearfix">
                                                        <input type="email" class="form-control" name="email"
                                                            id="email" placeholder="Your Email">
                                                    </div>
                                                    <div class="col-lg-12 col-12 form-group">
                                                        <textarea class="form-control" name="note" id="note"
                                                            placeholder="Massage"></textarea>
                                                    </div>
                                                    <div class="submit-area col-lg-12 col-12">
                                                        <button type="submit"
                                                            class="theme-btn submit-btn">Submit Now</button>
                                                        <div id="loader">
                                                            <i class="ti-reload"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix error-handling-messages">
                                                    <div id="success">Thank you</div>
                                                    <div id="error"> Error occurred while sending email. Please
                                                        try again later. </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection