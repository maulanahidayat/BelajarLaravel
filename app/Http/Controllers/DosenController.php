<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DosenController extends Controller
{
public function index(){
	$nama="maulana hidayat";
	$pelajaran= ["Algoritma & pemrograman","Kalkulus","pemrograman web"];
	return view('biodata',['nama'=>$nama, 'matkul'=>$pelajaran]);

}    //
}
