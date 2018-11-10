@extends ($route.'.main')
@section ('section-title', 'Create New Video')
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
	<script>
		$(document).ready(function(event){
			$('#form').validate({
				modules : 'file',
				submit: {
					settings: {
						inputContainer: '.form-group',
						errorListClass: 'form-tooltip-error'
					}
				}
			}); 
			$("#video-cnt").hide();
			$("#url").blur(function(){
				url= $(this).val();
				if(url != ""){
					$("#video-cnt").show();
					$("#iframe").attr("src", "//www.youtube.com/embed/"+url);
				}
			})
			
		}); 
		

		
	</script>
@endsection

@section ('section-content')
	<div class="container-fluid">
		@include('cp.layouts.error')

		@php ($active = 0)
		@php ($name = "")
		@php ($url = "")
       
       	@if (Session::has('invalidData'))
            @php ($invalidData = Session::get('invalidData'))
            @php ($name = $invalidData['name'])
            @php ($url = $invalidData['url'])
            @php ($active = $invalidData['active'])
            
       	@endif
		<form id="form" action="{{ route($route.'.store') }}" name="form" method="POST"  enctype="multipart/form-data">
			{{ csrf_field() }}
			{{ method_field('PUT') }}

			<div class="form-group row">
				<label class="col-sm-2 form-control-label" for="name">Title</label>
				<div class="col-sm-10">
					<input 	id="name"
							name="name"
						   	value = "{{$name}}"
						   	type="text"
						   	placeholder = "Enter Video Title."
						   	class="form-control"
						   	data-validation="[L>=1, L<=100]"
							data-validation-message="$ must be between 6 and 18 characters. No special characters allowed." />
							
				</div>
			</div>
			
		<div class="form-group row">
			<label class="col-sm-2 form-control-label" >Youtube ID</label>
			<div style="width: 500px;" class="col-sm-10">
				<input 	id="url"
						name="url"
						value = "{{ $url }}"
						type="text"
						placeholder = "Youtube ID"
					   	class="form-control"/>
			</div>
		</div>
		<div id="video-cnt" class="form-group row">
			<label class="col-sm-2 form-control-label" >Video</label>
			<div class="col-sm-10">
				<div class="embed-responsive embed-responsive-4by3">
					<iframe id="iframe" class="embed-responsive-item" src=""></iframe>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 form-control-label" for="active">Published</label>
			<div class="col-sm-10">
				<div class="checkbox-toggle">
					<input name="active" id="active" type="checkbox"  @if($active ==1 ) checked @endif >
					<label onclick="change_active()" for="active"></label>
				</div>
				<input type="hidden" name="active" id="active" value="{{$active}}">
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