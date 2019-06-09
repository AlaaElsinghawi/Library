<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();
Route::get('/','HomeController@index')->name('home');
/*Route::get('/','HomeController@index')->name('index');*/
Route::get('/viewallbook','PagesController@index')->name('viewallbook');

Route::get('/category/{id}','PagesController@viewCategory')->name('category');
Route::get('/book/{id}','PagesController@viewBook')->name('book');

/*Route::post('comment/{id}',['uses'=>'PagesController@addComment','middleware'=>'auth'])->name('comment');*/

 Route::post('addcomment/{id}','PagesController@addcomment')->name('addcomment');

Route::get('/upload',['uses'=>'UploadController@index'])->name('upload');

//Route::get('upload','UploadController@index')->name('upload');  
Route::post('/upload',['uses'=>'UploadController@upload'])->name('upload.save');

Route::group(['prefix'=>'admin'],function(){
    Route::get('users','AdminUsersController@index');
    Route::get('categories','AdminCategoryController@create'); 
    Route::get('viewcategories','AdminCategoryController@index');
    Route::post('store','AdminCategoryController@store');
});


  