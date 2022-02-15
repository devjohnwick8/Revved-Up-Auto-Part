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
                <img src="{{asset('images/banner.jpg')}}" class="img-fluid" alt="...">
                <div class="carousel-caption">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 align-self-center">
                                <div class="banner_text wow fadeInLeft" data-wow-duration="2s">
                                    @include('layouts/flash-message')
                                    <h1 class="wow zoomIn">Get the Right Part at the Right Price!</h1>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="banner_img wow bounceIn" data-wow-duration="2s">
                                    <div class="form_sec">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <h3>Auto Parts Quick Search</h3>
                                            </div>
                                            <div class="inner_form">
                                                <form method="POST" action="{{route('UI_search_part')}}">@csrf
                                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                        <div class="form-group">
                                                            <input type="text" placeholder="Search by Part#" name="part" required>
                                                            <button type="submit"><img src="images/search.png" alt=""></button>
                                                        </div>
                                                    </div>
                                                </form>
                                                <form action="{{route('UI_shopnow')}}" method="POST">@csrf
                                                    <div class="row">
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <select name="make" id="make" required>
                                                                <option hidden disabled selected value="">Select Make*
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
                                                            <select name="submodel" id="submodel" required>
                                                                <option>Select Submodel*</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <select name="engine" id="engine" required>
                                                                <option>Select Engine*</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <button type="submit">Shop Now</button>
                                                        </div>
                                                    </div>
                                                </form>
                                                <input type="hidden" value="0" id="make_demo" />
                                                <input type="hidden" value="0" id="year_demo" />
                                                <input type="hidden" value="0" id="model_demo" />
                                                <input type="hidden" value="0" id="submodel_demo" />
                                                @push('js')
                                                <script>
                                                    UpdateItemAPI($('#make'), "{{route('UI_search_year')}}", $('#year'), 'make', $('#make_demo'), $('#year_demo'), $('#model_demo'), $('#submodel_demo'));
                                                    UpdateItemAPI($('#year'), "{{route('UI_search_model')}}", $('#model'), 'year', $('#make'), $('#year'), $('#model'), $('#submodel'));
                                                    UpdateItemAPI($('#model'), "{{route('UI_search_submodel')}}", $('#submodel'), 'model', $('#make'), $('#year'), $('#model'), $('#submodel'));
                                                    UpdateItemAPI($('#submodel'), "{{route('UI_search_engine')}}", $('#engine'), 'submodel', $('#make'), $('#year'), $('#model'), $('#submodel'));

                                                    function UpdateItemAPI(change, route, section, blank, make, year, model, submodel) {
                                                        change.change(function() {
                                                            let reqdata = change.val();
                                                            let make_demo = make.val();
                                                            let year_demo = year.val();
                                                            let model_demo = model.val();
                                                            let submodel_demo = submodel.val();

                                                            var data = {
                                                                'reqdata': reqdata,
                                                                'make': make_demo,
                                                                'year': year_demo,
                                                                'model': model_demo,
                                                                'submodel': submodel_demo,
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

                                                                    $('#submodel').html(
                                                                        '<option hidden disabled selected value="">Select SubModel*</option>'
                                                                    );
                                                                    $('#submodel').prop("disabled", true);
                                                                    $('#submodel').css("background-color", "#ccc");
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
                                                                    $('#submodel').html(
                                                                        '<option hidden disabled selected value="">Select SubModel*</option>'
                                                                    );


                                                                    $('#engine').html(
                                                                        '<option hidden disabled selected value="">Select Engine*</option>'
                                                                    );
                                                                } else if (blank === 'model') {
                                                                    $('#submodel').html(
                                                                        '<option hidden disabled selected value="">Select SubModel*</option>'
                                                                    );
                                                                    $('#submodel').prop("disabled", false);
                                                                    $('#submodel').css("background-color", "#fff");
                                                                    $('#engine').html(
                                                                        '<option hidden disabled selected value="">Select Engine*</option>'
                                                                    );
                                                                } else if (blank === 'submodel') {
                                                                    $('#engine').html(
                                                                        '<option hidden disabled selected value="">Select Engine*</option>'
                                                                    );
                                                                    $('#engine').prop("disabled", false);
                                                                    $('#engine').css("background-color", "#fff")
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
                                                                $('#submodel').html(
                                                                    '<option hidden disabled selected value="">Select SubModel*</option>'
                                                                );
                                                                $('#engine').html(
                                                                    '<option hidden disabled selected value="">Select Engine*</option>'
                                                                );
                                                            }
                                                        })
                                                    }
                                                </script>
                                                @endpush



                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- banner end -->

@include('layouts.top_pickup')

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
                    <img src="{{asset('images/cat_1.jpg')}}" class="img-fluid" alt="">
                    <div class="cat_text">
                        <h3>Heat & Air Conditioning</h3>
                        <a href="{{route('UI_product_list',[5])}}" class="btn btn_red"> Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <div class="cat_main">
                    <img src="{{asset('images/cat_2.jpg')}}" class="img-fluid" alt="">
                    <div class="cat_text sp">
                        <h3>Hoses, Water pumps & Cooling System Parts </h3>
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
                    <img src="{{asset('images/cat_4.jpg')}}" class="img-fluid" alt="">
                    <div class="cat_text">
                        <h3>Fuel & Emmision Parts</h3>
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

@include('layouts.review-slider')
@endsection