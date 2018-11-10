<?php
//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Gallery

Route::group([], function () {
	Route::get('/', 				['as' => 'index', 			'uses' => 'VideoController@index']);
	Route::get('/{id}', 			['as' => 'edit', 			'uses' => 'VideoController@edit']);
	Route::post('/', 				['as' => 'update', 			'uses' => 'VideoController@update']);
	Route::get('/create', 			['as' => 'create', 			'uses' => 'VideoController@create']);
	Route::put('/', 				['as' => 'store', 			'uses' => 'VideoController@store']);
	Route::delete('/{id}', 			['as' => 'trash', 			'uses' => 'VideoController@trash']);
	Route::post('status', 			['as' => 'update-status', 	'uses' => 'VideoController@updateStatus']);
	Route::post('order', 			['as' => 'order', 			'uses' => 'VideoController@order']);
});	