<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'AdmissionController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'AdmissionController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'AdmissionController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'AdmissionController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'AdmissionController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'AdmissionController@trash']);
	Route::delete('/delete/{id}', 				['as' => 'delete', 			'uses' => 'AdmissionController@delete']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'AdmissionController@updateStatus']);
	Route::post('update-delete-status', 		['as' => 'update-delete-status', 	'uses' => 'AdmissionController@updateDeletedStatus']);
	
});




			