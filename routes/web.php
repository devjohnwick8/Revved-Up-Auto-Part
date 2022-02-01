<?php

use App\Http\Controllers\admin\AdminAuthController;
use App\Http\Controllers\UISearchController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\AdminBannerController;
use App\Http\Controllers\admin\AdminVehicleFitmentController;
use App\Http\Controllers\admin\AdminSpecificationController;
use App\Http\Controllers\admin\AdminBlogsController;
use App\Http\Controllers\admin\AdminTestimonialsController;
use App\Http\Controllers\admin\AdminServicesController;
use App\Http\Controllers\admin\AdminProductDetailsController;
use App\Http\Controllers\UIController;
use App\Http\Controllers\admin\AdminProductDataController;
use App\Http\Controllers\admin\AdminOrdersController;
use App\Http\Controllers\UICartController;
use App\Http\Controllers\UIAuthController;
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

//Route::get('/', function () {
//    return redirect()->route('admin_login');
//});

/*---------------------------------------Admin-Routes---------------------------------------------- */

/**Auth Routes */
Route::get('/admin-login', [AdminAuthController::class, 'login'])->name('admin_login');
Route::post('/admin/login-data', [AdminAuthController::class, 'login_data'])->name('login_data_page');
Route::get('/admin/logout', [AdminAuthController::class, 'logout'])->name('admin_logout');

