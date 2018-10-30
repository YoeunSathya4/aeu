<?php

	//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Auth
	Route::group(['as' => 'auth.', 'prefix' => 'auth', 'namespace' => 'Auth'], function(){	
		require(__DIR__.'/auth.php');
	});
	
	//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Authensicated
	Route::group(['middleware' => 'authenticatedUser'], function() {
		Route::group(['as' => 'user.',  'prefix' => 'user', 'namespace' => 'User'], function () {
			require(__DIR__.'/user.php');
		});
		Route::group(['as' => 'profile.',  'prefix' => 'profile', 'namespace' => 'Profile'], function () {
			require(__DIR__.'/profile.php');
		});

		Route::group(['as' => 'dashboard.',  'prefix' => 'dashboard', 'namespace' => 'Dashboard'], function () {
			require(__DIR__.'/dashboard.php');
		});
		
		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Setup
		Route::group(['as' => 'setup.', 'prefix' => 'setup', 'namespace' => 'Setup'], function () {
			require(__DIR__.'/setup.php');
		});
		
		
		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Slide
		Route::group(['as' => 'slide.', 'prefix' => 'slide', 'namespace' => 'Slide'], function () {
			require(__DIR__.'/slide.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Partner
		Route::group(['as' => 'partner.', 'prefix' => 'partner', 'namespace' => 'Partner'], function () {
			require(__DIR__.'/partner.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Faculty
		Route::group(['as' => 'faculty.', 'prefix' => 'faculty', 'namespace' => 'Faculty'], function () {
			require(__DIR__.'/faculty.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Academic Programe
		Route::group(['as' => 'academic-programe.', 'prefix' => 'academic-programe', 'namespace' => 'AcademicPrograme'], function () {
			require(__DIR__.'/academic-programe.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Admission
		Route::group(['as' => 'admission.', 'prefix' => 'admission', 'namespace' => 'Admission'], function () {
			require(__DIR__.'/admission.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Alumnies
		Route::group(['as' => 'alumnies.', 'prefix' => 'alumnies', 'namespace' => 'Alumnies'], function () {
			require(__DIR__.'/alumnies.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Industry
		Route::group(['as' => 'industry.', 'prefix' => 'industry', 'namespace' => 'Industry'], function () {
			require(__DIR__.'/industry.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Publication
		Route::group(['as' => 'publication.', 'prefix' => 'publication', 'namespace' => 'Publication'], function () {
			require(__DIR__.'/publication.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Publication
		Route::group(['as' => 'major.', 'prefix' => 'major', 'namespace' => 'Major'], function () {
			require(__DIR__.'/major.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> News
		Route::group(['as' => 'news.', 'prefix' => 'news', 'namespace' => 'News'], function () {
			require(__DIR__.'/news.php');
		});
		
		Route::group(['as' => 'content.',  'prefix' => 'content', 'namespace' => 'Content'], function () {
			require(__DIR__.'/content.php');
		});

		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Tracking
		Route::group(['as' => 'tracking.', 'prefix' => 'tracking', 'namespace' => 'Tracking'], function () {
			require(__DIR__.'/tracking.php');
		});
		//:::::::::::::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Visitor
		Route::group(['as' => 'visitor.', 'prefix' => 'visitor', 'namespace' => 'Visitor'], function () {
			require(__DIR__.'/visitor.php');
		});
		
	});