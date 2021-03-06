@extends('layouts.main')
@section('content')
@if(session()->get('failed'))
<script>
  alert('failed');
</script>
@endif
<!-- banner start -->
<section class="main_slider">
  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="{{asset('images/banner-2.jpg')}}" class="img-fluid" alt="...">
        <div class="carousel-caption">
          <div class="container">
            <div class="row">
              <div class="col-xs-12 col-sm-6 col-md-6 align-self-center">
                <!-- <div class="banner_text wow fadeInLeft" data-wow-duration="2s">
                  @include('layouts/flash-message')
                  <h1 class="wow zoomIn">Inhouse Fabrication</h1>
     
                </div>
                <div class="mera_btn">
                    <a href="javascript:void(0)" class="btn btn_red" data-bs-toggle="modal" data-bs-target="#exampleModal">Radiator Modifications </a>
                  </div> -->
              </div>
              <div class="col-xs-12 col-sm-6 col-md-6">
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item"> 
        <img src="{{asset('images/banner-3.jpg')}}" class="img-fluid" alt="...">
        <div class="carousel-caption">
          <div class="container">
          <div class="row">
              <div class="col-xs-12 col-sm-6 col-md-6 align-self-center">
                <div class="banner_text wow fadeInLeft" data-wow-duration="2s">
                  @include('layouts/flash-message')
                  <h1 class="wow zoomIn">In House Fabrication</h1>
     
                </div>
                <div class="mera_btn">
                    <a href="javascript:void(0)" class="btn btn_red" data-bs-toggle="modal" data-bs-target="#exampleModal">Radiator Modifications </a>
                  </div>
              </div>
              <div class="col-xs-12 col-sm-6 col-md-6">
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="1" aria-label="Slide 2"></button>
      </div>
    </div>
  </div>
  <div class="banner_img wow bounceIn" data-wow-duration="2s">
    <div class="my_posrelative">
      <div class="form_sec">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h3>Find Your Part</h3>
          </div>
          <div class="inner_form">
            <form action="{{route('UI_shopnow')}}" method="POST">
              @csrf
              <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                  <select name="make" id="make" required>
                    <option hidden disabled selected value="">Select Product*
                    </option>
                    @foreach($make as $value)
                    <option class="make" value="{{$value->id}}">
                      {{$value->title}}
                    </option>
                    @endforeach
                  </select>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                  <select name="year" id="year" required>
                    <option hidden disabled selected value="">Select Year*
                    </option>
                  </select>
                </div>
              </div>
              <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                  <select name="model" id="model" required>
                    <option>Select Model*</option>
                  </select>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <select name="engine" id="engine" required>
                    <option>Select Engine*</option>
                  </select>
                  <!-- <select name="submodel" id="submodel" required>
                    <option>Select Submodel*</option>
                  </select> -->
                </div>
              </div>
              
              <div class="row">
               
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> 
                  <div class="sh">
                    <button type="submit">Shop Now</button>
                  </div>
                </div>
              </div>
              <br>
              <div id="test"></div>
            </form>
            <input type="hidden" value="0" id="make_demo" />
            <input type="hidden" value="0" id="year_demo" />
            <input type="hidden" value="0" id="model_demo" />
            
            @push('js')
            <script>
                UpdateItemAPI($('#make'), "{{route('UI_search_year')}}", $('#year'), 'make', $('#make_demo'), $('#year_demo'), $('#model_demo'), );
              UpdateItemAPI($('#year'), "{{route('UI_search_model')}}", $('#model'), 'year', $('#make'), $('#year'), $('#model'));
              UpdateItemAPI($('#model'), "{{route('UI_search_engine')}}", $('#engine'), 'model', $('#make'), $('#year'), $('#model'));
              

              function UpdateItemAPI(change, route, section, blank, make, year, model, ) {
                change.change(function() {
                  let reqdata = change.val();
                  let make_demo = make.val();
                  let year_demo = year.val();
                  let model_demo = model.val();
                 

                  var data = {
                    'reqdata': reqdata,
                    'make': make_demo,
                    'year': year_demo,
                    'model': model_demo,
                    '_token': '{{csrf_token()}}'
                  };
                  var url = route;
                  var res = AjaxRequest(url, data);
                  if (res.status == 1) {
                    if (blank === 'make') {
                      $('#year').html(
                        '<option hidden disabled selected value="">Select Year*</option>'
                      );
                      $('#model').html(
                        '<option hidden disabled selected value="">Select Model*</option>'
                      );
                      $('#model').prop("disabled", true);
                      $('#model').css("background-color", "#ccc");
                      $('#engine').html(
                        '<option hidden disabled selected value="">Select Engine*</option>'
                      );
                      $('#engine').prop("disabled", true);
                      $('#engine').css("background-color", "#ccc");
                    } else if (blank === 'year') {
                      $('#model').html(
                        '<option hidden disabled selected value="">Select Model*</option>'
                      );
                      $('#model').prop("disabled", false);
                      $('#model').css("background-color", "#fff");
                      
                      $('#engine').html(
                        '<option hidden disabled selected value="">Select Engine*</option>'
                      );
                    } else if (blank === 'model') {
                      $('#engine').html(
                        '<option hidden disabled selected value="">Select Engine*</option>'
                      );
                      $('#engine').prop("disabled", false);
                      $('#engine').css("background-color", "#fff");
                    
                    } 

                    var len = res.resp.length;
                    for (var i = 0; i < len; i++) {
                      var title = res.resp[i].title;
                      var id = res.resp[i].id;
                      section.append("<option value=" + id + ">" +
                        title + "</option>");
                    }
                  } else {
                    $('#model').html(
                      '<option hidden disabled selected value="">Select Model*</option>'
                    );
                    
                    $('#engine').html(
                      '<option hidden disabled selected value="">Select Engine*</option>'
                    );
                  }
                })
              }
            </script>
            @endpush
            <h4 class="or"> OR </h4>
            <!-- <form method="POST" action="{{route('UI_search_part')}}">@csrf -->
            <form method="POST" action="">
              @csrf
              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="form-group">
                  <input type="search" class="searchable" placeholder="Search by Part#" id="search" name="part" required>
                </div>
              </div>
            </form>
          </div>
          
        </div>
      </div>
      
    </div>
  </div>
  <!-- <div class="container">
  <div class="row">
  <div class="col-xs-12 col-sm-7 col-md-7 align-self-center">
  </div>
    <div class="col-xs-12 col-sm-5 col-md-5 align-self-center">
        
    </div>
    </div>
  </div> -->
