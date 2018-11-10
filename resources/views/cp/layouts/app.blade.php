@extends('cp.layouts.master')

@section ('headercss')
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
    <link rel="stylesheet" href="{{ asset ('public/cp/css/lib/font-awesome/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset ('public/cp/css/lib/bootstrap-sweetalert/sweetalert.css') }}">
    <link rel="stylesheet" href="{{ asset ('public/cp/css/main.css') }}">
    <script type="text/javascript" src="{{ asset ('public/cp/js/lib/jquery/jquery.min.js') }}"></script>
    <link rel="stylesheet" href="{{ asset ('public/cp/css/lib/summernote/summernote.css') }}"/>
    @yield('appheadercss')
@endsection



@section ('bodyclass')
    class="with-side-menu control-panel control-panel-compact"
@endsection

@section ('header')

<header class="site-header">
    <div class="container-fluid">
        <a target="_blank" href="{{ url('/') }}" class="site-logo">
            <img class="hidden-md-down" style="height: 60px;" src="{{ asset ('public/cp/img/logo.png') }}" alt="">
            <img class="hidden-lg-up" src="{{ asset ('public/cp/img/logo.png') }}" alt="">
        </a>
        <button class="hamburger hamburger--htla">
            <span>toggle menu</span>
        </button>
        <div class="site-header-content">
            <div class="site-header-content-in">
                <div class="site-header-shown">
                    
                    <div class="dropdown user-menu">
                        <button class="dropdown-toggle" id="dd-user-menu" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="{{ asset ('public/uploads/user/image/'.Auth::user()->avatar) }}" alt="">
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dd-user-menu">
                            <a class="dropdown-item" href="{{ route('cp.profile.profile.edit') }}"><span class="fa fa-user"></span> Profile</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="{{ route('cp.auth.logout') }}"><span class="fa fa-sign-out"></span> Logout</a>
                        </div>
                    </div>

                    <button type="button" class="burger-right">
                        <i class="font-icon-menu-addl"></i>
                    </button>
                </div><!--.site-header-shown-->

                <div class="mobile-menu-right-overlay"></div>
                
            </div><!--site-header-content-in-->
        </div><!--.site-header-content-->
    </div><!--.container-fluid-->
</header><!--.site-header-->
@endsection

