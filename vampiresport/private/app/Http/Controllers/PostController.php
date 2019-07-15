<?php

namespace App\Http\Controllers;

use App\post;
use App\logs;
use App\cat;
use Illuminate\Http\Request;

class PostController extends Controller
{
            /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $post = post::orderBy('id','desc')->where('deleted','=',0)->paginate(3);
      return view('backend.gallery',compact('post'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.blank');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'judul' => 'required|min:5|max:90',
        //     'isi' => 'required',
        //     'category' => 'required',
        //     'preview' => 'required|min:151',
        //     'foto' => 'required|mimes:jpeg,jpg,png',
        //     'sampul' => 'required|mimes:jpeg,jpg,png'
        // ]);
        $judul = $request->judul;
        $datlog = ['isi' => 'You Just Created '.$judul.' Created' ];
        logs::create($datlog);

        $uploadedFile = $request->file('foto');
        $imgName = $uploadedFile->getClientOriginalName();
        $uploadedFile->move(base_path('images/artikel'), $imgName);

        $uploadedFile2 = $request->file('sampul');
        $imgName2 = $uploadedFile2->getClientOriginalName();
        $uploadedFile2->move(base_path('images/artikel'), $imgName2);
     
        $cat =   cat::select('postcat')->where('sub_kategori','=',$request->category)->get();
            foreach($cat as $i){
                $ids = $i->postcat;
            }
           
        $data = [
            'judul' => $request->judul,
            'kategori' => $request->category,
            'idcat' => $ids,
            'foto'  => $imgName,
            'sampul' => $imgName2,
            'isi' => $request->editor1,              
            'preview' => $request->preview 
        ];
         
        
       $article = post::create($data);
        if ($article)
            return redirect()->back()->withSuccess('Sukses tambah data');
        
        return redirect()->back()->withError('Gagal tambah data');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\post  $post
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $logz = post::find($id);
        
        $judul = $logz->judul;
        $datlog = ['isi' => 'You Just Deleted '.$judul.' Article' ];
        logs::create($datlog);

       $article = post::find($id)->update(['deleted'=>1]);
        if ($article)
            return redirect()->back()->withSuccess('Sukses hapus data');
        
        return redirect()->back()->withError('Gagal hapus data');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $edit = post::find($id);

        return view('backend.updatepost', compact('edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $judul = $request->judul;
        $datlog = ['isi' => 'You Just Updated '.$judul.' Article' ];
        logs::create($datlog);


        $test = post::find($id);
        $imgName = $test->foto;
        $imgName2 = $test->sampul;
        
        
        if($request->hasFile('foto'))
        {
        $uploadedFile = $request->file('foto');
        $imgName = $uploadedFile->getClientOriginalName();
        $uploadedFile->move(base_path('images/artikel'), $imgName);
        }
        if($request->hasFile('sampul'))
        {
        $uploadedFile2 = $request->file('sampul');
        $imgName2 = $uploadedFile2->getClientOriginalName();
        $uploadedFile2->move( base_path('images/artikel'), $imgName2);
        }

        $cat =   cat::select('postcat')->where('sub_kategori','=',$request->category)->get();
            foreach($cat as $i){
                $ids = $i->postcat;
            }
        // $data = [
        //     'judul' => $request->judul,
        //     'kategori' => $request->category,
        //     'idcat' => $ids,
        //     'foto'  => $imgName,
        //     'sampul' => $imgName2,
        //     'isi' => $request->editor1,              
        //     'preview' => $request->preview 
        // ];

         
        
       $article = post::find($id)->update(['judul'=>$request->judul,'kategori'=>$request->category,
       'idcat'=>$ids,'foto'=>$imgName,'sampul'=>$imgName2,'isi'=>$request->editor1,'preview'=>$request->preview]);
        if ($article)
            return redirect()->back()->withSuccess('Sukses tambah data');
        
        return redirect()->back()->withError('Gagal tambah data');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(post $post)
    {
        //
    }
}
