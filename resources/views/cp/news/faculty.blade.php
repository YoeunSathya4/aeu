@extends('cp.news.tabForm')
@section ('section-title', "Faculty")
@section ('tab-active-system-permision', 'active')
@section ('tab-css')

@endsection

@section ('tab-js')
<script type="text/javascript">
	$(document).ready(function(){
		$('.item').click(function(){
			check_id = $(this).attr('for');
			faculty_id = $("#"+check_id).attr('faculty-id');
			features(faculty_id);
		})
	})
	function features(faculty_id){
		$.ajax({
		        url: "{{ route($route.'.check-faculty') }}?news_id={{ $id }}&faculty_id="+faculty_id,
		        type: 'GET',
		        data: { },
		        success: function( response ) {
		            if ( response.status === 'success' ) {
		            	toastr.success(response.msg);
		            }else{
		            	swal("Error!", "Sorry there is an error happens. " ,"error");
		            }
		        },
		        error: function( response ) {
		           swal("Error!", "Sorry there is an error happens. " ,"error");
		        }
		});
	}
</script>

@endsection

@section ('tab-content')
	<br />
		
		
		
		<div class="row m-t-lg">
			@foreach( $faculties as $faculty )
				@php( $check = "" )
		        @foreach($data as $row)
		            @if($row->faculty_id == $faculty->id)
		                @php( $check = "checked" )
		            @endif
		        @endforeach
				<div class="col-sm-6 col-sm-4 col-md-3 col-lg-3">
					<div class="checkbox-bird">
						<input type="checkbox" faculty-id="{{ $faculty->id }}" id="faculty-{{ $faculty->id }}" {{ $check }}>
						<label class="item" for="faculty-{{ $faculty->id }}">{{ $faculty->en_title }}</label>
					</div>
				</div>
			@endforeach
		</div>
		<hr />

@endsection