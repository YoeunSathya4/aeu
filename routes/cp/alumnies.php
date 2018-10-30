<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'AlumniesController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'AlumniesController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'AlumniesController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'AlumniesController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'AlumniesController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'AlumniesController@trash']);
	Route::delete('/delete/{id}', 				['as' => 'delete', 			'uses' => 'AlumniesController@delete']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'AlumniesController@updateStatus']);
	Route::post('update-delete-status', 		['as' => 'update-delete-status', 	'uses' => 'AlumniesController@updateDeletedStatus']);
	
});
	