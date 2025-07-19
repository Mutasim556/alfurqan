@extends('frontend.shared.app')

@push('title')
    {{ __('admin_local.Jummah') }}
@endpush
@section('content')
@php
    $jummah = \App\Models\Admin\Jummah::where([['delete',0],['status',1]])->orderBy('id','DESC')->first();
@endphp
<div class="event-details-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col col-lg-10 mx-auto">
                <div class="wpo-event-item">
                    <div class="wpo-event-img">
                        <img src="{{ asset($jummah->image) }}" alt="">
                    </div>
                    <div class="wpo-event-details-text">
                        <h2>{{ __('admin_local.Jummah is the special Friday prayer and a weekly gathering for Muslims') }}</h2>
                        <p>{{ __('admin_local.Jummah is the special Friday prayer that holds great significance in Islam. It is performed in congregation and includes a sermon (khutbah) before the two-unit prayer. Attending Jummah is obligatory for adult Muslim men and highly recommended for women. Muslims are encouraged to prepare by bathing, wearing clean clothes, and arriving early. Jummah is a weekly opportunity for spiritual renewal, reflection, and strengthening community bonds.') }}</p>
                    </div>
                    <div class="wpo-event-details-wrap">
                        <div class="wpo-event-details-tab">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" id="Schedule-tab" data-bs-toggle="tab"
                                        href="#Schedule" role="tab" aria-controls="Schedule"
                                        aria-selected="true">{{ __('admin_local.Jummah') }} - ( {{ date('l d F , Y',strtotime($jummah->jummah_date)) }} )</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="Contact-tab" data-bs-toggle="tab" href="#Contact" role="tab"
                                        aria-controls="Contact" aria-selected="false">{{ __('admin_local.Details') }}</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="Map-tab" data-bs-toggle="tab" href="#Map"
                                        role="tab" aria-controls="Map" aria-selected="false">{{ __('admin_local.Location') }}</a>
                                </li>

                            </ul>
                        </div>
                        <div class="wpo-event-details-content">
                            <div class="tab-content">
                                <div id="Schedule" class="tab-pane active">
                                    <b><u><span>{{ __("admin_local.Azan") }}</span></u> : <span>{{ date('h:i A',strtotime($jummah->jummah_azan_time)) }}</span></b><br><br>
                                    <b><u><span>{{ __("admin_local.Imam") }}</span></u> : <span>{{ $jummah->jummah_imam }}</span></b><br><br>
                                    <b><u><span>{{ __("admin_local.Khutba Time") }}</span></u> : <span>{{ date('h:i A',strtotime($jummah->jummah_khutba_time)) }}</span></b><br><br>
                                    <b><u><span>{{ __("admin_local.Khutba Topic") }}</span></u> : <span>{{ $jummah->jummah_khutba_topic }}</span></b><br><br>
                                    <b><u><span>{{ __("admin_local.Prayer Time") }}</span></u> : <span>{{ date('h:i A',strtotime($jummah->jummah_prayer_time)) }}</span></b><br><br>
                                </div>
                                <div id="Contact" class="tab-pane">

                                    <div class="event-contact">
                                        <div class="wpo-donations-details">
                                            {!! $jummah->jummah_khutba_details !!}
                                        </div>
                                    </div>
                                </div>
                                @php
                                    $contact = \App\Models\Admin\Contact::first();
                                @endphp
                                <div id="Map" class="tab-pane">
                                    <div class="contact-map">
                                        <iframe src="{{ $contact->location }}" allowfullscreen></iframe>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
