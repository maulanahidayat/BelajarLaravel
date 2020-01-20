<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//panggil facades/crypt
use Illuminate\Support\Facades\Crypt;
class encdecController extends Controller
{
    //
    public function enkripsi(){
    	$encrypted=Crypt::encryptString("Belajar laravel di malasngoding");
    	$decrypted=Crypt::decryptString($encrypted);

    	echo "Hasil Enkripsi : ". $encrypted;
    	echo "<br/>";
    	echo "<br/>";
    	echo "Hasil dekripsi :". $decrypted;
    }

    //enkripsi dan dekripsi melalui route url

    public function data(){
    	$parameter=[
    		'nama'=>'Maulana Hidayat',
    		'pekerjaan'=>'Programmer',
    	];
    	$enkripsi=Crypt::encrypt($parameter);
    	echo "<a href='/data/". $enkripsi."'>Klik</a>";
    }

    public function data_proses($data){
    	$data=Crypt::decrypt($data);

    	echo "Nama : ".$data['nama'];
    	echo "<br/>";
    	echo "Pekerjaan : ".$data['pekerjaan'];
    	
    }
}
