@extends('template')


@section('main')

{{-- slider caurosel --}}

@php
	use Illuminate\Support\Facades\DB;
	use App\article;
@endphp
					
			<!-- section -->
		<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-8">
							<div class="row">
								<div class="col-md-12">
									<div class="section-title">
										<h2>Search Result For : "{{ $p }}"</h2>
									</div>
								</div>
								<!-- post -->
								@foreach ($data as $item)
								<div class="col-md-12">
										<div class="post post-row">
											<a class="post-img" href="{{ url('post', [$item->id]) }}"><img src="{{ url('private/images/artikel/', [$item->foto]) }}" alt=""></a>
											<div class="post-body">
												<div class="post-meta">
										
												<a class="post-category cat-{{$item->idcat}}" href="{{ url('cat', [$item->kategori]) }}">{{$item->kategori}}</a>
														
													<span class="post-date">{{Carbon\Carbon::parse($item->created_at)->format('M d, Y')}}
													</span>
												</div>
											<h3 class="post-title"><a href="{{ url('post', [$item->id]) }}">{{ ucfirst($item->judul)}}</a></h3>
											<p style="width:400px:text-align:justify;">{{substr($item->preview,0,151)}}</p>
											</div>
										</div>
									</div>
								@endforeach
								<!-- /post -->
								{{$data->links()}}
							
						
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
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /section -->
	
	


				


@endsection
@section('footer')
     <p>&copy; 2019 | Framework Programming Poltek Tegal </p>
@endsection