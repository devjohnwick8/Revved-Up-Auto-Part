@php
function active($current_page){
$url = Request::segment(2);
if($current_page == $url){
echo 'active'; //class name in css
}
}
function activedata($current_page){
$url = Request::segment(3);
if($current_page == $url){
echo 'active'; //class name in css
}
}
@endphp

<nav class="navbar navbar-dark navbar-theme-primary px-4 col-12 d-md-none">
  <a class="navbar-brand mr-lg-5" href="#">
    <img class="navbar-brand-dark" src="{{asset('admin/assets/img/brand/light.svg')}}" alt="Volt logo" /> <img class="navbar-brand-light" src="{{asset('admin/assets/img/brand/dark.svg')}}" alt="Volt logo" />
  </a>
  <div class="d-flex align-items-center">
    <button class="navbar-toggler d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>

<div class="container-fluid bg-soft">
  <div class="row">
    <div class="col-12">

      <nav id="sidebarMenu" style="background: #262B40" class="sidebar d-md-block  text-white collapse" data-simplebar>
        <div class="sidebar-inner px-4 pt-3">
          <div class="user-card d-flex d-md-none align-items-center justify-content-between justify-content-md-center pb-4">
            <div class="d-flex align-items-center">
              <div class="user-avatar lg-avatar mr-4">
                <img src="{{asset('admin/assets/img/team/profile-picture-3.jpg')}}" class="card-img-top rounded-circle border-white" alt="Bonnie Green">
              </div>
              <div class="d-block">
                <h2 class="h6">Hi, Jane</h2>
                <a href="#" class="btn btn-secondary text-dark btn-xs"><span class="mr-2"><span class="fas fa-sign-out-alt"></span></span>Sign Out</a>
              </div>
            </div>
            <div class="collapse-close d-md-none">
              <a href="#sidebarMenu" class="fas fa-times" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="true" aria-label="Toggle navigation"></a>
            </div>
          </div>
          <ul class="nav flex-column">
            <li class="nav-item  {{ active('dashboard') }} ">
              <a href="{{route('admin_dashboard')}}" class="nav-link">
                <span class="sidebar-icon"><span class="fas fa-chart-pie"></span></span>
                <span>Dashboard</span>
              </a>
            </li>
            <!-- <li class="nav-item {{ active('banner-list') . active('banner-add') . active('banner-edit') }}">
              <a href="{{route('admin_banners')}}" class="nav-link">
                <span class="sidebar-icon"><span class="far fa-images"></span></span>
                <span>Banners</span>
              </a>
            </li> -->
            <!-- <li class="nav-item {{ active('blog-list') . active('blog-add') . active('blog-edit') }} ">
              <a href="{{route('admin_blogs')}}" class="nav-link">
                <span class="sidebar-icon"></i><span class="fas fa-blog"></span></span>
                <span>Blogs</span>
              </a>
            </li> -->
            <!-- <li class="nav-item {{ active('testimonial-list') . active('testimonial-add') . active('testimonial-edit') }}">
              <a href="{{route('admin_testimonials')}}" class="nav-link">
                <span class="sidebar-icon"><span class="fas fa-window-restore"></span></span>
                <span>Testimonials</span>
              </a>
            </li> -->
            <!-- <li class="nav-item {{ active('service-list') . active('service-add') . active('service-edit') }}">
            <a href="{{route('admin_services')}}" class="nav-link">
              <span class="sidebar-icon"><span class="fas fa-clipboard-check"></span></span>
              <span>Services</span>
            </a>
            </li> -->
            <li class="nav-item {{ active('user-list') . active('user-add') . active('user-edit') }}">
              <a href="{{route('admin_users')}}" class="nav-link">
                <span class="sidebar-icon"><span class="fas fa-users"></span></span>
                <span>Users</span>
              </a>
            </li>
            <li class="nav-item {{ active('service-list') . active('service-add') . active('service-edit') }}">
              <a href="{{route('admin_orders_list')}}
                  " class="nav-link">
                <span class="sidebar-icon"><span class="fas fa-clipboard-check"></span></span>
                <span>Orders</span>
              </a>
            </li>
            <li class="nav-item {{ activedata('product-make-list') . activedata('product-make-add') . activedata('product-make-edit') . activedata('product-model-list') . activedata('product-model-add') . activedata('product-model-edit') . activedata('product-submodel-list') . activedata('product-submodel-add') . activedata('product-submodel-edit'). activedata('product-engine-list') . activedata('product-engine-add') . activedata('product-engine-edit') }}">
              <span class="nav-link  collapsed  d-flex justify-content-between align-items-center" data-toggle="collapse" data-target="#submenu-pages1">
                <span>
                  <span class="sidebar-icon"><span class="far fa-file-alt"></span></span>
                  Product Data
                </span>
                <span class="link-arrow"><span class="fas fa-chevron-right"></span></span>
              </span>
              <div class="multi-level collapse " role="list" id="submenu-pages1" aria-expanded="false">
                <ul class="flex-column nav">
                  <li class="nav-item {{ activedata('product-make-list') . activedata('product-make-add') . activedata('product-make-edit') }}"><a class="nav-link" href="{{route('admin_product_make_list')}}"><i class="fas fa-bars"></i><span>Product Make</span></a></li>
                  <li class="nav-item {{ activedata('product-year-list') . activedata('product-year-add') . activedata('product-year-edit') }}"><a class="nav-link" href="{{route('admin_product_year_list')}}"><i class="fas fa-bars"></i><span>Product Year</span></a></li>
                  <li class="nav-item {{ activedata('product-model-list') . activedata('product-model-add') . activedata('product-model-edit') }}"><a class="nav-link" href="{{route('admin_product_model_list')}}"><i class="fas fa-bars"></i><span>Product Model</span></a></li>
                  <li class="nav-item {{ activedata('product-submodel-list') . activedata('product-submodel-add') . activedata('product-submodel-edit') }}"><a class="nav-link" href="{{route('admin_product_submodel_list')}}"><i class="fas fa-box-open"></i><span>Product Submodel</span></a></li>
                  <li class="nav-item {{ activedata('product-engine-list') . activedata('product-engine-add') . activedata('product-engine-edit') }}"><a class="nav-link" href="{{route('admin_product_engine_list')}}"><i class="fas fa-box-open"></i><span>Product Engine</span></a></li>
{{--                  <li class="nav-item {{ activedata('product-specification-list') . activedata('product-specification-add') . activedata('product-specification-edit') }}"><a class="nav-link" href="{{route('admin_specifications')}}"><i class="fas fa-box-open"></i><span>Product Specification</span></a></li>--}}
                </ul>
              </div>
            </li>
            <li class="nav-item {{ active('categories-list') . active('categories-add') . active('categories-edit') . active('sub-categories-list') . active('sub-categories-add') . active('sub-categories-edit') . active('products-list') . active('products-add') . active('products-edit') }}">
              <span class="nav-link  collapsed  d-flex justify-content-between align-items-center" data-toggle="collapse" data-target="#submenu-pages">
                <span>
                  <span class="sidebar-icon"><span class="far fa-file-alt"></span></span>
                  Product Details
                </span>
                <span class="link-arrow"><span class="fas fa-chevron-right"></span></span>
              </span>
              <div class="multi-level collapse " role="list" id="submenu-pages" aria-expanded="false">
                <ul class="flex-column nav">
                  <!-- <li class="nav-item {{ active('categories-list') . active('categories-add') . active('categories-edit') }}"><a class="nav-link" href="{{route('admin_categories')}}"><i class="fas fa-bars"></i><span> Categories</span></a></li> -->
                  <li class="nav-item {{ active('sub-categories-list') . active('sub-categories-add') . active('sub-categories-edit') }}"><a class="nav-link" href="{{route('admin_sub_categories')}}"><i class="fas fa-bars"></i><span>Categories</span></a></li>
                  <li class="nav-item {{ active('products-list') . active('products-add') . active('products-edit') }}"><a class="nav-link" href="{{route('admin_products')}}"><i class="fas fa-box-open"></i><span> Products</span></a></li>
                  <li class="nav-item {{ active('product-specification-list') . active('product-specification-add') . active('product-specification-edit') }}"><a class="nav-link" href="{{route('admin_specifications')}}"><i class="fas fa-box-open"></i><span>Product Specification</span></a></li>
                    <li class="nav-item {{ active('product-vehicle-fitment-list') . active('product-vehicle-fitment-add') . active('product-vehicle-fitment-edit') }}"><a class="nav-link" href="{{route('admin_vehicle_fitments')}}"><i class="fas fa-box-open"></i><span>Product Vehicle Fitment</span></a></li>
                    <li class="nav-item {{ activedata('product-available-list') . activedata('product-available-add') . activedata('product-available-edit') }}"><a class="nav-link" href="{{route('admin_product_available_list')}}"><i class="fas fa-box-open"></i><span>Product Available</span></a></li>
                    <li class="nav-item {{ activedata('product-option-list') . activedata('product-option-add') . activedata('product-option-edit') }}"><a class="nav-link" href="{{route('admin_product_option_list')}}"><i class="fas fa-box-open"></i><span>Product Option</span></a></li> 
                    <li class="nav-item {{ activedata('admin_returns') . activedata('admin_returns') . activedata('admin_returnst') }}"><a class="nav-link" href="{{route('admin_returns')}}"><i class="fas fa-box-open"></i><span>Product Return</span></a></li> 
                </ul>
              </div>
            </li>

            <li role="separator" class="dropdown-divider mt-4 mb-3 border-black"></li>

            <li class="nav-item">
              <a href="{{route('admin_logout')}}" class="nav-link d-flex align-items-center">
                <span class="sidebar-icon">
                  <span class="fas fa-sign-out-alt text-danger"> </span>
                </span>
                <span class="">Logout</span>
              </a>
            </li>
          </ul>
        </div>
      </nav>
      <main class="content">

        <nav class="navbar navbar-top navbar-expand navbar-dashboard navbar-dark pl-0 pr-2 pb-0">
          <div class="container-fluid px-0">
            <div class="d-flex justify-content-between w-100" id="navbarSupportedContent">
              <div class="d-flex">
              </div>
              <!-- Navbar links -->
              <ul class="navbar-nav align-items-center">
              
                <li class="nav-item dropdown">
                  <a class="nav-link pt-1 px-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <div class="media d-flex align-items-center">
                      <!-- <img class="user-avatar md-avatar rounded-circle" alt="Image placeholder" src="{{asset('admin/assets/img/team/profile-picture-3.jpg')}}"> -->
                      <div class="media-body ml-2 text-dark align-items-center d-none d-lg-block">
                        <span class="mb-0 font-small font-weight-bold"><i class="fas fa-caret-down"></i>{{auth()->user()->first_name}}</span>
                      </div>
                    </div>
                  </a>
                  <div class="dropdown-menu dashboard-dropdown dropdown-menu-right mt-2">
                    <!-- <a class="dropdown-item font-weight-bold" href="{{route('admin_profile')}}"><span class="far fa-user-circle"></span>My Profile</a>
                    <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-cog"></span>Settings</a>
                    <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-envelope-open-text"></span>Messages</a>
                    <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-user-shield"></span>Support</a>
                    <div role="separator" class="dropdown-divider"></div> -->
                    <a class="dropdown-item font-weight-bold" href="{{route('admin_logout')}}"><span class="fas fa-sign-out-alt text-danger"></span>Logout</a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </nav>