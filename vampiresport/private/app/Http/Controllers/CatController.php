<?php

namespace App\Http\Controllers;

use App\cat;
use App\logs;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class CatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return abort(404);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\cat  $cat
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $judul = $id;
        $datlog = ['isi' => 'someone just searched on '.$judul.' Category' ];
        logs::create($datlog);
        $data = DB::table('articles')->join('categories','articles.kategori','=',
    'categories.sub_kategori')->select('articles.*')->where('categories.nama_kategori',
'like','%'.$id.'%')->orWhere('articles.kategori','like','%'.$id.'%')->distinct()->paginate(4);
 $p = $id;
 return view('cat',compact('data','p'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\cat  $cat
     * @return \Illuminate\Http\Response
     */
    public function edit(cat $cat)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\cat  $cat
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, cat $cat)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\cat  $cat
     * @return \Illuminate\Http\Response
     */
    public function destroy(cat $cat)
    {
        //
    }
}
