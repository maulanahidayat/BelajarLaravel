<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//panggil model pengguna
use App\Pengguna;
class PenggunaController extends Controller
{
    //
    public function index(){
        //ambil data pengguna
        $pengguna=Pengguna::all();
        //return data ke view
        return view('pengguna',['pengguna'=>$pengguna]);
    }
}
