<?php

namespace App\Http\Controllers\CP\Major;

use Auth;
use Session;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\CamCyber\FileUploadController as FileUpload;
use App\Http\Controllers\CamCyber\FunctionController;
use App\Http\Controllers\CamCyber\GenerateSlugController as GenerateSlug;

use App\Model\Major\Major as Model;
use App\Model\Faculty\Main as Faculty;
use App\Model\AcademicProgram\AcademicProgram as AcademicProgram;
use App\Model\User\Tracking;
use Image;


class MajorController extends Controller
{
    protected $route; 
    public function __construct(){
        $this->route = "cp.major";
    }
    function validObj($id=0){
        $data = Model::find($id);
        if(empty($data)){
           echo "Invalide Object"; die;
        }
    }

    public function index(){
        $faculties = Faculty::get();
        $data = Model::select('*');
        $limit      =   intval(isset($_GET['limit'])?$_GET['limit']:10); 
        $key        =   isset($_GET['key'])?$_GET['key']:"";
        $faculty    =   intval(isset($_GET['faculty'])?$_GET['faculty']:0); 
        $from=isset($_GET['from'])?$_GET['from']:"";
        $till=isset($_GET['till'])?$_GET['till']:"";
        $appends=array('limit'=>$limit);
        if( $key != "" ){
            $data = $data->where('en_title', 'like', '%'.$key.'%')->orWhere('kh_title', 'like', '%'.$key.'%');
            $appends['key'] = $key;
        }

        //=====================>>> Faculty
        if( $faculty > 0 ){
            $data = $data->where('faculty_id', $faculty);
            $appends['faculty'] = $faculty;
            
        }

        if(FunctionController::isValidDate($from)){
            if(FunctionController::isValidDate($till)){
                $appends['from'] = $from;
                $appends['till'] = $till;

                $from .=" 00:00:00";
                $till .=" 23:59:59";

                $data = $data->whereBetween('created_at', [$from, $till]);
            }
        }
        if(Auth::user()->position_id == 1){
            $data= $data->orderBy('created_at', 'DESC')->paginate($limit);
        }else{
            $data= $data->orderBy('created_at', 'DESC')->where('is_deleted',0)->paginate($limit);
        }
        
        return view($this->route.'.index', ['route'=>$this->route, 'data'=>$data,'appends'=>$appends,'faculties'=>$faculties]);
    }
   
    public function create(){
        $faculties = Faculty::get();
        return view($this->route.'.create' , ['route'=>$this->route, 'faculties'=>$faculties]);
    }
    public function store(Request $request) {
        $user_id    = Auth::id();
        $now        = date('Y-m-d H:i:s');
        //dd($request->all());
        $data = array(
                    'faculty_id'                =>  $request->input('faculty_id'),
                    'kh_title'                  =>  $request->input('kh_title'), 
                    'en_title'                  =>  $request->input('en_title'),
                    'slug'                      =>  GenerateSlug::generateSlug('majors', $request->input('en_title')),
                    'kh_introduction'           =>  $request->input('kh_introduction'), 
                    'en_introduction'           =>  $request->input('en_introduction'),
                    'kh_courses'                =>  $request->input('kh_courses'), 
                    'en_courses'                =>  $request->input('en_courses'),
                    'kh_courses_bachelor'       =>  $request->input('kh_courses_bachelor'), 
                    'en_courses_bachelor'       =>  $request->input('en_courses_bachelor'),
                    'kh_courses_associate'      =>  $request->input('kh_courses_associate'), 
                    'en_courses_associate'      =>  $request->input('en_courses_associate'),
                    'is_deleted'                =>  0,
                    'creator_id'                =>  $user_id,
                    'created_at'                =>  $now
                );
        
        Session::flash('invalidData', $request->all() );
        Validator::make(
            $request->all(), 
                        [
                           'faculty_id' => 'required|exists:faculties,id',
                           'kh_title'       => 'required',
                           'en_title'       => 'required',
                        ]);

        if($request->input('status')=="")
        {
            $data['is_published']=0;
        }else{
            $data['is_published']=1;
        }
        

		$id=Model::insertGetId($data);
        $tracking_data = Model::find($id);
        $tracking = new Tracking();
        $tracking->user_id = $user_id;
        $tracking->created_at = $now;
        $tracking->description = 'Create new faculty name:'.$tracking_data->en_title;
        $tracking->save();
        Session::flash('msg', 'Data has been Created!');
		return redirect(route($this->route.'.edit', $id));
    }

    public function edit($id = 0){
        $faculties = Faculty::get();
        $this->validObj($id);
        $data = Model::find($id);
        return view($this->route.'.edit', ['route'=>$this->route, 'id'=>$id, 'data'=>$data, 'faculties'=>$faculties]);
    }

