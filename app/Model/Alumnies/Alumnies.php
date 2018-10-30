<?php

namespace App\Model\Alumnies;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Alumnies extends Model
{
    //use SoftDeletes;
    protected $table = 'alumnies';
    //protected $dates = ['deleted_at'];

    public function creator(){
        return $this->belongsTo('App\Model\User\User','creator_id');
    }
    public function updater(){
        return $this->belongsTo('App\Model\User\User','updater_id');
    }
    public function deleter(){
        return $this->belongsTo('App\Model\User\User','deleter_id');
    }

}
