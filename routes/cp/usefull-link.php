<?php

//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Featurte
Route::group([], function () {
	Route::get('/', 							['as' => 'index', 			'uses' => 'UsefullLinkController@index']);
	Route::get('/{id}', 						['as' => 'edit', 			'uses' => 'UsefullLinkController@edit']);
	Route::post('/', 							['as' => 'update', 			'uses' => 'UsefullLinkController@update']);
	Route::get('/create', 						['as' => 'create', 			'uses' => 'UsefullLinkController@create']);
	Route::put('/', 							['as' => 'store', 			'uses' => 'UsefullLinkController@store']);
	Route::delete('/{id}', 						['as' => 'trash', 			'uses' => 'UsefullLinkController@trash']);
	Route::post('update-status', 				['as' => 'update-status', 	'uses' => 'UsefullLinkController@updateStatus']);
	Route::post('update-delete-status', 	    ['as' => 'update-delete-status', 	'uses' => 'UsefullLinkController@updateDeletedStatus']);
	Route::delete('/delete/{id}', 				['as' => 'delete', 			'uses' => 'UsefullLinkController@delete']);
});




			