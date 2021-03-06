@extends($route.'.main')
@section ('section-title', 'All Publications')
@section ('display-btn-add-new', 'display:none')
@section ('section-css')



@endsection
@section ('section-js')
	<script type="text/javascript">
	$(document).ready(function() {
			$("#btn-search").click(function(){
				search();
			})
		});
		function search(){
			key 	= $('#key').val();
			d_from 		= $('#from').val();
			d_till 		= $('#till').val();
			limit 		= $('#limit').val();

			url="?limit="+limit;
			if(key!=""){
				url+='&key='+key;
			}
			if(isDate(d_from)){
				if(isDate(d_till)){
					url+='&from='+d_from+'&till='+d_till;
				}
			}
			$(location).attr('href', '{{ route($route.'.index') }}'+url);
		}
		function updateStatus(id){
		     	thestatus = $('#status-'+id);
		     	active = thestatus.attr('data-value');

		     	if(active == 1){
		     		active = 0;
		     		thestatus.attr('data-value', 1);
		     	}else{
		     		active = 1;
		     		thestatus.attr('data-value', 0);
		     	}

		     	$.ajax({
			        url: "{{ route($route.'.update-status') }}",
			        method: 'POST',
			        data: {id:id, active:active },
			        success: function( response ) {
			            if ( response.status === 'success' ) {
			            	swal("Nice!", response.msg ,"success");
			            	
			            }else{
			            	swal("Error!", "Sorry there is an error happens. " ,"error");
			            }
			        },
			        error: function( response ) {
			           swal("Error!", "Sorry there is an error happens. " ,"error");
			        }
				});
			}
			function showIsDelete(id){
			active = 0;
			$.ajax({
			        url: "{{ route($route.'.update-delete-status') }}",
			        method: 'POST',
			        data: {id:id, active:active },
			        success: function( response ) {
			            if ( response.status === 'success' ) {
			            	swal("Nice!", response.msg ,"success");
			            	location.reload();
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

@section ('section-content')
<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-3">
		<div class="form-group">
			
			<input  type="text" class="form-control" id="key" placeholder="Publication title" value="{{ isset($appends['key'])?$appends['key']:'' }}">
		</div>
	</div>
	
	<div class="col-xs-12 col-sm-6 col-md-3">
			<div class="form-group">
				<div id="from-cnt" class='input-group date'>
					<input id="from" type='text' class="form-control" value="{{ isset($appends['from'])?$appends['from']:'' }}" placeholder="From" />
				<span class="input-group-addon">
					<i class="font-icon font-icon-calend"></i>
				</span>
				</div>
			</div>
		</div>
		
		<div class="col-xs-12 col-sm-6 col-md-3">
			<div class="form-group">
				<div id="till-cnt" class='input-group date ' >
					<input id="till" type='text' class="form-control" value="{{ isset($appends['till'])?$appends['till']:''  }}" placeholder="Till" />
					<span class="input-group-addon">
						<i class="font-icon font-icon-calend"></i>
					</span>
				</div>
			</div>
		</div>
	<div class="ccol-xs-12 col-sm-12 col-md-3">
		<button id="btn-search" class="tabledit-delete-button btn btn-sm btn-primary" style="float: none;"><span class="fa fa-search"></span></button>
	</div>
</div>
@if(sizeof($data) > 0)
<div class="table-responsive">
	<table id="table-edit" class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>Title</th>
				<th>Published</th>
				<th>Image</th>
				@if(Auth::user()->position_id == 1)
				<th>Created By</th>
				<th>Created By</th>
				<th>Updated By</th>
				@endif
				<th>Updated Date</th>
				@if(Auth::user()->position_id == 1)
						<th>Delete By</th>
						<th>Delete Date</th>
						@endif
				<th></th>
			</tr>
		</thead>
		<tbody>
		
			
			@php ($i = 1)
			@foreach ($data as $row)
				<tr>
					<td>{{ $i++ }}</td>
					<td>{{ $row->en_title }}</td>
					<td>
						<div class="checkbox-toggle">
					        <input onclick="updateStatus({{ $row->id }})" type="checkbox" id="status-{{ $row->id }}" @if ($row->is_published == 1) checked data-value="1" @else data-value="0" @endif >
					        <label for="status-{{ $row->id }}"></label>
				        </div>
					</td>
					<td>
						@if($row->image!="")
							<img src="{{ asset ($row->image) }}" style="max-width:50px" alt="" data-toggle="tooltip" data-placement="bottom" title="{{ $row->name }}">
						@else
							No Image Avaiable
						@endif
					</td>
					@if(Auth::user()->position_id == 1)
							<td>{{ $row->creator->name }}</td>
							<td>{{ $row->created_at }}</td>
							<td>@if($row->updater != '') {{ $row->updater->name }} @else no updater @endif</td>
							@endif
					<td>{{ $row->updated_at }}</td>
					@if(Auth::user()->position_id == 1)
								<td>@if($row->deleter != '') {{ $row->deleter->name }} @else no deleter @endif</td>
								<td>{{ $row->deleted_at }}</td>
							@endif
					<td style="white-space: nowrap; width: 1%;">
						<div class="tabledit-toolbar btn-toolbar" style="text-align: left;">
                           	<div class="btn-group btn-group-sm" style="float: none;">
                           		<a href="{{ route($route.'.edit', $row->id) }}" class="tabledit-edit-button btn btn-sm btn-success" style="float: none;"><span class="fa fa-eye"></span></a>
                           		@if(Auth::user()->position_id == 1)
                           		<a href="#" onclick="deleteConfirm('{{ route($route.'.delete', $row->id) }}', '{{ route($route.'.index') }}')" class="tabledit-delete-button btn btn-sm btn-danger" style="float: none;"><span class="glyphicon glyphicon-trash"></span></a>
                           		@else
		                           		<a href="#" onclick="deleteConfirm('{{ route($route.'.trash', $row->id) }}', '{{ route($route.'.index') }}')" class="tabledit-delete-button btn btn-sm btn-danger" style="float: none;"><span class="glyphicon glyphicon-trash"></span></a>
		                           		@endif
		                           		@if(Auth::user()->position_id == 1)
		                           			@if($row->is_deleted == 1)
 											<button onclick="showIsDelete({{$row->id}})" class="tabledit-edit-button btn btn-sm btn-warning" style="float: none;"> <span class="fa fa-check"></span> Restore</button>
 											@endif
		                           		@endif
                           	</div>
                       </div>
                    </td>
				</tr>
			@endforeach
		</tbody>
	</table>
</div >
@else
	<span>No Data</span>
@endif
<div class="row">
	<div class="col-xs-2">
		<select id="limit" onchange="search()" class="form-control" style="margin-top: 15px;width:50%">
			@if(isset($appends['limit']))
			<option>{{ $appends['limit'] }}</option>
			@endif
			<option>10</option>
			<option>20</option>
			<option>30</option>
			<option>40</option>
			<option>50</option>
			<option>60</option>
			<option>70</option>
			<option>80</option>
			<option>90</option>
			<option>100</option>
		</select>
	</div>
	<div class="col-xs-10">

		{{ $data->appends($appends)->links('vendor.pagination.custom-html') }}
	</div>
</div>

@endsection