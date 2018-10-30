<?php

namespace App\Model\Faculty;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class News extends Model
{
    //use SoftDeletes;
    protected $table = 'faculties_news';
    //protected $dates = ['deleted_at'];

    public function faculty(){
        return $this->belongsTo('App\Model\Faculty\Faculty','faculty_id');
    }
    public function news(){
        return $this->belongsTo('App\Model\News\News','news_id');
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
