<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'FacultyController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'FacultyController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'FacultyController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'FacultyController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'FacultyController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'FacultyController@trash']);
	Route::delete('/delete/{id}', 				['as' => 'delete', 			'uses' => 'FacultyController@delete']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'FacultyController@updateStatus']);
	Route::post('update-delete-status', 		['as' => 'update-delete-status', 	'uses' => 'FacultyController@updateDeletedStatus']);
	
});




			