@extends ($route.'.main')
@section ('section-title', 'Create New Major')
@section ('section-css')
	<link href="{{ asset ('public/cp/css/plugin/fileinput/fileinput.min.css') }}" media="all" rel="stylesheet" type="text/css"/>
    <link href="{{ asset ('public/cp/css/plugin/fileinput/theme.css') }}" media="all" rel="stylesheet" type="text/css"/>
	<!-- some CSS styling changes and overrides -->
	<style>
		.kv-avatar .file-preview-frame,.kv-avatar .file-preview-frame:hover {
		    margin: 0;
		    padding: 0;
		    border: none;
		    box-shadow: none;
		    text-align: center;
		}
		.kv-avatar .file-input {
		    display: table-cell;
		    max-width: 220px;
		}
	</style>
@endsection

@section ('imageuploadjs')
    <script type="text/javascript" src="{{ asset ('public/cp/js/plugin/fileinput/fileinput.min.js') }}" type="text/javascript"></script>
    <script type="text/javascript" src="{{ asset ('public/cp/js/plugin/fileinput/theme.js') }}" type="text/javascript"></script>
@endsection

@section ('section-js')
	
	
@endsection

@section ('section-content')
	<div class="container-fluid">
		@include('cp.layouts.error')

		@php ($en_title = "")
		@php ($kh_title = "")
		@php ($en_introduction = "")
		@php ($kh_introduction = "")
		@php ($en_courses = "")
		@php ($kh_courses = "")
		@php ($en_courses_bachelor = "")
		@php ($kh_courses_bachelor = "")
		@php ($en_courses_associate = "")
		@php ($kh_courses_associate = "")
       
       	@if (Session::has('invalidData'))
            @php ($invalidData = Session::get('invalidData'))
            @php ($en_title = $invalidData['en_title'])
            @php ($kh_title = $invalidData['kh_title'])
            @php ($en_introduction = $invalidData['en_introduction'])
            @php ($kh_introduction = $invalidData['kh_introduction'])
            @php ($en_courses = $invalidData['en_courses'])
            @php ($kh_courses = $invalidData['kh_courses'])
            @php ($en_courses_bachelor = $invalidData['en_courses_bachelor'])
            @php ($kh_courses_bachelor = $invalidData['kh_courses_bachelor'])
            @php ($en_courses_associate = $invalidData['en_courses_associate'])
            @php ($kh_courses_associate = $invalidData['kh_courses_associate'])
            
       	@endif
		<form id="form" action="{{ route($route.'.store') }}" name="form" method="POST"  enctype="multipart/form-data">
			{{ csrf_field() }}
			{{ method_field('PUT') }}

			<div class="form-group row">
				<label for="faculty_id" class="col-sm-2 form-control-label">Faculty</label>
				<div class="col-sm-10">
					<select id="faculty_id" name="faculty_id" class="select2 select2-hidden-accessible" class="form-control">
						<option value="0" >Select Your Faculty</option>	
						@foreach( $faculties as $row )
							<option value="{{ $row->id }}" >{{ $row->en_title }} </option>
						@endforeach
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="kh_title">Title (KH)</label>
				<div class="col-sm-10">
					<input 	id="kh_title"
							name="kh_title"
						   	value = "{{$kh_title}}"
						   	type="text"
						   	placeholder = "Enter Khmer title."
						   	class="form-control"
						   	data-validation="[L>=1, L<=200]"
							data-validation-message="$ must be between 6 and 18 characters. No special characters allowed." />
							
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="en_title">Title (EN)</label>
				<div class="col-sm-10">
					<input 	id="en_title"
							name="en_title"
						   	value = "{{$en_title}}"
						   	type="text"
						   	placeholder = "Enter English title."
						   	class="form-control"
						   	data-validation="[L>=1, L<=200]"
							data-validation-message="$ must be between 6 and 18 characters. No special characters allowed." />
							
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="kh_introduction">Introduction (KH)</label>
				<div class="col-sm-10">
					<div class="summernote-theme-1">
						<textarea id="kh_introduction" name="kh_introduction" class="form-control  summernote  ">{{$kh_introduction}} </textarea>
					</div>	
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="en_introduction">Introduction (EN)</label>
				<div class="col-sm-10">
					<div class="summernote-theme-1">
						<textarea id="en_introduction" name="en_introduction" class="form-control  summernote  "> {{$en_introduction}}</textarea>
					</div>	
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="kh_courses">Courses (KH)</label>
				<div class="col-sm-10">
					<div class="summernote-theme-1">
						<textarea id="kh_courses" name="kh_courses" class="form-control  summernote  ">{{$kh_courses}} </textarea>
					</div>	
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="en_courses">Courses (EN)</label>
				<div class="col-sm-10">
					<div class="summernote-theme-1">
						<textarea id="en_courses" name="en_courses" class="form-control  summernote  "> {{$en_courses}}</textarea>
					</div>	
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="kh_courses_bachelor">Courses Bachelor (KH)</label>
				<div class="col-sm-10">
					<div class="summernote-theme-1">
						<textarea id="kh_courses_bachelor" name="kh_courses_bachelor" class="form-control  summernote  ">{{$kh_courses_bachelor}} </textarea>
					</div>	
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="en_courses_bachelor">Courses Bachelor (EN)</label>
				<div class="col-sm-10">
					<div class="summernote-theme-1">
						<textarea id="en_courses_bachelor" name="en_courses_bachelor" class="form-control  summernote  "> {{$en_courses_bachelor}}</textarea>
					</div>	
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="kh_courses_associate">Courses Associate (KH)</label>
				<div class="col-sm-10">
					<div class="summernote-theme-1">
						<textarea id="kh_courses_associate" name="kh_courses_associate" class="form-control  summernote  ">{{$kh_courses_associate}} </textarea>
					</div>	
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="en_courses_associate">Courses Associate (EN)</label>
				<div class="col-sm-10">
					<div class="summernote-theme-1">
						<textarea id="en_courses_associate" name="en_courses_associate" class="form-control  summernote  "> {{$en_courses_associate}}</textarea>
					</div>	
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="kh_content">Status</label>
				<div class="col-sm-10">
					<div class="checkbox-toggle">
						<input id="status-status" type="checkbox"  >
						<label onclick="booleanForm('status')" for="status-status"></label>
					</div>
					<input type="hidden" name="status" id="status" value="">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 form-control-label"></label>
				<div class="col-sm-10">
					
					<button type="submit" class="btn btn-success"> <fa class="fa fa-plus"></i> Create</button>
				</div>
			</div>
		</form>
	</div>

@endsection