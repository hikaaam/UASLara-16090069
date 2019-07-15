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

</head>
<body>
  
        @include('navbar')
        @yield('main')
    
        <hr>
    @yield('footer')



</body>
</html>