<?php

namespace App\Model\AcademicProgram;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Major extends Model
{
    //use SoftDeletes;
    protected $table = 'academies_majors';
    //protected $dates = ['deleted_at'];

    public function academy(){
        return $this->belongsTo('App\Model\AcademicProgram\AcademicProgram','academy_id');
    }
    public function major(){
        return $this->belongsTo('App\Model\Major\Major','major_id');
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
