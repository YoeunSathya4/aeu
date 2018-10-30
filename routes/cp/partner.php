<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'PartnerController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'PartnerController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'PartnerController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'PartnerController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'PartnerController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'PartnerController@trash']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'PartnerController@updateStatus']);
	Route::post('update-delete-status', 				['as' => 'update-delete-status', 	'uses' => 'PartnerController@updateDeletedStatus']);
	Route::delete('/delete/{id}', 						['as' => 'delete', 			'uses' => 'PartnerController@delete']);
});




			