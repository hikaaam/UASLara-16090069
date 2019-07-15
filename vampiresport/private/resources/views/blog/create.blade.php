@extends('layouts.app')


<title>Create blog</title>
<script src="https://cdn.ckeditor.com/4.11.4/full/ckeditor.js"></script>

@section('content')



     <!--main content start-->
     <section id="main-content">


        <div class="container">
            <section class="wrapper site-min-height">
                @if (session('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                @endif

                @if (session('error'))
                    <div class="alert alert-success">
                        {{ session('error') }}
                    </div>
                @endif
            <div>
                <h4><i class="fa fa-angle-right"></i> Judul Article</h4>
                <div class="row mt">
                    <div class="col-sm-6">
                        {!! Form::open(array('url' =>  url('blog', [])   ,'method' => 'POST', 'enctype'=>'multipart/form-data')) !!}


                            {{Form::text("judul",
                                old("judul") ? old("judul") : (!empty($user) ? $user->judul : null),
                                [
                                    "class" => "form-control",
                                    "placeholder" => "judul",
                                ])
                            }}

                            @if ($errors->has('judul'))
                                <p class="text-danger">{{ $errors->first('judul') }}</p>
                            @endif
                    </div>
                </div>
            </div>
            <br>
            <div>
                <h4><i class="fa fa-angle-right"></i> Gambar Sampul</h4>
                <div class="row mt">
                    <div class="col-sm-6">
                           {{Form::file("foto",
                                [
                                    "class" => "btn btn-success"
                                ])
                            }}

                            @if ($errors->has('foto'))
                                <p class="text-danger">{{ $errors->first('foto') }}</p>
                            @endif
                    </div>
                </div>
            </div>

            <br>

            <div>
                <h4><i class="fa fa-angle-right"></i> Isi Article</h4>
                <div class="row mt">
                    <div class="col-lg-12">

                            {{Form::textarea("isiberita", old("isiberita") ? old("isiberita") : (!empty($user) ? $user->editor1 : null),
                                [

                                ])
                            }}
                            <script>
                                    CKEDITOR.replace( 'isiberita' );
                            </script>

                            @if ($errors->has('isiberita'))
                                <p class="text-danger">{{ $errors->first('foto') }}</p>
                            @endif
                    </div>
                </div>
            </div>
            <br>
            <div class="row mt">
                <div class="col-lg-12">
                        {{Form::submit('Submit Form',
                        [
                            "class" => "btn btn-success"
                        ])
                    }}
                </div>
            </div>
            {!! Form::close() !!}
          </section><!--/wrapper -->
        </section><!-- /MAIN CONTENT -->
    </div>

@endsection
