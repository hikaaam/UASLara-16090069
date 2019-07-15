<?php

namespace App\Http\Controllers;

use App\categories;
use Illuminate\Http\Request;
use App\logs;

class CategoriesController extends Controller
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
        $post = categories::where('deleted','=',0)->get();
        return view('backend.categories',compact('post'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.createcat');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
     
        $judul = $request->Tags;
        $datlog = ['isi' => 'you just created new Category '.$judul ];
        logs::create($datlog);

        $postcat = categories::select('nama_kategori')->distinct()->get();
        $a = 1;
        
        foreach($postcat as $postc){
            
            $i[$postc->nama_kategori] = $a++ ;
        }
        if(empty($i[$request->Cat])){
            $b = 4;
        }
        else{
            $b = $i[$request->Cat];
        }
        
         
        $request->validate([
            'Cat' => 'required',
            'Tags' => 'required',
        ]);
 
        $data = [
            'nama_kategori' => $request->Cat,
            'sub_kategori' => $request->Tags,
            'postcat' => $b
        ];
         
        
       $article = categories::create($data);
        if ($article)
            return redirect()->back()->withSuccess('Sukses tambah data');
        
        return redirect()->back()->withError('Gagal tambah data');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\categories  $categories
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $logz = categories::find($id);

        $nama = $logz->sub_kategori;

        $judul = $nama;
        $datlog = ['isi' => 'you just deleted '.$judul.' category' ];
        logs::create($datlog);
        
       $article = categories::whereId($id)->update(['deleted'=>1]);
        if ($article)
            return redirect()->back()->withSuccess('Sukses hapus data');
        
        return redirect()->back()->withError('Gagal hapus data');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\categories  $categories
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = categories::find($id);
        return view('backend.editcat',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\categories  $categories
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $judul = $request->Tags;
        $datlog = ['isi' => 'you just Updated '.$judul.' Category ' ];
        logs::create($datlog);

        $postcat = categories::select('nama_kategori')->distinct()->get();
        $a = 1;
        
        foreach($postcat as $postc){
            
            $i[$postc->nama_kategori] = $a++ ;
        }
        if(empty($i[$request->Cat])){
            $b = 4;
        }
        else{
            $b = $i[$request->Cat];
        }

        $request->validate([
            'Cat' => 'required',
            'Tags' => 'required',
        ]);
 
         
        
       $article = categories::whereId($id)->update(['nama_kategori'=>$request->Cat,'sub_kategori'=>$request->Tags,'postcat'=>$b]);
        if ($article)
            return redirect()->back()->withSuccess('Sukses update data');
        
        return redirect()->back()->withError('Gagal update data');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\categories  $categories
     * @return \Illuminate\Http\Response
     */
    public function destroy(categories $categories)
    {
        //
    }
}
