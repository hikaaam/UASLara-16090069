@extends('template')

@section('main')
<div id="about">
<h2>Profil</h2>
<img style="width:10%;height:10%;" src="{{ url('private/images/logo.png', []) }}" alt="">
<p>Nama : Ilyas Abdurahman Yusuf
</p>
<p>Kelas : 6C</p>
<p>Nim : 16090069</p>
</div>
@stop

@section('footer')
<div id="footer">
    <p>&copy; 2019 | Framework Programming Poltek Tegal</p>
</div>
@stop
