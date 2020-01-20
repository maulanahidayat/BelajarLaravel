<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PDF;

class PegawaiControllerCrud extends Controller
{
    //
    public function index(){
        //mengambil data dari tabel pegawai (semua)
       // $pegawai=DB::table('pegawai')->get();

    	//ambil pegawai dibatasi 10 row data
    	$pegawai=DB::table('pegawai')->paginate(10);
        //kirim data pegawai ke view index
        return view('index',['pegawai'=>$pegawai]);
    }
    public function tambah(){
        //memanggil view tambah
        return view('tambah');
    }
    public function store(Request $request)
{
	// insert data ke table pegawai
	DB::table('pegawai')->insert([
		'pegawai_nama' => $request->nama,
		'pegawai_jabatan' => $request->jabatan,
		'pegawai_umur' => $request->umur,
		'pegawai_alamat' => $request->alamat
	]);
	// alihkan halaman ke halaman pegawai
	return redirect('/pegawaicrud');
 
}
//method edit pegawai
public function edit($id){
//ambil data pegawai berdasarkan id yang dipilih
$pegawai=DB::table('pegawai')->where('pegawai_id',$id)->get();
//passing data pegawai yang didapat ke view edit.blade.php
return view('edit',['pegawai'=>$pegawai]);
}
// update data pegawai
public function update(Request $request)
{
	// update data pegawai
	DB::table('pegawai')->where('pegawai_id',$request->id)->update([
		'pegawai_nama' => $request->nama,
		'pegawai_jabatan' => $request->jabatan,
		'pegawai_umur' => $request->umur,
		'pegawai_alamat' => $request->alamat
	]);
	// alihkan halaman ke halaman pegawai
	return redirect('/pegawaicrud');
}

//hapus data pegawai
public function hapus($id){
	//menghapus data pegawai
	DB::table('pegawai')->where('pegawai_id',$id)->delete();
	//alihkan halaman
	return redirect('/pegawaicrud');
}
//halaman cari
public function cari(Request $request){
	//tangkap data pencarian
	$cari=$request->cari;

	//ambil data dari tabel pegawai
	$pegawai=DB::table('pegawai')->where('pegawai_nama','like',"%".$cari."%")->paginate();

	//kirim data pegwai ke view index
	return view('index',['pegawai'=>$pegawai]);
}

}
