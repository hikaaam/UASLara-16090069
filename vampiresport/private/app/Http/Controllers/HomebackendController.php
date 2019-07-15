<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\home;
use App\logs;
class HomebackendController extends Controller
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
        $data = home::find(1);

        return view('backend.home',compact('data'));

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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        $datlog = ['isi' => 'You Just Update The Home View '];
        logs::create($datlog);
        $homes = home::find(1);
        $logo = $homes->logo;
        $slider1 = $homes->slider1;
        $slider2 = $homes->slider2;
        $slider3 = $homes->slider3;

        if($request->has('logo')){ 
            $uploadedFile = $request->file('logo');
            $logo = $uploadedFile->getClientOriginalName();
            $uploadedFile->move(base_path('images'), $logo);
            }
            if($request->has('slider1')){ 
                $uploadedFile1 = $request->file('slider1');
                $slider1 = $uploadedFile1->getClientOriginalName();
                $uploadedFile1->move(base_path('images'), $slider1);
                }
                if($request->has('slider2')){ 
                    $uploadedFile2 = $request->file('slider2');
                    $slider2 = $uploadedFile2->getClientOriginalName();
                    $uploadedFile2->move(base_path('images'), $slider2);
                    }
                    if($request->has('slider3')){ 
                        $uploadedFile3 = $request->file('slider3');
                        $slider3 = $uploadedFile3->getClientOriginalName();
                        $uploadedFile3->move(base_path('images'), $slider3);
                        }
        $data = ['logo'=>$logo,
                'slider1'=>$slider1,
            'slider2'=>$slider2,
        'slider3'=>$slider3,
    'footer'=>$request->footer,
'paginate'=>$request->paginate,
'mostread'=>$request->mostread];

$home = home::whereId($id)->update($data);
if ($home)
return redirect()->back()->withSuccess('Sukses tambah data');

return redirect()->back()->withError('Gagal tambah data');
    

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