/**Admin Auth Middleware Starts */
Route::group(['middleware' => ['protectedPage']], function () {





    /**Dashboard Routes */
    Route::get('/admin/dashboard', [AdminBannerController::class, 'dashboard'])->name('admin_dashboard');

    /**Profile Routes */
    Route::get('/admin/profile', [AdminAuthController::class, 'admin_profile'])->name('admin_profile');
    Route::post('/admin/profile-update/{user?}', [AdminAuthController::class, 'admin_profile_update'])->name('admin_profile_update');
    Route::post('/admin/profile-pass-update/{user?}', [AdminAuthController::class, 'admin_password_update'])->name('admin_password_update');

    /**Banner Routes */
    Route::get('/admin/banner-list', [AdminBannerController::class, 'banner'])->name('admin_banners');
    Route::get('/admin/banner-add', [AdminBannerController::class, 'banner_add'])->name('admin_banners_add');
    Route::get('/admin/banner-edit/{id?}', [AdminBannerController::class, 'banner_edit'])->name('admin_banners_edit');
    Route::get('/admin/banner-delete/{banner?}', [AdminBannerController::class, 'banner_delete'])->name('admin_banners_delete');
    Route::post('/admin/banner-add-edit/{banner?}', [AdminBannerController::class, 'banner_add_edit_data'])->name('admin_banners_add_edit');

    /**Vehicle Fitment Routes */
    Route::get('/admin/vehicle-fitment-list', [AdminVehicleFitmentController::class, 'vehicle_fitment'])->name('admin_vehicle_fitments');
    Route::get('/admin/vehicle-fitment-add', [AdminVehicleFitmentController::class, 'vehicle_fitment_add'])->name('admin_vehicle_fitments_add');
    Route::get('/admin/vehicle-fitment-edit/{id?}', [AdminVehicleFitmentController::class, 'vehicle_fitment_edit'])->name('admin_vehicle_fitments_edit');
    Route::get('/admin/vehicle-fitment-delete/{vehicle_fitment?}', [AdminVehicleFitmentController::class, 'vehicle_fitment_delete'])->name('admin_vehicle_fitments_delete');
    Route::post('/admin/vehicle-fitment-add-edit/{vehicle_fitment?}', [AdminVehicleFitmentController::class, 'vehicle_fitment_add_edit_data'])->name('admin_vehicle_fitments_add_edit');

    /**Blogs Routes */
    Route::get('/admin/blog-list', [AdminBlogsController::class, 'blog_list'])->name('admin_blogs');
    Route::get('/admin/blog-add', [AdminBlogsController::class, 'blog_add'])->name('admin_blogs_add');
    Route::get('/admin/blog-edit/{id?}', [AdminBlogsController::class, 'blog_edit'])->name('admin_blogs_edit');
    Route::get('/admin/blog-delete/{blog?}', [AdminBlogsController::class, 'blog_delete'])->name('admin_blogs_delete');
    Route::post('/admin/blog-add-edit/{blog?}', [AdminBlogsController::class, 'blog_add_edit_data'])->name('admin_blogs_add_edit');

    /**Testimonials Routes */
    Route::get('/admin/testimonial-list', [AdminTestimonialsController::class, 'testimonial_list'])->name('admin_testimonials');
    Route::get('/admin/testimonial-add', [AdminTestimonialsController::class, 'testimonial_add'])->name('admin_testimonials_add');
    Route::get('/admin/testimonial-edit/{id?}', [AdminTestimonialsController::class, 'testimonial_edit'])->name('admin_testimonials_edit');
    Route::get('/admin/testimonial-delete/{testimonial?}', [AdminTestimonialsController::class, 'testimonial_delete'])->name('admin_testimonials_delete');
    Route::post('/admin/testimonial-add-edit/{testimonial?}', [AdminTestimonialsController::class, 'testimonial_add_edit_data'])->name('admin_testimonials_add_edit');

    /**Services Routes */
    Route::get('/admin/service-list', [AdminServicesController::class, 'service_list'])->name('admin_services');
    Route::get('/admin/service-add', [AdminServicesController::class, 'service_add'])->name('admin_services_add');
    Route::get('/admin/service-edit/{id?}', [AdminServicesController::class, 'service_edit'])->name('admin_services_edit');
    Route::get('/admin/service-delete/{service?}', [AdminServicesController::class, 'service_delete'])->name('admin_services_delete');
    Route::post('/admin/service-add-edit/{service?}', [AdminServicesController::class, 'service_add_edit_data'])->name('admin_services_add_edit');

    /**Order Routes*/
    Route::get('/admin/order-list', [AdminOrdersController::class, 'orders_list'])->name('admin_orders_list');
    Route::get('/admin/order-edit/{order}', [AdminOrdersController::class, 'edit_order'])->name('admin_edit_order');
    Route::get('/admin/orders-view/{order}', [AdminOrdersController::class, 'view_order'])->name('admin_order_views');
    Route::get('/admin/order-delete/{order_item}', [AdminOrdersController::class, 'delete_order'])->name('admin_delete_order');
    Route::get('/admin/order-status/{orders}/{status}', [AdminOrdersController::class, 'order_status'])->name('admin_order_status');
    Route::post('/admin/order-add-new-product/{order}', [AdminOrdersController::class, 'addnewproduct'])->name('admin_addnewproduct');

    /**User Routes*/
    Route::get('/admin/user-list', [AdminAuthController::class, 'user_list'])->name('admin_users');
    Route::get('/admin/user-add', [AdminAuthController::class, 'user_add'])->name('admin_users_add');
    Route::get('/admin/user-edit/{id?}', [AdminAuthController::class, 'user_edit'])->name('admin_users_edit');
    Route::get('/admin/user-delete/{user?}', [AdminAuthController::class, 'user_delete'])->name('admin_users_delete');
    Route::post('/admin/user-add-edit/{user?}', [AdminAuthController::class, 'user_add_edit_data'])->name('admin_users_add_edit');

    /**Product Data Routes*/
    /**Product Make Routes */
    Route::get('/admin/product-make/product-make-add', [AdminProductDataController::class, 'product_make_add'])->name('admin_product_make_add');
    Route::get('/admin/product-make/product-make-list', [AdminProductDataController::class, 'product_make_list'])->name('admin_product_make_list');
    Route::get('/admin/product-make/product-make-edit/{product_make?}', [AdminProductDataController::class, 'product_make_edit'])->name('admin_product_make_edit');
    Route::get('/admin/product-make/product-make-delete/{product_make?}', [AdminProductDataController::class, 'product_make_delete'])->name('admin_product_make_delete');
    Route::post('/admin/product-make/product-make-add-edit/{product_make?}', [AdminProductDataController::class, 'product_make_add_edit_data'])->name('admin_product_make_add_edit_data');

    /**Product Model Routes */
    Route::get('/admin/product-model/product-model-add', [AdminProductDataController::class, 'product_model_add'])->name('admin_product_model_add');
    Route::get('/admin/product-model/product-model-list', [AdminProductDataController::class, 'product_model_list'])->name('admin_product_model_list');
    Route::get('/admin/product-model/product-model-edit/{product_model?}', [AdminProductDataController::class, 'product_model_edit'])->name('admin_product_model_edit');
    Route::get('/admin/product-model/product-model-delete/{product_model?}', [AdminProductDataController::class, 'product_model_delete'])->name('admin_product_model_delete');
    Route::post('/admin/product-model/product-model-add-edit/{product_model?}', [AdminProductDataController::class, 'product_model_add_edit_data'])->name('admin_product_model_add_edit_data');

    /**Product SubModel Routes */
    Route::get('/admin/product-submodel/product-submodel-add', [AdminProductDataController::class, 'product_submodel_add'])->name('admin_product_submodel_add');
    Route::get('/admin/product-submodel/product-submodel-list', [AdminProductDataController::class, 'product_submodel_list'])->name('admin_product_submodel_list');
    Route::get('/admin/product-submodel/product-submodel-edit/{product_submodel?}', [AdminProductDataController::class, 'product_submodel_edit'])->name('admin_product_submodel_edit');
    Route::get('/admin/product-submodel/product-submodel-delete/{product_submodel?}', [AdminProductDataController::class, 'product_submodel_delete'])->name('admin_product_submodel_delete');
    Route::post('/admin/product-submodel/product-submodel-add-edit/{product_submodel?}', [AdminProductDataController::class, 'product_submodel_add_edit_data'])->name('admin_product_submodel_add_edit_data');

    /**Product SubModel Routes */
    Route::get('/admin/product-engine/product-engine-add', [AdminProductDataController::class, 'product_engine_add'])->name('admin_product_engine_add');
    Route::get('/admin/product-engine/product-engine-list', [AdminProductDataController::class, 'product_engine_list'])->name('admin_product_engine_list');
    Route::get('/admin/product-engine/product-engine-edit/{product_engine?}', [AdminProductDataController::class, 'product_engine_edit'])->name('admin_product_engine_edit');
    Route::get('/admin/product-engine/product-engine-delete/{product_engine?}', [AdminProductDataController::class, 'product_engine_delete'])->name('admin_product_engine_delete');
    Route::post('/admin/product-engine/product-engine-add-edit/{product_engine?}', [AdminProductDataController::class, 'product_engine_add_edit_data'])->name('admin_product_engine_add_edit_data');

     /**Product specification Routes */

    Route::get('/admin/specification-list', [AdminSpecificationController::class, 'specification'])->name('admin_specifications');
    Route::get('/admin/specification-add', [AdminSpecificationController::class, 'specification_add'])->name('admin_specifications_add');
    Route::get('/admin/specification-edit/{id?}', [AdminSpecificationController::class, 'specification_edit'])->name('admin_specifications_edit');
    Route::get('/admin/specification-delete/{specification?}', [AdminSpecificationController::class, 'specification_delete'])->name('admin_specifications_delete');
    Route::post('/admin/specification-add-edit/{specification?}', [AdminSpecificationController::class, 'specification_add_edit_data'])->name('admin_specifications_add_edit');

     /**Product Option Routes */

    Route::get('/admin/product-option/product-option-list', [AdminProductDataController::class, 'product_option_list'])->name('admin_product_option_list');
    Route::get('/admin/product-option/product-option-add', [AdminProductDataController::class, 'product_option_add'])->name('admin_product_option_add');
    Route::get('/admin/product-option/product-option-edit-new/{id}', [AdminProductDataController::class, 'product_option_edit_new'])->name('admin_product_option_edit_new');
 Route::post('/admin/product-option/product-option-add-edit/{product_option?}', [AdminProductDataController::class, 'product_option_add_edit_data'])->name('admin_product_option_add_edit_data');
    Route::get('/admin/product-option/product-option-delete/{product_option?}', [AdminProductDataController::class, 'product_option_delete'])->name('admin_product_option_delete');
  



    /**Product specification Routes  Previus*/
    // Route::get('/admin/product-specification/product-specification-add', [AdminProductDataController::class, 'product_specification_add'])->name('admin_product_specification_add');
    // Route::get('/admin/product-specification/product-specification-edit-new/{id}', [AdminProductDataController::class, 'product_specification_edit_new'])->name('admin_product_specification_edit_new');
    // Route::post('/admin/product-specification/product-specification-edit-data/{id}', [AdminProductDataController::class, 'product_specification_edit_data'])->name('admin_product_specification_edit_data');
    // Route::get('/admin/product-specification/product-specification-list', [AdminProductDataController::class, 'product_specification_list'])->name('admin_product_specification_list');
    // Route::get('/admin/product-specification/product-specification-edit/{product_specification?}', [AdminProductDataController::class, 'product_specification_edit'])->name('admin_product_specification_edit');
    // Route::get('/admin/product-specification/product-specification-delete/{product_specification?}', [AdminProductDataController::class, 'product_specification_delete'])->name('admin_product_specification_delete');
    // Route::post('/admin/product-specification/product-specification-add-edit/{product_specification?}', [AdminProductDataController::class, 'product_specification_add_edit_data'])->name('admin_product_specification_add_edit_data');

      /**Product Available Routes  */
    Route::get('/admin/product-available/product-available-list', [AdminProductDataController::class, 'product_available_list'])->name('admin_product_available_list');
    Route::get('/admin/product-available/product-available-add', [AdminProductDataController::class, 'product_available_add'])->name('admin_product_available_add');
    Route::get('/admin/product-available/product-available-edit-new/{id}', [AdminProductDataController::class, 'product_available_edit_new'])->name('admin_product_available_edit_new');
    Route::post('/admin/product-available/product-available-add-edit/{product_available?}', [AdminProductDataController::class, 'product_available_add_edit_data'])->name('admin_product_available_add_edit_data');
    Route::get('/admin/product-available/product-available-delete/{product_available?}', [AdminProductDataController::class, 'product_available_delete'])->name('admin_product_available_delete');
  




    /**Product Year Routes */
    Route::get('/admin/product-year/product-year-add', [AdminProductDataController::class, 'product_year_add'])->name('admin_product_year_add');
    Route::get('/admin/product-year/product-year-list', [AdminProductDataController::class, 'product_year_list'])->name('admin_product_year_list');
    Route::get('/admin/product-year/product-year-edit/{product_year?}', [AdminProductDataController::class, 'product_year_edit'])->name('admin_product_year_edit');
    Route::get('/admin/product-year/product-year-delete/{product_year?}', [AdminProductDataController::class, 'product_year_delete'])->name('admin_product_year_delete');
    Route::post('/admin/product-year/product-year-add-edit/{product_year?}', [AdminProductDataController::class, 'product_year_add_edit_data'])->name('admin_product_year_add_edit_data');


    /**Product Detail Routes*/
    /**Categories Routes */
    Route::get('/admin/categories-list', [AdminProductDetailsController::class, 'categories_list'])->name('admin_categories');
    Route::get('/admin/categories-add', [AdminProductDetailsController::class, 'categories_add'])->name('admin_categories_add');
    Route::get('/admin/categories-edit/{id?}', [AdminProductDetailsController::class, 'categories_edit'])->name('admin_categories_edit');
    Route::get('/admin/categories-delete/{categories?}', [AdminProductDetailsController::class, 'categories_delete'])->name('admin_categories_delete');
    Route::post('/admin/categories-add-edit/{categories?}', [AdminProductDetailsController::class, 'categories_add_edit_data'])->name('admin_categories_add_edit');

    /**Sub-Categories Routes */
    Route::get('/admin/sub-categories-list', [AdminProductDetailsController::class, 'sub_categories_list'])->name('admin_sub_categories');
    Route::get('/admin/sub-categories-add', [AdminProductDetailsController::class, 'sub_categories_add'])->name('admin_sub_categories_add');
    Route::get('/admin/sub-categories-edit/{id?}', [AdminProductDetailsController::class, 'sub_categories_edit'])->name('admin_sub_categories_edit');
    Route::get('/admin/sub-categories-delete/{sub_categories?}', [AdminProductDetailsController::class, 'sub_categories_delete'])->name('admin_sub_categories_delete');
    Route::post('/admin/sub-categories-add-edit/{sub_categories?}', [AdminProductDetailsController::class, 'sub_categories_add_edit_data'])->name('admin_sub_categories_add_edit');
    /**Products Routes */
    Route::get('/admin/products-list', [AdminProductDetailsController::class, 'products_list'])->name('admin_products');
    Route::get('/admin/products-add', [AdminProductDetailsController::class, 'products_add'])->name('admin_products_add');
    Route::get('/admin/products-edit/{id?}', [AdminProductDetailsController::class, 'products_edit'])->name('admin_products_edit');
    Route::get('/admin/products-delete/{products?}', [AdminProductDetailsController::class, 'products_delete'])->name('admin_products_delete');
    Route::post('/admin/products-add-edit/{products?}', [AdminProductDetailsController::class, 'products_add_edit_data'])->name('admin_products_add_edit');
});
/**Admin Auth Middleware Ends */

