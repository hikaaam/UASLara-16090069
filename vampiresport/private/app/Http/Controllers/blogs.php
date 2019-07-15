<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class blogs extends Controller
{
    public function view(Request $request)
    {
        return view('createblog');
    }

}
