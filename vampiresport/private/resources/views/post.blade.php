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
								<a class="post-category cat-2" href="category.html">{{$item->kategori}}</a>
								<span class="post-date">{{$item->created_at->format('M d, Y')}}</span>
							</div>
							<h1>{{$item->judul}}</h1>
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
								<a href="#" onclick="openFormShare()" id="shareIcon" class="share-facebook"><i class="fas fa-share-alt"></i></a>
								<div id="share" style="display: none;">
								<a href="#" onclick="closeFormShare()" class="share-facebook"><i class="fas fa-times"></i></a>
								<a href="#" class="share-twitter"><i class="fab fa-facebook"></i></a>
								<a href="#" class="share-google-plus"><i class="fab fa-twitter"></i></a>
								<a href="#" class="share-pinterest"><i class="fab fa-whatsapp"></i></a>
								</div>
								
							</div>
						</div>

						<!-- ad -->

						<!-- ad -->
						
						<!-- comment -->

								
									<!------ Include the above in your HEAD tag ---------->
	
	<div class="row" style="left:4%; position: relative;">
	<div class="col-sm-12"  id="logout">
		
		<div class="comment-tabs"
		style="width:100%">
			<ul class="nav nav-tabs" role="tablist">
				<li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
				<li><a href="#add-comment" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Add comment</h4></a></li>
				</ul>            
			<div class="tab-content">
				<div class="tab-pane active" id="comments-logout">                
					<ul class="media-list">
						<li class="media">
			
						<div class="media-body">
						
							<div class="well well-lg">
									<div class="pp">	
											<a class="pull-left" href="#">
														<img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg" 
													 height="50px">
													</a>
													<h4 class="media-uName text-uppercase reviews">Marco </h4>
												</div>
								
								<ul class="media-date text-uppercase reviews list-inline">
								<li class="dd">22</li>
								<li class="mm">09</li>
								<li class="aaaa">2014</li>
								</ul>
								<p class="media-comment">
								Great snippet! Thanks for sharing.
								</p>
								<div class="baten">
								<a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
								<a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyOne"><span class="glyphicon glyphicon-comment"></span> 1 comments</a>
							</div>
							</div>     
							<div class="collapse" id="replyOne">
									<ul class="media-list">
										<li class="media media-replied">
											<div class="media-body">
								
													<div class="well-reply well-lg">
															<div class="pp">	
																	<a class="pull-left" href="#">
																				<img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg" 
																			 height="50px">
																			</a>
																			<h4 class="media-uName text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span>Marco </h4>
																		</div>
														
														<ul class="media-date text-uppercase reviews list-inline">
														<li class="dd">22</li>
														<li class="mm">09</li>
														<li class="aaaa">2014</li>
														</ul>
														<p class="media-comment">
														Great snippet! Thanks for sharing.
														</p>
														<a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
														</div>  
										</li>
									</ul>  
								</div>
						</div>
						
						</li>          
						
					</ul> 
				</div>
				<div class="tab-pane" id="add-comment">
					<form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> 
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">Comment</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="addComment" id="addComment" rows="5"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="uploadMedia" class="col-sm-2 control-label">Upload media</label>
							<div class="col-sm-10">                    
								<div class="input-group">
									<div class="input-group-addon">http://</div>
									<input type="text" class="form-control" name="uploadMedia" id="uploadMedia">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">                    
								<button class="btn btn-success btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
							</div>
						</div>            
					</form>
				</div>
				<div class="tab-pane" id="account-settings">
					<form action="#" method="post" class="form-horizontal" id="accountSetForm" role="form">
						<div class="form-group">
							<label for="avatar" class="col-sm-2 control-label">Avatar</label>
							<div class="col-sm-10">                                
								<div class="custom-input-file">
									<label class="uploadPhoto">
										Edit
										<input type="file" class="change-avatar" name="avatar" id="avatar">
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name" id="name" placeholder="Vilma palma">
							</div>
						</div>
						<div class="form-group">
							<label for="nickName" class="col-sm-2 control-label">Nick name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="nickName" id="nickName" placeholder="Vilma">
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" name="email" id="email" placeholder="vilma@mail.com">
							</div>
						</div>  
						<div class="form-group">
							<label for="newPassword" class="col-sm-2 control-label">New password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" name="newPassword" id="newPassword">
							</div>
						</div> 
						<div class="form-group">
							<label for="confirmPassword" class="col-sm-2 control-label">Confirm password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" name="confirmPassword" id="confirmPassword">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">                    
								<button class="btn btn-primary btn-circle text-uppercase" type="submit" id="submit">Save changes</button>
							</div>
						</div>            
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="row">
	<div class="col-sm-10 col-sm-offset-1" id="login">
		<div class="page-header">
			<h3 class="reviews">Leave your comment</h3>
			<div class="logout">
				<button class="btn btn-default btn-circle text-uppercase" type="button" onclick="$('#login').hide(); $('#logout').show()">
					<span class="glyphicon glyphicon-off"></span> Login                    
				</button>                
			</div>
		</div>
		<div class="comment-tabs">
			<ul class="nav nav-tabs" role="tablist">
				<li class="active"><a href="#comments-login" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
				<li><a href="#add-comment-disabled" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Add comment</h4></a></li>
				<li><a href="#new-account" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Create an account</h4></a></li>
			</ul>            
			<div class="tab-content">
				<div class="tab-pane active" id="comments-login">                
					<ul class="media-list">
						<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg" alt="profile">
						</a>
						<div class="media-body">
							<div class="well well-lg">
								<h4 class="media-heading text-uppercase reviews">Marco</h4>
								<ul class="media-date text-uppercase reviews list-inline">
								<li class="dd">22</li>
								<li class="mm">09</li>
								<li class="aaaa">2014</li>
								</ul>
								<p class="media-comment">
								Great snippet! Thanks for sharing.
								</p>
								<a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
								<a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyThree"><span class="glyphicon glyphicon-comment"></span> 2 comments</a>
							</div>              
						</div>
						<div class="collapse" id="replyThree">
							<ul class="media-list">
								<li class="media media-replied">
									<a class="pull-left" href="#">
										<img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/ManikRathee/128.jpg" alt="profile">
									</a>
									<div class="media-body">
										<div class="well well-lg">
											<h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> The Hipster</h4>
											<ul class="media-date text-uppercase reviews list-inline">
											<li class="dd">22</li>
											<li class="mm">09</li>
											<li class="aaaa">2014</li>
											</ul>
											<p class="media-comment">
											Nice job Maria.
											</p>
											<a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
										</div>              
									</div>
								</li>
								<li class="media media-replied" id="replied">
									<a class="pull-left" href="#">
										<img class="media-object img-circle" src="https://pbs.twimg.com/profile_images/442656111636668417/Q_9oP8iZ.jpeg" alt="profile">
									</a>
									<div class="media-body">
										<div class="well well-lg">
											<h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> Mary</h4></h4>
											<ul class="media-date text-uppercase reviews list-inline">
											<li class="dd">22</li>
											<li class="mm">09</li>
											<li class="aaaa">2014</li>
											</ul>
											<p class="media-comment">
											Thank you Guys!
											</p>
											<a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
										</div>              
									</div>
								</li>
							</ul>  
						</div>
						</li>          
						<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kurafire/128.jpg" alt="profile">
						</a>
						<div class="media-body">
							<div class="well well-lg">
								<h4 class="media-heading text-uppercase reviews">Nico</h4>
								<ul class="media-date text-uppercase reviews list-inline">
								<li class="dd">22</li>
								<li class="mm">09</li>
								<li class="aaaa">2014</li>
								</ul>
								<p class="media-comment">
								I'm looking for that. Thanks!
								</p>
								<div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item" src="//www.youtube.com/embed/80lNjkcp6gI" allowfullscreen></iframe>
								</div>
								<a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
							</div>              
						</div>
						</li>
						<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/lady_katherine/128.jpg" alt="profile">
						</a>
						<div class="media-body">
							<div class="well well-lg">
								<h4 class="media-heading text-uppercase reviews">Kriztine</h4>
								<ul class="media-date text-uppercase reviews list-inline">
								<li class="dd">22</li>
								<li class="mm">09</li>
								<li class="aaaa">2014</li>
								</ul>
								<p class="media-comment">
								Yehhhh... Thanks for sharing.
								</p>
								<a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
								<a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyFour"><span class="glyphicon glyphicon-comment"></span> 1 comment</a>
							</div>              
						</div>
						<div class="collapse" id="replyFour">
							<ul class="media-list">
								<li class="media media-replied">
									<a class="pull-left" href="#">
										<img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/jackiesaik/128.jpg" alt="profile">
									</a>
									<div class="media-body">
										<div class="well well-lg">
											<h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> Lizz</h4>
											<ul class="media-date text-uppercase reviews list-inline">
											<li class="dd">22</li>
											<li class="mm">09</li>
											<li class="aaaa">2014</li>
											</ul>
											<p class="media-comment">
											Classy!
											</p>
											<a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
										</div>              
									</div>
								</li>
							</ul>  
						</div>
						</li>
					</ul> 
				</div>
				<div class="tab-pane" id="add-comment-disabled">
					<div class="alert alert-info alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>                        
						</button>
						<strong>Hey!</strong> If you already have an account <a href="#" class="alert-link">Login</a> now to make the comments you want. If you do not have an account yet you're welcome to <a href="#" class="alert-link"> create an account.</a>
					</div>
					<form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> 
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">Comment</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="addComment" id="addComment" rows="5" disabled></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="uploadMedia" class="col-sm-2 control-label">Upload media</label>
							<div class="col-sm-10">                    
								<div class="input-group">
									<div class="input-group-addon">http://</div>
									<input type="text" class="form-control" name="uploadMedia" id="uploadMedia" disabled>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">                    
								<button class="btn btn-success btn-circle text-uppercase disabled" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
							</div>
						</div>            
					</form>
				</div>
			
			</div>
		</div>
	</div>
	</div>


							  

						
	

<!-- comments -->
						
					
						
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
@section('footer')
<p>&copy; 2019 | Framework Programming Poltek Tegal </p>
@endsection
