<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'AcademicProgrameController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'AcademicProgrameController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'AcademicProgrameController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'AcademicProgrameController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'AcademicProgrameController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'AcademicProgrameController@trash']);
	Route::delete('/delete/{id}', 				['as' => 'delete', 			'uses' => 'AcademicProgrameController@delete']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'AcademicProgrameController@updateStatus']);
	Route::post('update-delete-status', 		['as' => 'update-delete-status', 	'uses' => 'AcademicProgrameController@updateDeletedStatus']);
	
});




			