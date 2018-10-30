<?php

namespace App\Model\Faculty;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Main extends Model
{
    //use SoftDeletes;
    protected $table = 'faculties';
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
