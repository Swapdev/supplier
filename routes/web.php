<?php

Route::get('/', 'LandingPageController@index')->name('landing-page');

Route::get('/shop', 'ShopController@index')->name('shop.index');
Route::get('/shop/{product}', 'ShopController@show')->name('shop.show');

Route::get('/cart', 'CartController@index')->name('cart.index');
Route::post('/cart/{product}', 'CartController@store')->name('cart.store');
Route::patch('/cart/{product}', 'CartController@update')->name('cart.update');
Route::delete('/cart/{product}', 'CartController@destroy')->name('cart.destroy');
Route::post('/cart/switchToSaveForLater/{product}', 'CartController@switchToSaveForLater')->name('cart.switchToSaveForLater');

Route::delete('/saveForLater/{product}', 'SaveForLaterController@destroy')->name('saveForLater.destroy');
Route::post('/saveForLater/switchToCart/{product}', 'SaveForLaterController@switchToCart')->name('saveForLater.switchToCart');

Route::post('/coupon', 'CouponsController@store')->name('coupon.store');
Route::delete('/coupon', 'CouponsController@destroy')->name('coupon.destroy');

Route::get('/checkout', 'CheckoutController@index')->name('checkout.index')->middleware('auth');
Route::post('/checkout', 'CheckoutController@store')->name('checkout.store');

Route::get('/guestCheckout', 'CheckoutController@index')->name('guestCheckout.index');


Route::get('/thankyou', 'ConfirmationController@index')->name('confirmation.index');


Route::group(['prefix' => 'dashboard'], function () {
    Voyager::routes();

Route::post('/suggest-a-business/add', 'SuggestBusinessController@add')->name('addSuggestedBusiness');

});


Route::get('/suggest-a-business', 'SuggestBusinessController@show')->name('SuggestedBusiness');

/**
 * Route related with personal profile page
 */

Route::get('main', 'ProfileController@main')->name('mainProfile');

Route::get('personal-profile', 'ProfileController@edit')->name('editProfile');

Route::post('update-profile', 'ProfileController@update')->name('updateProfile');

Route::post('update-password', 'ProfileController@updatePassword')->name('updatePassword');

Route::post('send-confirm-email', 'ProfileController@sendConfirmEmail')->name('sendConfirmEmail');

Route::post('send-confirm-phone', 'ProfileController@sendConfirmPhone')->name('sendConfirmPhone');



/**
 * Authentication related Routes
 */
Auth::routes();



Route::get('/home', 'HomeController@index')->name('home');

Route::get('/search', 'ShopController@search')->name('search');

/**
 * Route for Brand Index Page
 */

 Route::get('/brands', 'BrandController@index')->name('brands');

 /**
  * Route for Brand Sub Pages
  */

  Route::get('/brand/{brand}/', 'BrandController@brand')->name('singleBrand');

 


 /**
  * Route for Brand Category Pages
  */

  Route::get('/brand/{brand}/category/{category}', 'BrandController@brandCategories')->where('brand', '([A-Za-z0-9\-\/]+)')->where('category', '([A-Za-z0-9\-\/]+)')->name('BrandCategories');



/**
  * Route for Category Pages
  */

Route::get('/category/{category}', 'CategoryController@index')->name('category');


/**
 * Route for Product Page 
 */

 Route::get('/product/{product}', 'ProductController@show')->name('showProduct');

 