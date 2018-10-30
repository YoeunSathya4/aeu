<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'IndustryController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'IndustryController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'IndustryController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'IndustryController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'IndustryController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'IndustryController@trash']);
	Route::delete('/delete/{id}', 				['as' => 'delete', 			'uses' => 'IndustryController@delete']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'IndustryController@updateStatus']);
	Route::post('update-delete-status', 		['as' => 'update-delete-status', 	'uses' => 'IndustryController@updateDeletedStatus']);
	
});