</section>
<!-- banner end -->
@push('js')
<script>
  $(document).ready(function() {
    $('#search').on('keyup', function() {
      let x = $(this).val();
      let data = {
        'search': x
      };
      let url = 'single-product-part-data';

      $.ajax({
        url: url,
        data: data,
        type: 'GET',

        success: function(data) {
          res = data;
          $('#test').html(data);

        },
        error: function() {
          console.log('error');
        }
      });
    });
  });
</script>
@endpush
@include('layouts.top_pickup')
<section class="AboutUsMain">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="AboutContent">
            <span>ABOUT US</span>
            <p>Revved Up Auto Parts (???Revved Up???) is a privately held auto parts supplier. We supply quality replacement parts for all vehicles. Our parts are shipped directly from our network of warehouses nationwide with a guaranteed delivery time of 1-2 business days.</p>
            <p>Our mission is to provide unsurpassed customer service and competitively priced, quality-built products delivered with lightning speed.</p>
            <a href="{{route('UI_about_us')}}" class=" btn btn_red ">Read More</a>
          </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="Aboutimg">
            <img src="{{asset('images/about-img2.jpg')}}" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!-- radiator sec start  -->
  <section class="big_imgsec">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="big_img">
          <img src="{{asset('images/big.jpg')}}" class="img-fluid" alt="">
          <a href="{{route('UI_product_list',[1])}}" class="btn btn_red"> Shop Now</a>
        </div>

      </div>
    </div>
  </div>
</section>
<br />
<!-- categorie_sec start  -->
<section class="categorie_sec">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="revvedhead">
          <span>Revved Up Categories</span>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
        <div class="cat_main">
          <img src="{{asset('images/fan_relay_kits.jpg')}}" class="img-fluid" alt="">
          <div class="cat_text">
            <h3>Fan Relay kits</h3>
            <a href="{{route('UI_product_list',[5])}}" class="btn btn_red"> Shop Now</a>
          </div>
        </div>
      </div>
      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
        <div class="cat_main">
          <img src="{{asset('images/electric_fans.jpg')}}" class="img-fluid" alt="">
          <div class="cat_text sp">
            <h3>Electric Fans</h3>
            <a href="{{route('UI_product_list',[7])}}" class="btn btn_red"> Shop Now</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <!--<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">-->
      <!--  <div class="cat_main">-->
      <!--    <img src="images/cat_3.jpg" class="img-fluid" alt="">-->
      <!--    <div class="cat_text sp">-->
      <!--      <h3>Starting & Charging System Parts; Alternators & Batteries  </h3>-->
      <!--      <a href="javascript:void(0)" class="btn btn_red"> Shop Now</a>-->
      <!--    </div>-->
      <!--  </div>-->
      <!--</div>-->
      <div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
        <div class="cat_main big text-center">
          <img src="{{asset('images/category.jpg')}}" class="img-fluid" alt="">
          <div class="cat_text">
            <h3>Overflow Tanks and External Transmission Cooler</h3>
            <a href="{{route('UI_product_list',[6])}}" class="btn btn_red"> Shop Now</a>
          </div>
        </div>
      </div>
    </div>
    <!--<div class="row">-->
    <!--  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">-->
    <!--    <div class="cat_main big text-center">-->
    <!--      <img src="images/cat_5.jpg" class="img-fluid" alt="">-->
    <!--      <div class="cat_text">-->
    <!--        <h3>Braking System & Wheel Bearings</h3>-->
    <!--        <a href="javascript:void(0)" class="btn btn_red"> Shop Now</a>-->
    <!--      </div>-->
    <!--    </div>-->
    <!--  </div>-->
    <!--</div> -->
    <br>
  </div>
</section>



@include('layouts.review-slider')
@endsection