/**UI Auth Routes*/
Route::get('/login', [UIAuthController::class, 'login'])->name('UI_Login');
Route::get('/create-account', [UIAuthController::class, 'create_account'])->name('UI_Create_Account');
Route::get('/forgot-password', [UIAuthController::class, 'forgot_password'])->name('UI_Forgot_Password');
Route::post('/create-account-data', [UIAuthController::class, 'create_account_data'])->name('UI_Create_Account_Data');
Route::post('/login-data', [UIAuthController::class, 'login_data'])->name('UI_Login_Data');
Route::get('/logout', [UIAuthController::class, 'user_logout'])->name('user_logout');
Route::get('/change-password', [UIAuthController::class, 'change_password'])->name('UI_change_password')->middleware('auth');; 
Route::post('/my-password-update/{user?}', [UIAuthController::class, 'change_password_update'])->name('UI_change_password_Updated')->middleware('auth');
Route::get('/my-profile', [UIAuthController::class, 'my_profile'])->name('UI_my_profile')->middleware('auth');
Route::post('/my-profile-update/{user?}', [UIAuthController::class, 'my_profile_update'])->name('UI_my_profile_Updated')->middleware('auth');;


/**UI SEARCH ROUTES STARTS**/
Route::post('search-year', [UISearchController::class, 'search_year'])->name('UI_search_year');
Route::post('search-model', [UISearchController::class, 'search_model'])->name('UI_search_model');
Route::post('search-submodel', [UISearchController::class, 'search_submodel'])->name('UI_search_submodel');
Route::post('search-engine', [UISearchController::class, 'search_engine'])->name('UI_search_engine');
/**UI SEARCH ROUTES ENDS**/

