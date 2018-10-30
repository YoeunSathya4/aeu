<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'MajorController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'MajorController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'MajorController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'MajorController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'MajorController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'MajorController@trash']);
	Route::delete('/delete/{id}', 				['as' => 'delete', 			'uses' => 'MajorController@delete']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'MajorController@updateStatus']);
	Route::post('update-delete-status', 		['as' => 'update-delete-status', 	'uses' => 'MajorController@updateDeletedStatus']);
	
	Route::get('/{id}/academy', 		['as' => 'academy', 			'uses' => 'MajorController@academy']);
	Route::get('/check-academy', 		['as' => 'check-academy', 		'uses' => 'MajorController@checkAcademies']);
});
			