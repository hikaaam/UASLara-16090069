<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Support\Facades\Input;
use App\article;
use Illuminate\Support\Facades\Auth;

Route::get('/home', function () {
    return view('welcome');
});


Route::get('/header', function () {
    return view('header');
});


Route::get('/coba', function () {
    return view('coba');
});


Route::get('/beranda', function () {
    return view('pages/home');
});

Route::get('/about', function () {
    return view('pages/about');
});

Route::get('/post', function () {
    return view('post');
});
Route::get('/clear-cache', function () {
    Artisan::call('cache:clear');
    return "Cache is cleared";
});

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/admin-vg/galery', function () {
    return view('backend/gallery');
});

Route::get('/admin-vg/add-article', function () {
    return view('backend/blank');
});
Route::get('/admin-vg/chart', function () {
    return view('backend/chartjs');
});
Route::get('/admin-vg/lock', function () {
    return view('backend/lock_screen');
});

Route::get('/admin-vg/edit', function () {
    return view('backend/edit');
});
Route::get('/admin-vg-login', function () {
    return view('backend/login');
});
Route::get('/blog-create', function () {
    return view('createblog');
});
Route::get('/welvome', function () {
    return view('welcome');
});

// Route::get('blog-create', 'BlogsController@view');
// Route::post('blogcreate', 'BlogsController@kirim');
// Route::get('user', 'UserController@view');
// Route::post('kirim', 'UserController@kirim');

Route::any('/search',function(){
    $p = Input::get ( 'search' );
  //  $user = Home::paginate(3)->where('judul','LIKE','%'.$q.'%')->orWhere('kategori','LIKE','%'.$q.'%');
    $data = article::where(function($q) use ($p) {
        $q->where('judul','LIKE','%'.$p.'%')->orWhere('kategori','LIKE','%'.$p.'%');
})->where('deleted','=',0)->paginate(3);

return view('search',compact('data'))->with('p',$p);
// if(count($user) > 0)
    //     return view('frontend.search')->withDetails($user)->withQuery ( $p );
    // else return view ('frontend.search')->withMessage('No Details found. Try to search again !');
});
Route::resource('blog', 'BlogController');
Route::resource('admin-vg/post', 'PostController');
Route::resource('post', 'ArticleController');
Route::resource('admin-vg/cat','CategoriesController');
// Route::resource('admin-vg','HomeController');
Route::resource('cat','CatController');
Route::resource('/','HomeFrontendController');
Auth::routes();
Route::resource('admin-vg/home','HomebackendController');
Route::get('/home', 'HomeController@index')->name('home');
Route::resource('admin-vg','AdminController');
Route::get('logout',function(){
    Auth::logout();
    return redirect()->back();
});