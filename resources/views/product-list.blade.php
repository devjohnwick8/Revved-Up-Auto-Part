  
@extends('layouts.main')
@section('content')
  <!-- banner start -->
  <section class="inner_banner">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div class="banner_text black_bg">
            <h1>{{$category->title}}</h1>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- banner end -->
  
  <!-- BEGIN About Us -->
<section class="prodcut_list">
  <div class="container">
    <div class="row">
        @foreach($products as $key => $value)
   
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
            <div class="prod-box">
              <div class="prod-img">
                <img src="{{asset('uploads/products/'.$value->images_take1->title)}}" class="img-responsive prod-img-1" alt="{{$value->title}}">
                <div class="prod-img-ovelay">
                  <div class="pio-con-1">
                    <!-- <ul class="list-inline">
                      <a href="#" class="hrt1"><i class="fa fa-heart-o"></i></a>
                      <li><a href="#"><i class="fa fa-search"></i></a></li>
                      <li><a href="#"><i class="fa fa-link"></i></a></li>
                      <li><a href="#"><i class="far fa-heart"></i></a></li>
                    </ul> -->
                    <a href="{{route('UI_single_product',[$value->id])}}" class="btn-green1">Quick View</a>
                  </div>
                </div>
              </div>
              <div class="prod-content">
                <a href="{{route('UI_single_product',[$value->id])}}"><h5>{{$value->title}}</h5></a>
                <h6>${{$value->our_price}}</h6>
                <!-- <ul class="list-inline">
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                </ul> -->
              </div>
            </div>
          </div>
          @endforeach
          <!-- <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
            <div class="prod-box">
              <div class="prod-img">
                <img src="http://localhost:8000/images/cat_1.jpg" class="img-responsive prod-img-1" alt="prod-img">
                <div class="prod-img-ovelay">
                  <div class="pio-con-1">
                    <ul class="list-inline">
                      <a href="#" class="hrt1"><i class="fa fa-heart-o"></i></a>
                      <li><a href="#"><i class="fa fa-search"></i></a></li>
                      <li><a href="#"><i class="fa fa-link"></i></a></li>
                      <li><a href="#"><i class="far fa-heart"></i></a></li>
                    </ul>
                    <a href="product-detail.html" class="btn-green1">Quick View</a>
                  </div>
                </div>
              </div>
              <div class="prod-content">
                <a href="#"><h5>Your Heading</h5></a>
                <h6>£75.00</h6>
                <ul class="list-inline">
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
            <div class="prod-box">
              <div class="prod-img">
                <img src="http://localhost:8000/images/cat_1.jpg" class="img-responsive prod-img-1" alt="prod-img">
                <div class="prod-img-ovelay">
                  <div class="pio-con-1">
                    <ul class="list-inline">
                      <a href="#" class="hrt1"><i class="fa fa-heart-o"></i></a>
                      <li><a href="#"><i class="fa fa-search"></i></a></li>
                      <li><a href="#"><i class="fa fa-link"></i></a></li>
                      <li><a href="#"><i class="far fa-heart"></i></a></li>
                    </ul>
                    <a href="product-detail.html" class="btn-green1">Quick View</a>
                  </div>
                </div>
              </div>
              <div class="prod-content">
                <a href="#"><h5>Your Heading</h5></a>
                <h6>£75.00</h6>
                <ul class="list-inline">
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
            <div class="prod-box">
              <div class="prod-img">
                <img src="http://localhost:8000/images/cat_1.jpg" class="img-responsive prod-img-1" alt="prod-img">
                <div class="prod-img-ovelay">
                  <div class="pio-con-1">
                    <ul class="list-inline">
                      <a href="#" class="hrt1"><i class="fa fa-heart-o"></i></a>
                      <li><a href="#"><i class="fa fa-search"></i></a></li>
                      <li><a href="#"><i class="fa fa-link"></i></a></li>
                      <li><a href="#"><i class="far fa-heart"></i></a></li>
                    </ul>
                    <a href="product-detail.html" class="btn-green1">Quick View</a>
                  </div>
                </div>
              </div>
              <div class="prod-content">
                <a href="#"><h5>Your Heading</h5></a>
                <h6>£75.00</h6>
                <ul class="list-inline">
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                  <li><a href="#"><i class="far fa-star"></i></a></li>
                </ul>
              </div>

            </div>
          </div> -->
      </div>

    </div>
</section>
  <!-- END About Us -->
 
@endsection