<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('halo', function () {
    return "halo, selamat datang di tutorial laravel";
});
Route::get('blog', function () {
    return view('blog');
});
Route::get('dosen','DosenController@index');
Route::get('/pegawai/{nama}','PegawaiController@index');

Route::get('/formulir','PegawaiController@formulir');
Route::post('/formulir/proses','PegawaiController@proses');


//route blog
Route::get('/blog','BlogController@home');
Route::get('/blog/tentang','BlogController@tentang');
Route::get('/blog/kontak','BlogController@kontak');

//route crud
Route::get('/pegawaicrud','PegawaiControllerCrud@index');
Route::get('/pegawaicrud/tambah','PegawaiControllerCrud@tambah');
Route::post('/pegawaicrud/store','PegawaiControllerCrud@store');
//edit
Route::get('/pegawaicrud/edit/{id}','PegawaiControllerCrud@edit');
Route::post('/pegawaicrud/update','PegawaiControllerCrud@update');
//hapus
Route::get('/pegawaicrud/hapus/{id}','PegawaiControllerCrud@hapus');

//cari
Route::get('/pegawaicrud/cari','PegawaiControllerCrud@cari');


//menampilkan dengan metode eloquent laravel
Route::get('/',function(){
	return view('welcome');
});

//tampil utama
Route::get('/karyawan','KaryawanController@index');
//route dompdf cetak karyawan
Route::get('/karyawan/cetak_pdf','KaryawanController@cetak_pdf');
//tambah data
Route::get('/karyawan/tambah','KaryawanController@tambah');
//proses tambah
Route::post('/karyawan/store','KaryawanController@store');
//edit dan proses update
Route::get('/karyawan/edit/{id}','KaryawanController@edit');
Route::put('/karyawan/update/{id}','KaryawanController@update');
//hapus data
Route::get('/karyawan/hapus/{id}','KaryawanController@delete');

//TABEL GURU
//tampil
Route::get('/guru','GuruController@index');
//hapus
Route::get('/guru/hapus/{id}','GuruController@hapus');
//trash
Route::get('/guru/trash','GuruController@trash');
//restore
Route::get('/guru/kembalikan/{id}','GuruController@kembalikan');

//kembalikan semua
Route::get('/guru/kembalikan_semua','GuruController@kembalikan_semua');
//hapus permanen
Route::get('/guru/hapus_permanen/{id}','GuruController@hapus_permanen');

//haus permanen semua
Route::get('/guru/hapus_permanen_semua','GuruController@hapus_permanen_semua');

//relasi one to one eloquent
//pengguna
Route::get('/pengguna','PenggunaController@index');

//relasi one to many eloquent
//article
Route::get('/article','ArticleController@index');

//relasi many to many
Route::get('/anggota','AnggotaController@index');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//encrypt dan decrypt
Route::get('/enkripsi', 'encdecController@enkripsi');

//route encrypt dan decrypt
Route::get('/data/', 'encdecController@data');
Route::get('/data/{data_rahasia}', 'encdecController@data_proses');

//hasing pada laravel
Route::get('/hash', 'hashingController@hash');

//upload gambar laravel
Route::get('/upload', 'UploadController@upload');
Route::post('/upload/proses', 'UploadController@proses_upload');
//hapus gambar
Route::get('/upload/hapus/{id}','UploadController@hapus');

//route session
Route::get('/session/tampil','TesController@TampilkanSession');
Route::get('/session/buat','TesController@BuatSession');
Route::get('/session/hapus','TesController@hapusSession');

//route notifikasi (flash)
Route::get('/pesan','NotifController@index');
Route::get('/pesan/sukses','NotifController@sukses');
Route::get('/pesan/peringatan','NotifController@peringatan');
Route::get('/pesan/gagal','NotifController@gagal');
//tes error handling
Route::get('/teserror','teserror@index');

//route pesan error laravel
Route::get('/ngoding/{nama}','ngodingController@index');

//route siswa excel
Route::get('/siswa','SiswaController@index');
Route::get('/siswa/export_excel','SiswaController@export_excel');
//method siswa import
Route::post('/siswa/import_excel','SiswaController@import_excel');   

//multi lang
Route::get('/form',function(){
    return view('biodatalang');
});
//pilih bahasa
Route::get('/{locale}/form',function($locale){
    App::setLocale($locale);
    return view('biodatalang'); 
});
//action route
Route::get('halo/{nama}','HaloController@halo');
Route::get('halo','HaloController@panggil');