Route::get('billing-information', [UICartController::class, 'billing_information'])->name('UI_billing_information')->middleware('auth');
Route::get('shipping', [UICartController::class, 'shipping'])->name('UI_shipping')->middleware('auth');


/**UI ROUTES Starts */
Route::get('about_us', [UIController::class, 'about_us'])->name('UI_about_us');
Route::get('track', [UIController::class, 'track'])->name('UI_track');
Route::Post('track', [UIController::class, 'track_post'])->name('UI_track_post');
Route::get('order-track', [UIController::class, 'order_track'])->name('UI_order_track');
Route::get('order-track/{id}', [UIController::class, 'get_data_order_track'])->name('UI_get_order_track');
Route::get('ask_a_question', [UIController::class, 'ask_a_question'])->name('UI_ask_a_question');
Route::get('backorders', [UIController::class, 'backorders'])->name('UI_backorders');
Route::get('contact_us', [UIController::class, 'contact_us'])->name('UI_contact_us');
Route::get('customer_support', [UIController::class, 'customer_support'])->name('UI_customer_support');
Route::get('damage_part', [UIController::class, 'damage_part'])->name('UI_damage_part');
Route::get('defective_claims', [UIController::class, 'defective_claims'])->name('UI_defective_claims');
Route::get('fitment_issue', [UIController::class, 'fitment_issue'])->name('UI_fitment_issue');
Route::get('help', [UIController::class, 'help'])->name('UI_help');
Route::get('/', [UIController::class, 'home'])->name('UI_home');

