<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;

class BlogController extends Controller
{
    public function index()
    {
        $data['blogs'] = Blog::all();
        return view('blog.index')->with($data);
    }

    public function create()
    {
        return view('blog.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'judul' => 'required|min:5|max:50',
            'isiberita' => 'required',
            'foto' => 'required|mimes:jpeg,jpg,png'
        ]);

        $uploadedFile = $request->file('foto');
        $imgName = time() . str_random(22) . '.' . $uploadedFile->getClientOriginalExtension();
        $uploadedFile->move(public_path('images/blog'), $imgName);

        $data = [
            'judul' => $request->judul,
            'isi_berita' => $request->isiberita,
            'foto'  => $imgName
        ];

        $blog = Blog::create($data);
        if ($blog)
            return redirect()->route('blog.create')->withSuccess('Sukses tambah data');
        
        return redirect()->route('blog.create')->withError('Gagal tambah data');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
