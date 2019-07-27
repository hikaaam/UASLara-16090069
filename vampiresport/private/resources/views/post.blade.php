@extends('template')



        @section('main')
        <div style="background:rgb(51, 51, 51);
         color: #888888;"  >
         @php
			 use App\article;
			 use App\cat;
		 @endphp

	<!-- Header -->
    <header id="header">

			<!-- Page Header -->
			<div id="post-header" class="page-header">
                <div class="background-img" style="background-image: url('{{ url('private/images/artikel', [$item->sampul]) }}')">
                  
				<div class="container">
					<div class="row">
						<div class="col-md-10">
							<div class="post-meta">
								<a class="post-category cat-{{$item->idcat}}" href="category.html">{{$item->kategori}}</a>
								<span class="post-date">{{$item->created_at->format('M d, Y')}}</span>
							</div>
							<h1 style="color:white;">{{$item->judul}}</h1>
						</div>
					</div>
				</div>
            </div>
        </div>
			<!-- /Page Header -->
		</header>
		<!-- /Header -->

		<!-- section -->
		<div class="section"  >
			<!-- container -->

				<!-- row -->
				<div class="row">
					<!-- Post content -->
					<div class="col-md-8">
						
						<div class="section-row sticky-container">
						
							<div class="main-post">
								<p>
									{!!$item->isi!!}
								</p>
							</div>
						
							<div class="post-shares sticky-shares">
								<a style="background-color:red" href="javascript:void(0)" onclick="openFormShare()" id="shareIcon" class="share-facebook"><i style="color:white;" class="fas fa-share-alt"></i></a>
								<div id="share" style="display: none;">
								<a style="background-color:#111111" href="#" onclick="closeFormShare()" class="share-facebook"><i style="color:red" class="fas fa-times"></i></a>
								<a style="background-color:#111111" href="#" class="share-twitter"><i style="color:red"  class="fab fa-facebook"></i></a>
								<a style="background-color:#111111" href="#" class="share-google-plus"><i style="color:red"  class="fab fa-twitter"></i></a>
								<a style="background-color:#111111" href="#" class="share-pinterest"><i style="color:red"  class="fab fa-whatsapp"></i></a>
								</div>
								
							</div>
						
						</div>

						<!-- ad -->

						<!-- ad -->
						
						<!-- comment -->
						<div id="disqus_thread"></div>
						<script>
						
						/**
						*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
						*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
						/*
						var disqus_config = function () {
						this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
						this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
						};
						*/
						(function() { // DON'T EDIT BELOW THIS LINE
						var d = document, s = d.createElement('script');
						s.src = 'https://vampygame.disqus.com/embed.js';
						s.setAttribute('data-timestamp', +new Date());
						(d.head || d.body).appendChild(s);
						})();
						</script>
						<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>						
					</div>
					<!-- /Post content -->

					<!-- aside -->
				
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
						
						{{-- <!-- tags -->
						<div class="aside-widget">
							<div class="tags-widget">
								<ul>
									<li><a href="#">Game</a></li>
									<li><a href="#">Esport</a></li>
									<li><a href="#">Tutorial</a></li>
									<li><a href="#">Tips</a></li>
									<li><a href="#">Gaming Gear</a></li>
									<li><a href="#">Info</a></li>
									<li><a href="#">Berita</a></li>
								</ul>
							</div>
						</div>
						<!-- /tags --> --}}

						<div class="col-md-12">
								<!-- post widget -->
								<div class="aside-widget">
										<div class="section-title">
											<h2>Most Read</h2>
										</div>
									  
										@php( $mr = article::where('deleted',0)->orderBy('view','desc')->take(3)->get())
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
				</div>

		</div>
		<!-- /section -->

	
</div>       
@endsection