    public function update(Request $request){
        $id = $request->input('id');
        $user_id    = Auth::id();
        $now        = date('Y-m-d H:i:s');

        $data = array(
                    'faculty_id'                =>  $request->input('faculty_id'),
                    'kh_title'                  =>  $request->input('kh_title'), 
                    'en_title'                  =>  $request->input('en_title'),
                    'slug'                      =>  GenerateSlug::generateSlug('faculties', $request->input('en_title')),
                    'kh_introduction'           =>  $request->input('kh_introduction'), 
                    'en_introduction'           =>  $request->input('en_introduction'),
                    'kh_courses'                =>  $request->input('kh_courses'), 
                    'en_courses'                =>  $request->input('en_courses'),
                    'kh_courses_bachelor'       =>  $request->input('kh_courses_bachelor'), 
                    'en_courses_bachelor'       =>  $request->input('en_courses_bachelor'),
                    'kh_courses_associate'      =>  $request->input('kh_courses_associate'), 
                    'en_courses_associate'      =>  $request->input('en_courses_associate'),
                    'is_deleted' =>  0,
                    'updater_id' => $user_id,
                    'updated_at' => $now
                );
        

        Validator::make(
            $request->all(),  
			        	[ 
                           'faculty_id' => 'required|exists:faculties,id',
                           'kh_title' => 'required',
                           'en_title' => 'required',
						]);
        if($request->input('status')=="")
        {
            $data['is_published']=0;
        }else{
            $data['is_published']=1;
        }

        Model::where('id', $id)->update($data);
        $tracking_data     = Model::find($id);
        $tracking          = new Tracking();
        $tracking->user_id = $user_id;
        $tracking->created_at = $now;
        $tracking->description = 'Update major id:'.$id.'and name:'.$tracking_data->en_title;
        $tracking->save();
        Session::flash('msg', 'Data has been updated!' );
        return redirect()->back();
	}

    public function trash($id){
        $user_id  = Auth::id();
        $now      = date('Y-m-d H:i:s');
        Model::where('id', $id)->update(['is_deleted'=>1,'deleter_id' => Auth::id(), 'deleted_at'=>$now]);
        //Model::find($id)->delete();
        $tracking_data = Model::find($id);
        $tracking = new Tracking();
        $tracking->user_id = $user_id;
        $tracking->created_at = $now;
        $tracking->description = 'Delete major name:'.$tracking_data->en_title;
        $tracking->save();
        Session::flash('msg', 'Data has been delete!' );
        return response()->json([
            'status' => 'success',
            'msg' => 'Major has been deleted'
        ]);
    }

    public function delete($id){
        $now      = date('Y-m-d H:i:s');
        //Model::where('id', $id)->update(['is_deleted'=>1,'deleter_id' => Auth::id(), 'deleted_at'=>$now]);
        Model::find($id)->delete();
        Session::flash('msg', 'Data has been delete!' );
        return response()->json([
            'status' => 'success',
            'msg' => 'Major has been deleted'
        ]);
    }

    function updateStatus(Request $request){
      $user_id  = Auth::id();
      $now      = date('Y-m-d H:i:s');
      $id   = $request->input('id');
      $data = array('is_published' => $request->input('active'));
      Model::where('id', $id)->update($data);
      $tracking_data = Model::find($id);
      if($request->input('active') == 1){
        $tracking = new Tracking();
        $tracking->user_id = $user_id;
        $tracking->created_at = $now;
        $tracking->description = 'Update major publish name:'.$tracking_data->en_title;
        $tracking->save();
    }else{
        $tracking = new Tracking();
        $tracking->user_id = $user_id;
        $tracking->created_at = $now;
        $tracking->description = 'Update major unpublish name:'.$tracking_data->en_title;
        $tracking->save();
    }
      return response()->json([
          'status' => 'success',
          'msg' => 'Published status has been updated.'
      ]);
    }

    function updateDeletedStatus(Request $request){
      $id   = $request->input('id');
      $data = array('is_deleted' => $request->input('active'));
      Model::where('id', $id)->update($data);
      return response()->json([
          'status' => 'success',
          'msg' => 'Status has been updated.'
      ]);
    }



    public function academy($id=0){
        $academies = AcademicProgram::get();
        $data = Model::find($id)->academicMajors;
        return view($this->route.'.academy', ['route'=>$this->route, 'id'=>$id, 'data'=>$data, 'academies'=>$academies]);
    }
    public function checkAcademies($id=0){
        $major_id        = $_GET['major_id'];
        $academy_id      = $_GET['academy_id'];
        $now             = date('Y-m-d H:i:s');

        $major = Model::find($major_id);
        $dataPermision = $major->academicMajors()->select('academy_id')->get(); 

        $is_permision_existed = 0;
        foreach($dataPermision as $row){
            if($row->academy_id == $academy_id){
                $is_permision_existed = 1;
            }
        }
       
        if($is_permision_existed == 1){
            $major->academicMajors()->where('academy_id', $academy_id)->delete();
            return response()->json([
                  'status' => 'success',
                  'msg' => 'Academy has been removed.'
            ]);
        }else{
            $data_permision=array(
                'major_id'   => $major_id,
                'academy_id' => $academy_id,
                'created_at' => $now, 
                'updated_at' => $now
                );
            $major->academicMajors()->insert($data_permision);
             return response()->json([
                  'status' => 'success',
                  'msg' => 'Academy has been added.'
              ]);
        }
    }

}
