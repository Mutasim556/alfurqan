<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="wpOceans">
    <link rel="shortcut icon" type="image/png" href="assets/images/favicon.png">
    <title>{{ env('APP_BACKEND_NAME') }} - @stack('title')</title>
    <link href="{{ asset('public/alfurqan/assets/css/themify-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/flaticon.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/animate.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/owl.carousel.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/owl.theme.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/slick.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/slick-theme.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/swiper.min.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/owl.transitions.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/jquery.fancybox.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/css/odometer-theme-default.css') }}" rel="stylesheet">
    <link href="{{ asset('public/alfurqan/assets/sass/style.css') }}" rel="stylesheet">
    @stack('css')
</head>

<body>

    <!-- start page-wrapper -->
    <div class="page-wrapper">
        <!-- start preloader -->
        <div class="preloader">
            <div class="vertical-centered-box">
                <div class="content">
                    <div class="loader-circle"></div>
                    <div class="loader-line-mask">
                        <div class="loader-line"></div>
                    </div>
                    <img src="assets/images/preloader.png" alt="">
                </div>
            </div>
        </div>
        <!-- end preloader -->

        <!-- Start header -->
        <header id="header" class="header-s2">
            <div class="wpo-site-header">
                <nav class="navigation navbar navbar-expand-lg navbar-light">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-lg-3 col-md-3 col-3 d-lg-none dl-block">
                                <div class="mobail-menu">
                                    <button type="button" class="navbar-toggler open-btn">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar first-angle"></span>
                                        <span class="icon-bar middle-angle"></span>
                                        <span class="icon-bar last-angle"></span>
                                    </button>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-6 col-6">
                                <div class="navbar-header">
                                    <a class="navbar-brand" href="index.html"><img src="{{ asset('public/alfurqan/assets/images/logo.webp') }}"
                                            alt="logo"></a>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-1 col-1">
                                <div id="navbar" class="collapse navbar-collapse navigation-holder">
                                    <button class="menu-close"><i class="ti-close"></i></button>
                                    <ul class="nav navbar-nav mb-2 mb-lg-0">
                                        <li><a href="{{ url('/') }}">{{ __('admin_local.Home') }}</a></li>
                                        <li class="menu-item-has-children">
                                            <a href="#">{{ __('admin_local.Announcements') }}</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog.html">{{ __('admin_local.Jummah') }}</a></li>
                                                <li><a href="blog.html">{{ __('admin_local.Events') }}</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="{{ route('donation.index') }}">{{ __('admin_local.Donate') }}</a></li>
                                        <li><a href="{{ url('/') }}">{{ __('admin_local.Programs') }}</a></li>
                                        <li><a href="{{ url('/') }}">{{ __('admin_local.Services') }}</a></li>
                                        <li><a href="{{ url('/') }}">{{ __('admin_local.About') }}</a></li>
                                        <li><a href="{{ url('/') }}">{{ __('admin_local.Contact') }}</a></li>
                                        {{-- <li class="menu-item-has-children">
                                            <a href="#">Blog</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog.html">Blog right sidebar</a></li>
                                                <li><a href="blog-left-sidebar.html">Blog left sidebar</a></li>
                                                <li><a href="blog-fullwidth.html">Blog fullwidth</a></li>
                                                <li class="menu-item-has-children">
                                                    <a href="#">Blog details</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="blog-single.html">Blog details right sidebar</a>
                                                        </li>
                                                        <li><a href="blog-single-left-sidebar.html">Blog details left
                                                                sidebar</a></li>
                                                        <li><a href="blog-single-fullwidth.html">Blog details
                                                                fullwidth</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li> --}}
                                        {{-- <li><a href="contact.html">Contact</a></li> --}}
                                    </ul>
                                </div><!-- end of nav-collapse -->
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <div class="header-right">
                                    <div class="header-search-form-wrapper">
                                        <div class="cart-search-contact">
                                            <button class="search-toggle-btn">{{ __('admin_local.Language') }}</button>
                                            <div class="header-search-form">
                                                <ul class="sub-menu" style="list-style: none;">
                                                    @php
                                                        $languages =  \App\Models\Admin\Language::where([['status', 1], ['delete', 0]])
                                                            ->get();
                                                    @endphp
                                                    @foreach ($languages as $language)
                                                        <li class="my-1 py-1" @if($language->lang==Cookie::get('front_language')) style="background: #DB9E30;text-align:center;" @else style="background: rgb(243, 243, 243);text-align:center;" @endif><a href="{{ route('changeFrontLang',$language->lang) }}" style="color: black;font-weight:600;font-size:16px;">{{ $language->name }}</a></li>
                                                    @endforeach
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- end of container -->
                </nav>
            </div>
        </header>
        <!-- end of header -->

        @yield('content')

        <!-- start of footer-section -->
        <footer class="site-footer">
            <div class="upper-footer s2">
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-3 col-md-6 col-sm-12 col-12">
                            <div class="widget about-widget">
                                <div class="logo widget-title">
                                    <img src="assets/images/logo-2.svg" alt="blog">
                                </div>
                                <p>Mattis inelit neque quis donec eleifnd amet. Amet sed et cursus eu euismod. Egestas
                                    in
                                    morbi tristique ornare vulputate vitae enim.</p>
                                <div class="social-widget">
                                    <ul>
                                        <li><a href="#"><i class="ti-facebook"></i></a></li>
                                        <li><a href="#"><i class="ti-twitter-alt"></i></a></li>
                                        <li><a href="#"><i class="ti-linkedin"></i></a></li>
                                        <li><a href="#"><i class="ti-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-3 col-md-6 col-sm-12 col-12">
                            <div class="widget link-widget">
                                <div class="widget-title">
                                    <h3>Services</h3>
                                </div>
                                <ul>
                                    <li><a href="service-single.html">Quran Memorization</a></li>
                                    <li><a href="service-single.html">Special Child Care</a></li>
                                    <li><a href="service-single.html">Mosque Development</a></li>
                                    <li><a href="service-single.html">Charity & Donation</a></li>
                                    <li><a href="service-single.html">Matrimonial</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col col-lg-3 col-md-6 col-sm-12 col-12">
                            <div class="widget link-widget s2">
                                <div class="widget-title">
                                    <h3>Quick Links</h3>
                                </div>
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="about.html">About Us</a></li>
                                    <li><a href="service.html">Servicces</a></li>
                                    <li><a href="event.html">Event</a></li>
                                    <li><a href="donate.html">Donate</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col col-lg-3 col-md-6 col-sm-12 col-12">
                            <div class="widget newsletter-widget">
                                <div class="widget-title">
                                    <h3>Newsletter</h3>
                                </div>
                                <form>
                                    <input type="email" class="form-control" name="mail" id="mail"
                                        placeholder="Your Email...">
                                    <input class="theme-btn" type="submit" value="Subscribe">
                                </form>
                            </div>
                        </div>
                    </div>
                </div> <!-- end container -->
            </div>
            <div class="lower-footer">
                <div class="container">
                    <div class="row g-0">
                        <div class="col col-lg-6 col-12">
                            <p class="copyright"> Copyright &copy; 2023 Istiqbal by <a href="index.html">wpOceans</a>.
                                All
                                Rights Reserved.</p>
                        </div>
                        <div class="col col-lg-6 col-12">
                            <ul>
                                <li>
                                    <a href="privace.html">Privace & Policy</a>
                                </li>
                                <li>
                                    <a href="terms.html">Terms</a>
                                </li>
                                <li>
                                    <a href="about.html">About us</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end of footer-section -->


    </div>
    <!-- end of page-wrapper -->

    <!-- All JavaScript files
    ================================================== -->
    <script src="{{ asset('public/alfurqan/assets/js/jquery.min.js')}}"></script>
    <script src="{{ asset('public/alfurqan/assets/js/bootstrap.bundle.min.js')}}"></script>
    <!-- Plugins for this template -->
    <script src="{{ asset('public/alfurqan/assets/js/modernizr.custom.js')}}"></script>
    <script src="{{ asset('public/alfurqan/assets/js/jquery-plugin-collection.js')}}"></script>
    <!-- Custom script for this template -->
    <script src="{{ asset('public/alfurqan/assets/js/script.js')}}"></script>

    @stack('js')
</body>

</html>