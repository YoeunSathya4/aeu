@extends('cp.layouts.app')
@section('active-main-menu-usefull', 'opened')
@section('title')
	Usefull Link: @yield('section-title')
@endsection

@section ('appheadercss')
	@yield('section-css')
@endsection


@section ('appbottomjs')
	@yield('section-js')
@endsection

@section ('page-content')
	<header class="page-content-header">
		<div class="container-fluid">
			<div class="tbl">
				<div class="tbl-row">
					<div class="tbl-cell">
						<h3>Usefull Link </h3> 
					</div>
					<div class="tbl-cell tbl-cell-action">
						<a href="{{ route('cp.usefull-link.index') }}"  class="tabledit-delete-button btn btn-sm btn-primary" style="float: none;  @yield('hide-btn-back')  "><span class="fa fa-arrow-left"></span></a>
						<a href="{{ route('cp.usefull-link.create') }}"  class="tabledit-delete-button btn btn-sm btn-primary" style="float: none;"><span class="fa fa-plus"></span></a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="container-fluid">
		<div class="box-typical box-typical-padding">
			@yield('section-content')
		</div>	
	</div>

@endsection