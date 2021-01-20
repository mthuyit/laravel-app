<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="{{ config('app.url') }}" />
    <link rel="shortcut icon" href="{{ Voyager::image(site_setting()->thumbnail('cropped', 'favicon')) }}" type="image/x-icon" />
    <link rel="canonical" href="{{ request()->fullUrl() }}" itemprop="url" />

    <!-- HTML Meta Tags -->   
    <title>@yield('title', site_setting('seo_title'))</title>
    <meta name="description" content="@yield('description', site_setting('meta_description'))">
    <meta name="keywords" content="@yield('keywords', site_setting('meta_keywords'))">
    
    <meta name="language" content="vi" />
    <meta http-equiv="content-language" content="vi">
    <meta name='revisit-after' content='1 days' />

    <link rel="schema.DC" href="http://purl.org/dc/elements/1.1/" />
    <meta name="DC.title" content="@yield('title', site_setting('seo_title'))" />
    <meta name="DC.identifier" content="{{ request()->fullUrl() }}" />
    <meta name="DC.description" content="@yield('description', site_setting('meta_description'))" />
    <meta name="DC.subject" content="website" />
    <meta name="DC.language" scheme="UTF-8" content="vi,en" />

    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="{{ site_setting('geo') }}">
    <meta name="geo.placename" content="{{ site_setting('address') }}">
    <meta name="author" content="{{ site_setting('seo_title') }}">

    <meta name="copyright" content="{{ site_setting('copyright') }}" />
    <meta name="ICBM" content="{{ site_setting('geo') }}">

    <!-- Facebook Meta Tags -->
    <meta property="og:url" content="{{ request()->fullUrl() }}" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="@yield('title', site_setting('seo_title'))" />
    <meta property="og:description" content="@yield('description', site_setting('meta_description'))" />
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:image" content="@yield('image', Voyager::image(site_setting('logo')))" />
    
    <!-- Twitter Meta Tags -->
    <meta name="twitter:title" content="@yield('title', site_setting('seo_title'))" />
    <meta name="twitter:image" content="@yield('title',  Voyager::image(site_setting('logo')))" />
    <meta name="twitter:description" content="@yield('description', site_setting('meta_description'))" />
    <meta name="twitter:card" content="summary" />
    
    <script type='application/ld+json'>
    {
        "@context":"http://schema.org",
        "@type":"Corporation",
        "name": "{{ site_setting('seo_title') }}",
        "description":"{{ site_setting('meta_description') }}",
        "logo":"{{ Voyager::image(site_setting('logo')) }}",
        "email":"site_setting('email')",
        "address": {
            "@type": "PostalAddress",
            "addressLocality": "Hồ Chí Minh",
            "addressRegion": "Vietnam",
            "postalCode": "700000",
            "streetAddress": "{{ site_setting('address') }}"
        },
        "telephone":"0981812124",
        "url":"{{ site_setting('website') }}",
        "sameAs":[
            "https://www.facebook.com",
            "https://www.instagram.com",
            "https://www.linkedin.com",
            "https://myspace.com",
            "https://www.youtube.com",
            "https://www.pinterest.com",
            "https://twitter.com"
        ]
    }
    </script>
    <script type='application/ld+json'>
    {
        "@context":"http://schema.org/",
        "@type":"GeoCoordinates",
        "latitude":"{{ explode(", ", site_setting('geo'))[0] }}",
        "longitude":"{{ explode(", ", site_setting('geo'))[1] }}",
        "postalcode":"700000",
        "address": {
            "@type": "PostalAddress",
            "addressLocality": "Hồ Chí Minh",
            "addressRegion": "Vietnam",
            "postalCode": "700000",
            "streetAddress": "{{ site_setting('address') }}"
        }
    }
    </script>
    
      

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- CDN Styles -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
    <link rel="stylesheet" href="{{ mix('css/responsive.css') }}">

    
    
    @yield('extra-css')
</head>

<body itemscope itemtype="https://schema.org/WebPage">

    <div class="wrapper" id="app">
        <header id="header" itemscope itemtype="http://schema.org/WPHeader">
            @include('partials.header')
        </header>

        <main id="main" itemscope itemtype="http://schema.org/WPSideBar">
            @yield('content')
        </main>

        <footer id="footer" itemscope itemtype="https://schema.org/WPFooter">
            @include('partials.footer')
        </footer>

        @include('includes.scroll-top')

    </div>

    <!-- Modernizr Js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" ></script>
    
    <script src="http://localhost:6001/socket.io/socket.io.js"></script>
    <!-- App Js-->
    <script src="{{ mix('js/app.js') }}" ></script>
    
    <!-- CDN Js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lazysizes/5.2.2/lazysizes.min.js"  ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <!-- Vendor Js-->
    <script src="{{ asset('js/vendor/zoom.min.js') }}" ></script>

    <!-- Main Js -->
    <script src="{{ asset('js/main.js') }}" ></script>

    <!-- Ajax Js -->
    <script src="{{ asset('js/ajax.js') }}" ></script>

    <!-- Scripts -->

    @if(Session::has('message'))    
        <script>

            var type = "{{ Session::get('alert-type', 'success') }}";
            switch(type){
                case 'info':
                    toastr.info("{{ Session::get('message') }}");
                    break;
                
                case 'warning':
                    toastr.warning("{{ Session::get('message') }}");
                    break;

                case 'success':
                    toastr.success("{{ Session::get('message') }}");
                    break;

                case 'error':
                    toastr.error("{{ Session::get('message') }}");
                    break;
            }
        
        </script>
    @endif

    @yield('extra-js')
</body>

</html>