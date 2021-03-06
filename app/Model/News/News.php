<?php

namespace App\Model\News;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class News extends Model
{
    //use SoftDeletes;
    protected $table = 'news';
    //protected $dates = ['deleted_at'];

    public function Faculty(){
        return $this->belongsToMany('App\Model\Faculty\Faculty','faculties_news');
    }

    public function newsFaculties(){
        return $this->hasMany('App\Model\Faculty\News','news_id');
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