Route::get('part-not-found', [UIController::class, 'part_not_found'])->name('UI_part_not_found');
Route::get('part-not-found/{id}', [UIController::class, 'part_not_found_porduct'])->name('UI_part_not_found_product');
Route::Post('part-not-found', [UIController::class, 'add_part_not_found'])->name('UI_add_part_not_found');

Route::get('single-product/{id}', [UIController::class, 'single_product'])->name('UI_single_product');
Route::get('thank-you', [UIController::class, 'thank_you'])->name('UI_thank_you')->middleware('auth');
Route::post('single-product-data', [UISearchController::class, 'shopnow'])->name('UI_shopnow');
Route::post('single-product-part-data', [UISearchController::class, 'search_part'])->name('UI_search_part');

/**UI Cart Routes starts*/
Route::get('cart', [UICartController::class, 'cart'])->name('UI_cart');
Route::post('cart-updated', [UICartController::class, 'cart_update'])->name('UI_cart_update');
Route::get('delete-cart/{id}', [UICartController::class, 'cart_delete'])->name('UI_cart_delete');

Route::Post('review', [UICartController::class, 'add_shipping'])->name('UI_add_shipping')->middleware('auth');
Route::get('review', [UICartController::class, 'review'])->name('UI_review')->middleware('auth')->middleware('auth');

