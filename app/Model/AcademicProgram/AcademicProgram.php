<?php

namespace App\Model\AcademicProgram;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AcademicProgram extends Model
{
    //use SoftDeletes;
    protected $table = 'academic_programs';
    //protected $dates = ['deleted_at'];

    public function Mmajors(){
        return $this->hasMany('App\Model\AcademicProgram\Major','academy_id');
    }

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
