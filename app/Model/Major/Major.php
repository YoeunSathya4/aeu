<?php

namespace App\Model\Major;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Major extends Model
{
    //use SoftDeletes;
    protected $table = 'majors';
    //protected $dates = ['deleted_at'];

    public function faculty(){
        return $this->belongsTo('App\Model\Faculty\Main','academic_programs');
    }

    public function Academies(){
        return $this->belongsToMany('App\Model\AcademicProgram\AcademicProgram','page_slide');
    }

    public function academicMajors(){
        return $this->hasMany('App\Model\AcademicProgram\Major','major_id');
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
