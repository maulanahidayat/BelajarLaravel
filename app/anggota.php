<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class anggota extends Model
{
    //
    protected $table="anggota";
    public function hadiah(){
    	return $this->belongsToMany('App\Hadiah');
    }
}
