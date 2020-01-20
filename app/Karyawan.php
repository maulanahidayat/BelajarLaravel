<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Karyawan extends Model
{
    //
    protected $table="karyawan";

    //untuk create dengan eloquent
    protected $fillable=['nama_karyawan','alamat_karyawan'];
}
	