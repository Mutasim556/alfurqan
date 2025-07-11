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
                    <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                        <div class="service-card">
                            <div class="top-number">
                                <span>01</span>
                            </div>
                            <div class="icon">
                                <img src="{{ asset('public/alfurqan/assets/images/service/1.svg') }}" alt="image">
                            </div>
                            <div class="text" style="height:500px">
                                <h2>{{ __('admin_local.Quran Memorization') }}</h2>
                                <p>{{ __('admin_local.Quran memorization, also known as Hifz, is the process of committing the entire Holy Quran to memory. It is considered a highly rewarding act in Islam and is encouraged for Muslims of all ages. Memorizing the Quran requires discipline, consistency, and sincere intention. Many people begin with shorter surahs and gradually progress to longer ones. Regular revision is essential to retain what has been memorized and to keep the words of Allah fresh in the heart') }}</p>
                                {{-- <a href="service-single.html">Read More...</a> --}}
                            </div>
                        </div>
                    </div>
                    {{-- <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                        <div class="service-card">
                            <div class="top-number">
                                <span>02</span>
                            </div>
                            <div class="icon">
                                <img src="{{ asset('public/alfurqan/assets/images/service/2.svg')}}" alt="image">
                            </div>
                            <div class="text">
                                <h2>Special Child Care</h2>
                                <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                    Digsim amet feugiat nec proin lacinia.</p>
                                <a href="service-single.html">Read More...</a>
                            </div>
                        </div>
                    </div> --}}
                    <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                        <div class="service-card">
                            <div class="top-number">
                                <span>02</span>
                            </div>
                            <div class="icon">
                                <img src="{{ asset('public/alfurqan/assets/images/service/3.svg')}}" alt="image">
                            </div>
                            <div class="text" style="height:500px">
                                <h2>{{ __('admin_local.Mosque Development') }}</h2>
                                <p>{{ __('admin_local.Mosque development involves building, expanding, or renovating a mosque to better serve the needs of the Muslim community. It includes planning spaces for prayer, education, and community activities. A well-developed mosque fosters unity, spiritual growth, and learning. Community support through donations and volunteering plays a vital role in the development process. Modern mosque projects often consider sustainability, accessibility, and cultural design.') }}</p>
                                {{-- <a href="service-single.html">Read More...</a> --}}
                            </div>
                        </div>
                    </div>
                    {{-- <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                        <div class="service-card">
                            <div class="top-number">
                                <span>04</span>
                            </div>
                            <div class="icon">
                                <img src="{{ asset('public/alfurqan/assets/images/service/4.svg')}}" alt="image">
                            </div>
                            <div class="text">
                                <h2>Charity & Donation</h2>
                                <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                    Digsim amet feugiat nec proin lacinia.</p>
                                <a href="service-single.html">Read More...</a>
                            </div>
                        </div>
                    </div> --}}
                    <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                        <div class="service-card">
                            <div class="top-number">
                                <span>03</span>
                            </div>
                            <div class="icon">
                                <img src="{{ asset('public/alfurqan/assets/images/service/5.svg')}}" alt="image">
                            </div>
                            <div class="text" style="min-height:500px">
                                <h2>{{ __('admin_local.Matrimonial') }}</h2>
                                <p>{{ __('admin_local.Matrimonial services help individuals find suitable life partners based on shared values, faith, and compatibility. In Islam, marriage is a sacred bond that strengthens family and community ties. These services may be offered through online platforms, community centers, or local mosques. Successful matrimonial processes involve trust, mutual respect, and involvement of families. The goal is to build a strong, loving, and lasting relationship under the guidance of Islamic principles.') }}</p>
                                {{-- <a href="service-single.html">Read More...</a> --}}
                            </div>
                        </div>
                    </div>
                    {{-- <div class="col-xl-4 col-lg-6 col-md-6 col-12">
                        <div class="service-card">
                            <div class="top-number">
                                <span>06</span>
                            </div>
                            <div class="icon">
                                <img src="{{ asset('public/alfurqan/assets/images/service/6.svg')}}" alt="image">
                            </div>
                            <div class="text">
                                <h2>Funerals</h2>
                                <p>Betus acipsum srci fusid commod atutro. Enim facilisis donec gomdo enyn.
                                    Digsim amet feugiat nec proin lacinia.</p>
                                <a href="service-single.html">Read More...</a>
                            </div>
                        </div>
                    </div> --}}
                </div>
            </div>
        </div>
    </section>

@endsection