@section ('menu')
    @php ($menu = "")
    @if(isset($_GET['menu']))
        @php( $menu = $_GET['menu'])
    @endif
    

    <div class="mobile-menu-left-overlay"></div>
    <nav class="side-menu">
        <ul class="side-menu-list"> 
           @if(Auth::user()->position_id == 1 || Auth::user()->position_id == 3)
            <li class="red @yield('active-main-menu-dashboard')">
                <a href="{{ route('cp.dashboard.index') }}">
                <span>
                    <i class="fa fa-desktop"></i>
                    <span class="lbl">Dashboard</span>
                </span>
                </a>
            </li>
            @endif
            <li class="@yield('active-main-menu-general') red with-sub">
                <span>
                    <i class=" font-icon fa fa-file"></i>
                    <span class="lbl"> General Content</span>
                </span>
                <ul>
                    
                    <li class=""><a href="{{ route('cp.content.content.edit', ['slug' => 'address']) }}?menu=general"><span class="lbl">Address</span></a></li>
                    <li class=""><a href="{{ route('cp.content.content.edit', ['slug' => 'phone']) }}?menu=general"><span class="lbl">Phone</span></a></li>
                    <li class=""><a href="{{ route('cp.content.content.edit', ['slug' => 'email']) }}?menu=general"><span class="lbl">Email</span></a></li>
                    <li class=""><a href="{{ route('cp.content.content.edit', ['slug' => 'slogan']) }}?menu=general"><span class="lbl">Slogan</span></a></li>
                </ul>
            </li>
           
            <li class="red @yield('active-main-menu-slide')">
                <a href="{{ route('cp.slide.index') }}">
                <span>
                    <i class="fa fa-desktop"></i>
                    <span class="lbl">Slide</span>
                </span>
                </a>
            </li>
            <li class="red @yield('active-main-menu-partner')">
                <a href="{{ route('cp.partner.index') }}">
                <span>
                    <i class="fa fa-binoculars"></i>
                    <span class="lbl">Partner</span>
                </span>
                </a>
            </li>
            <li class="red @yield('active-main-menu-news')">
                <a href="{{ route('cp.news.index') }}">
                <span>
                    <i class="fa fa-vcard-o"></i>
                    <span class="lbl">News</span>
                </span>
                </a>
            </li>

            <li class="red @yield('active-main-menu-faculty')">
                <a href="{{ route('cp.faculty.index') }}">
                <span>
                    <i class="fa fa-bank"></i>
                    <span class="lbl">Faculty</span>
                </span>
                </a>
            </li>

            <li class="red @yield('active-main-menu-academic-programe')">
                <a href="{{ route('cp.academic-programe.index') }}">
                <span>
                    <i class="fa fa-archive"></i>
                    <span class="lbl">Academic Programe</span>
                </span>
                </a>
            </li>

            <li class="red @yield('active-main-menu-admission')">
                <a href="{{ route('cp.admission.index') }}">
                <span>
                    <i class="fa fa-book"></i>
                    <span class="lbl">Admission</span>
                </span>
                </a>
            </li>

            <li class="red @yield('active-main-menu-alumnies')">
                <a href="{{ route('cp.alumnies.index') }}">
                <span>
                    <i class="fa fa-file-zip-o"></i>
                    <span class="lbl">Alumnies</span>
                </span>
                </a>
            </li>

            <li class="red @yield('active-main-menu-industry')">
                <a href="{{ route('cp.industry.index') }}">
                <span>
                    <i class="fa fa-globe"></i>
                    <span class="lbl">Industry</span>
                </span>
                </a>
            </li>

            <li class="red @yield('active-main-menu-publication')">
                <a href="{{ route('cp.publication.index') }}">
                <span>
                    <i class="fa fa-gavel"></i>
                    <span class="lbl">Publication</span>
                </span>
                </a>
            </li>

            <li class="red @yield('active-main-menu-major')">
                <a href="{{ route('cp.major.index') }}">
                <span>
                    <i class="fa fa-map-o"></i>
                    <span class="lbl">Major</span>
                </span>
                </a>
            </li>
            <!-- <li class="red @yield('active-main-menu-about-us')">
                <a href="{{ route('cp.content.content.edit', ['slug' => 'about-us']) }}?menu=about-us">
                <span>
                    <i class="fa fa-user"></i>
                    <span class="lbl">Company Profile</span>
                </span>
                </a>
            </li> -->
            <li class="red @yield('active-main-menu-usefull')">
                <a href="{{ route('cp.usefull-link.index') }}">
                <span>
                    <i class="fa fa-link"></i>
                    <span class="lbl">Usefull Link</span>
                </span>
                </a>
            </li>

            <li class="red @yield('active-main-menu-video')">
                <a href="{{ route('cp.video.index') }}">
                <span>
                    <i class="fa fa-video-camera"></i>
                    <span class="lbl">Video</span>
                </span>
                </a>
            </li>
            

            
            @if(Auth::user()->position_id == 1 || Auth::user()->position_id == 3)
           
            

            <li class="red @yield('active-main-menu-visitor')">
                <a href="{{ route('cp.visitor.index') }}">
                <span>
                    <i class="fa fa-eye"></i>
                    <span class="lbl">Visitor</span>
                </span>
                </a>
            </li>
            @endif
            @if(Auth::user()->position_id == 1 )
            <li class="red @yield('active-main-menu-user')">
                <a href="{{ route('cp.user.user.index') }}">
                <span>
                    <i class="fa fa-users"></i>
                    <span class="lbl">User</span>
                </span>
                </a>
            </li>
           
            @endif
            @if(Auth::user()->position_id == 1 || Auth::user()->position_id == 3)
            <li class="red @yield('active-main-menu-tracking')">
                <a href="{{ route('cp.tracking.index') }}">
                <span>
                    <i class="fa fa-child"></i>
                    <span class="lbl">Tracking User</span>
                </span>
                </a>
            </li>
            @endif
        </ul>
    </nav><!--.side-menu-->

@endsection

@section ('content')
    <div class="page-content">
        
        @yield ('page-content')
        
    </div>
@endsection




@section ('bottomjs')
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
        @yield ('imageuploadjs')
        <script type="text/javascript" src="{{ asset ('public/cp/js/lib/tether/tether.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset ('public/cp/js/lib/bootstrap/bootstrap.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset ('public/cp/js/plugins.js') }}"></script>
        <script type="text/javascript" src="{{ asset ('public/cp/js/lib/lobipanel/lobipanel.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset ('public/cp/js/lib/match-height/jquery.matchHeight.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset ('public/cp/js/lib/bootstrap-sweetalert/sweetalert.min.js') }}"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
        <script src="{{ asset ('public/cp/js/lib/bootstrap-select/bootstrap-select.min.js')}}"></script>
        <script src="{{ asset ('public/cp/js/lib/select2/select2.full.min.js')}}"></script>
       <script src="{{ asset ('public/cp/js/lib/summernote/summernote.min.js') }}"></script>
       

       <script>
            $(document).ready(function() {
                $('.summernote').summernote();
            });
        </script>

        <script src="{{ asset ('public/cp/js/app.js') }}"></script>
        <script src="{{ asset ('public/cp/js/camcyber.js') }}"></script>
        @yield('appbottomjs')

        @if(Session::has('msg'))
        <script type="text/JavaScript">
            toastr.success("{!!Session::get('msg')!!}");
        </script>
        @endif
        @if(Session::has('error'))
        <script type="text/JavaScript">
            toastr.error("{!!Session::get('error')!!}");
        </script>
        @endif
@endsection