// Route::get('part-not-found', [UICartController::class, 'part_not_found'])->name('UI_part_not_found');

Route::Post('shipping', [UICartController::class, 'add_billing_information'])->name('UI_add_billing_information')->middleware('auth');
Route::post('add-to-cart', [UICartController::class, 'add_to_cart'])->name('UI_add_to_cart');
Route::post('/payment', [UICartController::class, 'event_stripe'])->name('stripe_post')->middleware('auth');

Route::get('my_orders/', [UICartController::class, 'my_orders'])->name('UI_my_orders')->middleware('auth');
Route::get('/my-order-items/{order}', [UICartController::class, 'my_order_items'])->name('UI_my_order_items')->middleware('auth');
/**UI Cart Routes ends*/



Route::get('pick_up_availability', [UIController::class, 'pick_up_availability'])->name('UI_pick_up_availability');
Route::get('price_match', [UIController::class, 'price_match'])->name('UI_price_match');
Route::get('privacy_policy', [UIController::class, 'privacy_policy'])->name('UI_privacy_policy');
Route::get('restocking', [UIController::class, 'restocking'])->name('UI_restocking');
Route::get('return_process', [UIController::class, 'return_process'])->name('UI_return_process');
Route::get('shipping_policy', [UIController::class, 'shipping_policy'])->name('UI_shipping_policy');
Route::get('submit_returns', [UIController::class, 'submit_returns'])->name('UI_submit_returns');
Route::get('warranty_policy', [UIController::class, 'warranty_policy'])->name('UI_warranty_policy');

/**UI ROUTES */
/**UI ROUTES Ends */
