@extends('cp.major.tabForm')
@section ('section-title', "Academy")
@section ('tab-active-system-permision', 'active')
@section ('tab-css')

@endsection

@section ('tab-js')
<script type="text/javascript">
	$(document).ready(function(){
		$('.item').click(function(){
			check_id = $(this).attr('for');
			academy_id = $("#"+check_id).attr('academy-id');
			features(academy_id);
		})
	})
	function features(academy_id){
		$.ajax({
		        url: "{{ route($route.'.check-academy') }}?major_id={{ $id }}&academy_id="+academy_id,
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
			@foreach( $academies as $academy )
				@php( $check = "" )
		        @foreach($data as $row)
		            @if($row->academy_id == $academy->id)
		                @php( $check = "checked" )
		            @endif
		        @endforeach
				<div class="col-sm-6 col-sm-4 col-md-3 col-lg-3">
					<div class="checkbox-bird">
						<input type="checkbox" academy-id="{{ $academy->id }}" id="academy-{{ $academy->id }}" {{ $check }}>
						<label class="item" for="academy-{{ $academy->id }}">{{ $academy->en_title }}</label>
					</div>
				</div>
			@endforeach
		</div>
		<hr />

@endsection