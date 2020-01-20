<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ngodingController extends Controller
{
    //
    public function index($nama){
        if($nama== "malasngoding"){
            return abort(403,'anda tidak punya akses karena anda Malas Ngoding');

        }else if($nama=='lana'){
            return "halo,".$nama;
        }else{
            return abort(404);
        }
    }
}
