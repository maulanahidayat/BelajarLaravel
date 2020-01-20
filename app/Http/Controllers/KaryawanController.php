<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PDF;
    //pangggil model karyawan
  use App\Karyawan;
class KaryawanController extends Controller
{
	public function index()
    {
    	// mengambil data karyawan
    	$karyawan = Karyawan::paginate(10);
 
    	// mengirim data karyawan ke view karyawan
    	return view('karyawan', ['karyawan' => $karyawan]);
    }
    public function tambah(){
    	return view('karyawan_tambah');
    }
    public function store(Request $request){
    $this->validate($request,
    	['nama_karyawan'=> 'required',
    'alamat_karyawan'=>'required'
]);

    Karyawan::create([
    	'nama_karyawan'=>$request->nama_karyawan,
    	'alamat_karyawan'=>$request->alamat_karyawan
    ]);
    return redirect('/karyawan');
    }
 public function edit($id)
{
   $karyawan = Karyawan::find($id);
   return view('karyawan_edit', ['karyawan' => $karyawan]);
}

public function update($id,Request $request){
	$this->validate($request,
		['nama_karyawan'=>'required',
		'alamat_karyawan'=>'required'
	]);

	$karyawan=Karyawan::find($id);
	$karyawan->nama_karyawan=$request->nama_karyawan;
	$karyawan->alamat_karyawan=$request->alamat_karyawan;
	$karyawan->save();
	return redirect('/karyawan');
}
public function delete($id){
	$karyawan=karyawan::find($id);
	$karyawan->delete();
	return redirect('/karyawan');
}
//halaman cetak dengan dompdf
public function cetak_pdf()
{
	$karyawan=Karyawan::all();
	$pdf=PDF::loadview('karyawan_pdf',['karyawan'=>$karyawan]);
	return $pdf->download('laporan-karyawan-pdf');
    	}
}