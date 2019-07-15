@extends('layouts.app')
<head>
    <title>Blog view</title>
    <script type="text/javascript" src="{{ asset('js/main.js') }}"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <style>
        
        /*----------------------------*\
        post row
        \*----------------------------*/
        .post.post-row:after {
            content: '';
            display: block;
            clear: both;
        }
        .post.post-row .post-img {
            width: 40%;
            float: left;
        }
        .post.post-row .post-body {
            margin-left: calc(40% + 30px);
        }
        .post.post-row .post-meta {
            margin-top: 0px;
        }
        .post.post-row .post-title {
            margin-bottom: 15px;
        }
    </style>
</head>
@section('content')
<div class="section">
		<!-- container -->
		<div class="container">

		<!-- section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-12">
                                    <div class="form-container" >
                                           
                                            <input type="text" style="background-color:silver;"  class="form-control" name="search" id="inputSearch">
                                            <button style="position:relative;left:75%;width:25%;margin-top:10px;" type="submit" class="btn btn-success"><i class="fa fa-search"></i></button>
                                         
                                        </div>
								<div class="section-title">
									<h2>Most Read</h2>
                                </div>
							</div>
                            <!-- post -->
                            @foreach ($blogs as $item)
							<div class="col-md-12">
								<div class="post post-row">
                                <a class="post-img" href="{{ url('/blog/show?id=')}} {{$item->id}}"><img src="images/blog/{{$item->foto}}" style="width:80%;" alt=""></a>
									<div class="post-body">
										<div class="post-meta">                                          
											<span class="post-date">March 27, 2018</span>
										</div>
                                    <h3 class="post-title"><a href="{{ url('/blog/show?id=')}}{{$item->id}}">{{$item->judul}}</a></h3>
									{!! substr($item->isi_berita, 0, 80)."....." !!}
									</div>
								</div>
							</div>
							<!-- /post -->                   
							<br>            
                            @endforeach
                           
							
							<div class="col-md-12">
								<div class="section-row">
                                    <br>
									<button class="btn btn-danger">Load More</button>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<!-- ad -->
						<div class="aside-widget text-center">
							<a href="#" style="display: inline-block;margin: auto;">
								<img class="img-responsive" src="./img/ad-1.jpg" alt="">
							</a>
						</div>
						<!-- /ad -->
					
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
        <!-- /section -->
    </div>
    
@endsection
