<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Framework Programming</title>
    {{-- online library --}}
    {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> --}}
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:700%7CNunito:300,600" rel="stylesheet"> 
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

    {{-- offline library --}}
    <link rel="stylesheet" href="{{ asset('public/css/style1.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/main.css') }}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/post.css') }}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/comment.css') }}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/util.css') }}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/courosel.css') }}">
    
    <script type="text/javascript" src="{{ asset('public/js/test.js') }}"></script>
    <script type="text/javascript" src="{{ asset('public/js/hmtl5shiv.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('public/js/respond.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('public/js/main.js') }}"></script>
    <style>
        .footer-distributed{
        background-color: #292c2f;
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
        box-sizing: border-box;
        width: 100%;
        text-align: left;
        font: normal 16px sans-serif;
    
        padding: 45px 50px;
        margin-top: 80px;
    }
    
    .footer-distributed .footer-left p{
        color:  #8f9296;
        font-size: 14px;
        margin: 0;
    }
    
    /* Footer links */
    
    .footer-distributed p.footer-links{
        font-size:18px;
        font-weight: bold;
        color:  #ffffff;
        margin: 0 0 10px;
        padding: 0;
    }
    
    .footer-distributed p.footer-links a{
        display:inline-block;
        line-height: 1.8;
        text-decoration: none;
        color:  inherit;
    }
    
    .footer-distributed .footer-right{
        float: right;
        margin-top: 6px;
        max-width: 180px;
    }
    
    .footer-distributed .footer-right a{
        display: inline-block;
        width: 35px;
        height: 35px;
        background-color:  #33383b;
        border-radius: 2px;
    
        font-size: 20px;
        color: #ffffff;
        text-align: center;
        line-height: 35px;
    
        margin-left: 3px;
    }
    
    /* If you don't want the footer to be responsive, remove these media queries */
    
    @media (max-width: 600px) {
    
        .footer-distributed .footer-left,
        .footer-distributed .footer-right{
            text-align: center;
        }
    
        .footer-distributed .footer-right{
            float: none;
            margin: 0 auto 20px;
        }
    
        .footer-distributed .footer-left p.footer-links{
            line-height: 1.8;
        }
    }
    
        </style>

</head>
<body>
  
        @include('navbar')
        @yield('main')
    
     
        <footer class="footer-distributed">

            <div class="footer-right">
        
        
                    <a href="https://web.facebook.com/AndaCoegSekalli"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                    <a href="https://www.instagram.com/shollahudinyusuf/" ><i class="fab fa-instagram" aria-hidden="true"></i></a>
                    <a href="https://twitter.com/Ery_795"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                    <a href="https://www.youtube.com/channel/UCcuLvcG10Q34iH8o7BmXvLg" ><i class="fab fa-youtube" aria-hidden="true"></i></a>
                    
            </div>
        
            <div class="footer-left">
        
                    <p class="footer-links">
                            <a href="{{ url('/', []) }}">Home</a>
                            ·
                            <a href="{{ url('about', []) }}">About Us</a>
        
                    @php($ftr = DB::table('home')->get())
                    @foreach ($ftr as $fttr)
                     <p>&copy; {{$fttr->footer}} </p>
                     @endforeach
                   
            </div>
        
        </footer>

</body>
</html>