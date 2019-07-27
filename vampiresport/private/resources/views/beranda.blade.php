@extends('template')


@section('main')



{{-- slider caurosel --}}
<div class="container">

	

<div class="hidden-xs">
		<div class="hidden-sm">
<div id="myCarousel" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ul class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			  </ul>
			  
			  <!-- The slideshow -->
			  <div class="carousel-inner">
				<div class="item active">
				  <img src="{{ asset('private/images'.'/'.$home->slider1) }}" alt="Los Angeles" width="1100" height="500">
				</div>
				<div class="item">
				  <img src="{{ asset('private/images'.'/'.$home->slider2)  }} " alt="Chicago" width="1100" height="500">
				</div>
				<div class="item">	
				  <img src="{{ asset('private/images'.'/'.$home->slider3)  }} " alt="New York" width="1100" height="500">
				</div>
			  </div>
			  
			  <!-- Left and right controls -->
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="icon-prev"></span>
			  </a>
			  <a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="icon-next"></span>
			  </a>
</div> 
</div>
</div>
</div>
<!-- section -->
@php
	use Illuminate\Support\Facades\DB;
@endphp
<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				

			<div class="hidden-sm">
					<div class="hidden-xs">
				<div class="col-md-12">				
					<div class="section-title">					
						<h2>New Category</h2>
					</div>
				</div>
					</div>
			</div>
			<div class="hidden-sm">
					<div class="hidden-xs">
			@php($category = DB::table('categories')->select('postcat')->take(3)->orderBy('id','asc')->distinct()->get())
				@foreach ($category as $ordercat)
					@php($catarray[] = $ordercat->postcat )
				@endforeach
				<!-- post -->
				@for ($i = 0; $i < 3; $i++)
					
				@php($postnew = DB::table('articles')->where('idcat','=',$catarray[$i])->where('deleted',0)->take(1)->orderBy('id','desc')->get())
					@foreach ($postnew as $np)
				<div class="col-md-4">
					<div class="post">
						{{-- <div style=" width: 100%;	height: 300px; display: flex;text-align: center;" class="responsive-rectangle">
						<div class="image-wrapper" style="  margin: auto;"> --}}
						<a class="post-img" href="{{ url('post', [$np->id]) }}"><img style="height:300px;width:100%;" src=" {{ url('private/images/artikel', [$np->foto]) }} " alt=""></a>
						{{-- </div>
						</div> --}}
						<div class="post-body">
							<div class="post-meta">
								<a class="post-category cat-{{$np->idcat}}" href="{{ url('cat', [$np->kategori]) }}">{{$np->kategori}}</a>
							<span class="post-date">{{ Carbon\Carbon::parse($np->created_at)->format('M d, Y')}}</span>
							</div>
						<h3 class="post-title"><a href="{{ url('post', [$np->id]) }}">{{ucfirst($np->judul)}}</a></h3>
						</div>
					</div>
				</div>
			
				@endforeach
				@endfor
			</div>
		</div>
			<!-- /post -->
			
				<!-- post -->
			
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->
	<!-- section -->
	<div style="display: none;position:relative;bottom:5%;" class="visible-xs">

				
			<div class="col-xs-12">

				<div style="right:5%;" class="col-xs-12">
					{!! Form::open(array('url' =>  url('/search', [])   ,'method' => 'POST')) !!}
					{{Form::text("search",
								old("search") ? old("search") : (!empty($user) ? $user->search : null),
								[
									
									"class" => "form-control",
									"placeholder" => "  search here  ",
								])
							}}
						<div class="col-sm-6">
					{{ Form::button('<i class="fa fa-search"></i>', ['type' => 'submit', 'class' => 'hidden-xs'] )  }}
				</div>
					{!! Form::close() !!}  
				</div>
			</div>
		</div>
			<!-- section -->
		<div style="margin-top:-50px;position: relative;top:-28px;" class="section">
				<!-- container -->
				<div class="container">
						
					<!-- row -->
					<div class="row">

						<div class="col-md-8">
							<div class="row">
									<div class="col-md-12">
											<div style="top:28px;position:relative;" class="section-title">
												<h3>Recent Post</h3>
											</div>
											<hr>
										</div>
										
								<!-- post -->
						
								@foreach ($page as $item)	
								<div class="col-md-12">
									<div class="post post-row">
										<a class="post-img" href="{{ url('post', [$item->id]) }}"><img src="{{ url('private/images/artikel/', [$item->foto]) }}" alt=""></a>
										<div class="post-body">
											<div class="post-meta">
									
											<a class="post-category cat-{{$item->idcat}}" href="{{ url('cat', [$item->kategori]) }}">{{$item->kategori}}</a>
													
												<span class="post-date">{{ucfirst($item->created_at->format('M d, Y'))}}</span>
											</div>
										<h3 class="post-title"><a href="{{ url('post', [$item->id]) }}">{{ ucfirst($item->judul)}}</a></h3>
										<div class="hidden-xs">
										<p style="width:400px:text-align:justify;">{{substr($item->preview,0,151)}}</p>
									</div>	
									</div>
									</div>
								</div>
								@endforeach
								<!-- /post -->
						
								{{ $page->links() }}
						

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
							
							<!-- catagories -->
							<div class="aside-widget">
								<div class="section-title">
									<h2>Catagories</h2>
								</div>
								<div class="category-widget">
									<ul>
										@php($cate = DB::table('categories')->select('nama_kategori','postcat')->where('deleted',0)->distinct()->get())
										@foreach ($cate as $cats)
										@php($count = DB::table('articles')->where('idcat',$cats->postcat)->count())
									<li><a href="{{ url('cat', [$cats->nama_kategori]) }}" class="cat-{{$cats->postcat}}">{{$cats->nama_kategori}}<span>{{$count}}</span></a></li>
										@endforeach
									</ul>
								</div>
							</div>
							<!-- /catagories -->
							
						
									<!-- post widget -->
									<div class="aside-widget">
										<div class="section-title">
											<h2>Most Read</h2>
										</div>
										@foreach ($mr as $mrs)
										<div class="post post-widget">
											<a class="post-img" href="{{ url('post', [$mrs->id]) }}"><img src="{{ url('private/images/artikel', [$mrs->foto]) }}" alt=""></a>
											<div class="post-body">
											<h3 class="post-title"><a href="{{ url('post', [$mrs->id]) }}">{{ucfirst($mrs->judul)}}</a></h3>
											</div>
										</div>
										@endforeach
									</div>
									<!-- /post widget -->
			

						
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /section -->
	
	


				
		</div>

@endsection
