<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'PublicationController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'PublicationController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'PublicationController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'PublicationController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'PublicationController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'PublicationController@trash']);
	Route::delete('/delete/{id}', 				['as' => 'delete', 			'uses' => 'PublicationController@delete']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'PublicationController@updateStatus']);
	Route::post('update-delete-status', 		['as' => 'update-delete-status', 	'uses' => 'PublicationController@updateDeletedStatus']);
	
});
