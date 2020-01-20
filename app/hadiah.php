<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class hadiah extends Model
{
    //
    protected $table="hadiah";
    public function anggota(){
    	return $this->belongsToMany('App\Anggota');
    }
}
