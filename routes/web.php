<?php
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\TagController;
use App\Http\Controllers\LocaleController;
use App\Http\Controllers\ConfirmationController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\AjaxController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\OrdersController;
use App\Http\Controllers\PagesController;

//Voyager Controller
use App\Http\Controllers\Voyager\UserController;
use App\Http\Controllers\Voyager\ProductController as VoyagerProductController;
use App\Http\Controllers\Voyager\NewsletterController;
use App\Http\Controllers\Voyager\BaseController;

Route::get('setlocale/{locale}', [LocaleController::class, 'index'])->name('setlocale');

// Admin Page
Route::group(['prefix' => 'admin'], function () {

    Voyager::routes();

    Route::group(['as' => 'voyager.'], function () {

        // Users
        Route::post('user/notification', [UserController::class, 'notification'])->name('user.notification');

        // Products
        Route::get('product/export/{product}',[VoyagerProductController::class, 'export'])->name('product.export');
        Route::post('product/import', [VoyagerProductController::class, 'import'])->name('product.import');

        // Newsletters
        Route::post('newsletter/send-email', [NewsletterController::class, 'send_email'])->name('newsletter.send_mail');

        try {
            foreach (Voyager::model('DataType')::all() as $dataType) {
                Route::post($dataType->slug.'/active', [BaseController::class, 'active'])->name($dataType->slug.'.active');
                Route::get($dataType->slug.'/relation', [BaseController::class, 'relation'])->name($dataType->slug.'.relation');
                Route::get($dataType->slug, [BaseController::class, 'index'])->name($dataType->slug.'.index');
            }

        } catch (\InvalidArgumentException $e) {
            throw new \InvalidArgumentException("Custom routes hasn't been configured because: ".$e->getMessage(), 1);
        } catch (\Exception $e) {
            // do nothing, might just be because table not yet migrated.
        }
    });

});


// Frontend Page

//Route::group(['middleware' => ['HtmlMifier']], function () {
    Route::get('', [HomeController::class, 'index'])->name('home');
    Route::get('tags/{slug}', [TagController::class, 'index'])->name('tags.index');
    Route::get('thankyou', [ConfirmationController::class, 'index'])->name('confirmation.index');
    Route::get('search', [SearchController::class, 'index'])->name('search.index');

    // Ajax
    Route::post('ajax/newsletter', [AjaxController::class, 'newsletter'])->name('ajax.newsletter');
    Route::post('ajax/rating', [AjaxController::class, 'rating'])->name('ajax.rating');
    Route::post('ajax/comment', [AjaxController::class, 'comment'])->name('ajax.comment');
    Route::get('ajax/mark-as-read', [AjaxController::class, 'notification'])->name('ajax.notification')->middleware('auth');
    Route::post('ajax/mark-as-read', [AjaxController::class, 'MarkAsRead'])->name('ajax.mark_as_read')->middleware('auth');

    // Page Auth
    Auth::routes();

    // Page Product
    Route::group(['prefix' => 'product'], function(){
        Route::get('', [ProductController::class, 'index'])->name('product.index');

        Route::get('{slug}.html', [ProductController::class, 'detail'])->name('product.detail');
        
        Route::get('{list}', [ProductController::class, 'index'])->name('product.list');
        Route::get('{list}/{cat}', [ProductController::class, 'index'])->name('product.cat');
        Route::get('{list}/{cat}/{item}', [ProductController::class, 'index'])->name('product.item');
    });

    // Page Blog
    Route::group(['prefix' => 'blog'], function(){
        Route::get('', [BlogController::class, 'index'])->name('blog.index');
        Route::get('{slug}.html', [BlogController::class, 'detail'])->name('blog.detail');
    });

    // Page Contact
    Route::group(['prefix' => 'contact-us'], function(){
        Route::get('', [ContactController::class, 'index'])->name('contact.index');
        Route::post('', [ContactController::class, 'store'])->name('contact.store');
    });

    // Page Cart
    Route::group(['prefix' => 'cart'], function(){
        Route::get('', [CartController::class, 'index'])->name('cart.index');
        Route::post('{product}', [CartController::class, 'store'])->name('cart.store');
        Route::patch('{product}', [CartController::class, 'update'])->name('cart.update');
        Route::delete('{product}', [CartController::class, 'destroy'])->name('cart.destroy');
    });

    // Page Checkout
    Route::group(['prefix' => 'checkout', 'middleware' => 'auth'], function(){
        Route::get('', [CheckoutController::class, 'index'])->name('checkout.index');
        Route::post('', [CheckoutController::class, 'store'])->name('checkout.store');
        Route::get('success', [ConfirmationController::class, 'success'])->name('checkout.success');
    });   
    
    // Page Profile
    Route::group(['middleware' => 'auth'], function () {
        Route::get('my-profile', [UsersController::class, 'edit'])->name('users.edit');
        Route::patch('my-profile', [UsersController::class, 'update'])->name('users.update');

        Route::get('my-orders', [OrdersController::class, 'index'])->name('orders.index');
        Route::get('my-orders/{order}', [OrdersController::class, 'show'])->name('orders.show');
    });

    // Single Page
    Route::get('{slug}', [PagesController::class, 'getPage'])->where('slug', '[([A-Za-z0-9\-\/]+)');

//});




