<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TesController extends Controller
{
    //tampilkan isi session
    public function TampilkanSession(Request $request){
        if($request->session()->has('nama')){
            echo $request->session()->get('nama');
        }else{
            echo 'tidak ada data dalam session.';
        }
    }

    //membuat session
    public function BuatSession(Request $request){
        $request->session()->put('nama','Maulana Hidayat');
        echo 'data telah ditambahkan ke session';
    }
    //hapus session
    public function hapusSession(Request $request){
        $request->session()->forget('nama');
        echo "data telah di hapus dari session";
    }
}
