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
                <div class="col-lg-12">
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
                    <div class="row px-4">
                            <div class="col-lg-4 col-md-6 col-12 rounded mx-auto" >
                                <div class="row p-2">
                                     <div class="col-lg-12 col-md-12 col-12 rounded mx-auto" style="border:1px solid green;height:283px;background-image:url({{ asset('public/alfurqan/images/pay-image-1.jpg'); }});background-size: cover; background-position: center;background-repeat: no-repeat;" >
                                        <h4 style="line-height: 530px;color:rgb(255, 255, 255);font-weight:1000;text-align:center;font-family:arial;">{{ __('admin_local.Donate with cards') }}</h4>
                                     </div>
                                </div>

                            </div>
                            <div class="col-lg-4 col-md-6 col-12 rounded ">
                               <div class="row p-2">
                                     <div class="col-lg-12 col-md-12 col-12 rounded mx-auto" style="border:1px solid green;height:283px;background-image:url({{ asset('public/alfurqan/images/pay-image-4.webp'); }});background-size: cover; background-position: center;background-repeat: no-repeat;" >
                                        <h4 style="line-height: 530px;color:white;font-weight:1000;text-align:center;font-family:arial">alfurqancv@gmail.com</h4>
                                     </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-4 col-md-6 col-12 rounded ">
                               <div class="row p-2">
                                     <div class="col-lg-12 col-md-12 col-12 rounded mx-auto" style="border:1px solid green;height:283px;background-image:url({{ asset('public/alfurqan/images/pay-image-3.jpeg'); }});background-size: cover; background-position: center;background-repeat: no-repeat;" >
                                        <h4 style="line-height: 530px;color:white;font-weight:1000;text-align:center;font-family:arial;">contact@alfurqancv.org</h4>
                                     </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-12 rounded " >
                                <div class="row p-2">
                                    <a href="{{ route('donation.stripe.index') }}" class="m-0 p-0">
                                        <div class="col-lg-12 col-md-12 col-12 rounded mx-auto" style="border:1px solid green;height:283px;background-image:url({{ asset('public/alfurqan/images/pay-image-2.jpg'); }});background-size: cover; background-position: center;background-repeat: no-repeat;" >
                                            <h4 style="line-height: 530px;color:white;font-weight:1000;text-align:center;font-family:arial;">{{ __('admin_local.Donate with Stripe') }}</h4>
                                        </div>
                                    </a>
                                     
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-12 rounded " >
                                <div class="row p-2">
                                     <div class="col-lg-12 col-md-12 col-12 rounded mx-auto" style="border:1px solid green;height:283px;background-image:url({{ asset('public/alfurqan/images/pay-image-5.jpg'); }});background-size: cover; background-position: center;background-repeat: no-repeat;" >
                                        <h4 style="line-height: 530px;color:white;font-weight:1000;text-align:center;font-family:arial;">{{ __('admin_local.Donate with Crypto') }}</h4>
                                     </div>
                                </div>
                            </div>
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
