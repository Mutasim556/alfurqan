@extends('frontend.shared.app')
@push('title')
    {{ __('admin_local.Donate') }}
@endpush
@push('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <style>
        .select2-container .select2-choice {
            padding: 5px 10px;
            height: 40px;
            width: 132px;
            font-size: 1.2em;
            background: red;
        }

        .select2-container--default .select2-selection--single{
            background: transparent;
            width: 100%;
            height: 50px;
            border: 0;
            border: 1px solid #111010;
            padding-top: 10px;
            border-radius: 0;
            box-shadow: none !important;
            color: #525252;
            border-radius: 5px;
            line-height: 50px;
        }

        ./* Target the arrow */
.select2-container--default .select2-selection--single .select2-selection__arrow {
    height: 100%;
    right: 10px; /* Position of the arrow */
    top: 50%;
    transform: translateY(-50%);
}

/* Replace with a custom SVG or icon */
.select2-container--default .select2-selection--single .select2-selection__arrow b {
    display: none;
    /* Hide default arrow */
}

.select2-container--default .select2-selection--single .select2-selection__arrow::after {
    content: '';
    display: inline-block;
    width: 12px;
    height: 12px;
    background-image: url('data:image/svg+xml;utf8,<svg fill="black" ...></svg>');
    background-size: cover;
}
    </style>
@endpush
@section('content')

 <div class="wpo-donation-page-area section-padding" >
        <div class="container py-4" style="background: #f7f4f0">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    @if (isset($data))
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>{{ __('admin_local.Alhamdulillah') }} !</strong> {{ __('admin_local.We have received your donation successfuly . Thank you for your donation') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                            </button>
                        </div>
                    @endif
                    <div class="wpo-donate-header">
                        <h2>{{ __('admin_local.Make a Donation') }}</h2>
                    </div>
                    <div id="Donations" class="tab-pane">
                        <form action="{{ route('donation.store') }}" method="POST" >
                            @csrf
                            <div class="wpo-donations-amount">
                                <h2>{{ __('admin_local.Donation Type') }} *</h2>
                                <select class="form-control @error('donation_type') is-invalid @enderror" name="donation_type" id="donation_type" >
                                    <option value="">{{ __('admin_local.Select Please') }}</option>
                                    <option value="Zakat" {{ old('donation_type')=='Zakat'?'selected':'' }}>{{ __('admin_local.Zakat') }} </option>
                                    <option value="Sadaqah" {{ old('donation_type')=='Sadaqah'?'selected':'' }}>{{ __('admin_local.Sadaqah') }}</option>
                                    <option value="Fitra" {{ old('donation_type')=='Fitra'?'selected':'' }}>{{ __('admin_local.Fitra') }}</option>
                                    <option value="Masjid Maintenance" {{ old('donation_type')=='Masjid Maintenance'?'selected':'' }}>{{ __('admin_local.Masjid Maintenance') }}</option>
                                </select >
                                @error('donation_type')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                                
                                <h2 style="margin-top: 20px;">{{ __('admin_local.Your Donation') }} *</h2>
                                <input type="text" class="form-control @error('donation') is-invalid @enderror" name="donation" id="donation"
                                    placeholder="{{ __('admin_local.Enter Donation Amount') }}" value="{{ old('donation') }}">
                                @error('donation')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="wpo-donations-details">
                                <h2>{{ __('admin_local.Details') }}</h2>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-12 form-group mb-3">
                                        <input type="text" class="form-control @error('full_name') is-invalid @enderror" name="full_name" id="full_name"
                                            placeholder="{{ __('admin_local.Full Name') }} *"  value="{{ old('full_name') }}">
                                        @error('full_name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-12 form-group mb-3">
                                        <select class="form-control @error('country') is-invalid @enderror" name="country" id="country">
                                            <option value="">{{ __('admin_local.Select Country') }} *</option>
                                            @php
                                                $countries = \App\Models\AppCountry::all();
                                            @endphp
                                            @foreach ($countries as $country)
                                                <option value="{{ $country->country_name }}" {{ old('country')==$country->country_name?'selected':'' }}>{{ $country->country_name }}</option>
                                            @endforeach
                                        </select >
                                        @error('country')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-12 form-group mb-3">
                                        <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" id="email"
                                            placeholder="{{ __('admin_local.Email') }} *" value="{{ old('email') }}">
                                        @error('email')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-12 form-group mb-3">
                                        <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" id="phone"
                                            placeholder="{{ __('admin_local.Phone') }} *" value="{{ old('phone') }}">
                                        @error('phone')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-12 form-group ">
                                        <input type="text" class="form-control  @error('address') is-invalid @enderror" name="address" id="address"
                                            placeholder="{{ __('admin_local.Address') }} *" value="{{ old('address') }}">
                                        @error('address')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-lg-12 col-12 form-group mt-3">
                                        <textarea class="form-control @error('message') is-invalid @enderror" name="message" id="message"
                                            placeholder="{{ __('admin_local.Message') }}"></textarea>
                                        @error('message')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <div class="wpo-doanation-payment">
                                <h2 class="text-center">{{ __('admin_local.Choose Your Payment Method') }}</h2>
                                <div class="wpo-payment-area">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="wpo-payment-option" id="open4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-12 form-group">
                                                    <select class="form-control" name="payment_option" id="payment_option">
                                                        <option value="">{{ __('admin_local.Select Payment Option') }} *</option>
                                                        {{-- <option value="Paypal">{{ __('admin_local.Paypal') }}</option> --}}
                                                        <option value="Stripe">{{ __('admin_local.Stripe') }}</option>
                                                    </select >

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-area">
                                <button type="submit" class="theme-btn submit-btn">Donate Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#country').select2();
        });
        $(document).ready(function() {
            $('#payment_option').select2();
        });
    </script>
    @if (isset($data))
        <script>
            window.onload = function () {
                const link = document.createElement('a');
                link.href = "{{ route('donation.generatePdf',encrypt($data)) }}";
                link.setAttribute('download', '');
                document.body.appendChild(link);
                link.click();
            }
        </script>
    @endif
@endpush
