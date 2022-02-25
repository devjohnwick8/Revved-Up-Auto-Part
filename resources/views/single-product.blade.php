@extends('layouts.main')
@section('content')

<!--  -->
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
<!--  -->


<!-- Inline Hose Start -->
<section class="my_hose">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="diameter">
                    <h2>{{$single_product->title}}</h2>
                    <ul>
                        <li><a href="{{route('UI_home')}}">Home <i class="fas fa-chevron-right"></i></a></li>
                        <!-- <li><a href="javascript:void(0)">Shop <i class="fas fa-chevron-right"></i> </a></li> -->
                        <li><a href="javascript:void(0)">Product Details</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Inline Hose End -->

<!-- retail Price Start -->
<section class="main_retail">
    <div class="container">

        <div class="row">
            <!-- <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="pro_img">
                    <img  src="{{asset('uploads/products/'.$single_product->images_take1->title)}}" alt="">
                </div>
            </div> -->


            <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="slider_products">
                    <div class="slider slider-for1">
                    
                        @foreach($image_product as $value)
                        <div>
                            <div class="productMainDetail">
                                <a href="{{asset('uploads/products/'.$value->title)}}" tabindex="0" data-fancybox="gallery">
                                    <img src="{{asset('uploads/products/'.$value->title)}}" alt="" />
                                </a>
 
                            </div>
                        </div>
                        @endforeach
                        
                    </div>
                    <div class="slider slider-nav1">
                        @foreach($image_product as $value)
                        <div>
                            <div class="productlistBox">
                                <img src="{{asset('uploads/products/'.$value->title)}}" class="img-responsive" alt="">
                        </div>
                        </div>
                        @endforeach
                 
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="my-our">
                    <div class="retail_price">
                        <h4>Retail Price: <span style="text-decoration: line-through">${{$single_product->retail_price}}
                            </span> </h4>
                        <h5>Our Price: $ <span id="opt_price">{{$single_product->our_price }}</span></h5>
                        <input type="text" hidden id="act_price" value="{{$single_product->our_price}}"/>
                    </div>

                    <div class="main_sku">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <div class="sku">
                                    <h4>SKU:</h4>
                                    <h4>Brand:</h4>
                                </div>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <div class="sku_num">
                                    <h4>{{$single_product->sku}}</h4>
                                    <h4>{{$single_product->brand}}</h4>
                                    <!--// <h4>{{$single_product->condition == 1 ? 'New' : 'Old'}}</h4> -->
                                    <!-- 
                                    <ul>
                                        <li><i class="fab fa-facebook-f"></i></li>
                                        <li><i class="fab fa-twitter"></i></li>
                                        <li><i class="fab fa-google-plus-g"></i></li>
                                        <li><i class="fas fa-wifi"></i></li>
                                    </ul> -->
                                </div>
                            </div>
                            <class="col-md-12 col-sm-12 col-xs-12">
                            <h4 class="des">{{$single_product->description}}</h4>

                            </div>

                        </div>
                        <div> 
                            @if($product_available)
                            <br/>
                            <h6>Available Options</h6>
                           
                            @foreach($product_available as $key =>$value)
                            <div class="row">
                          
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="option">{{$value->heading}}</label>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="product_id" type="text" hidden value="{{$value->product_id}}" />
            
                                <select class="xyz"  name="cars">
                                 <option value="0"> ----- Please Select ----- </option>
                                    @foreach($product_option[$key] as  $values)
                                        <option  value="{{$values->price}}">{{$values->title}} - ${{$values->price}}</option>
                                    @endforeach
                                        </select>
                                    
                                </div>
                            </div>
                            @endforeach
                            @endif

                        </div>

                        <div class="main_dabba">
                            <h3>Quantity:</h3>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="my_quaintity">
                                        <div class="quantity-control" data-quantity="">
                                            <button class="quantity-btn" data-quantity-minus=""><svg viewBox="0 0 409.6 409.6">
                                                    <g>
                                                        <g>
                                                            <path d="M392.533,187.733H17.067C7.641,187.733,0,195.374,0,204.8s7.641,17.067,17.067,17.067h375.467 c9.426,0,17.067-7.641,17.067-17.067S401.959,187.733,392.533,187.733z" />
                                                        </g>
                                                    </g>
                                                </svg></button>
                                            <input readonly type="number" id="quantity" class="quantity-input" data-quantity-target="" value="1" step="1" min="1" max="" name="quantity">
                                            <button class="quantity-btn" data-quantity-plus=""><svg viewBox="0 0 426.66667 426.66667">
                                                    <path d="m405.332031 192h-170.664062v-170.667969c0-11.773437-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.558594-21.332031 21.332031v170.667969h-170.667969c-11.773437 0-21.332031 9.558594-21.332031 21.332031 0 11.777344 9.558594 21.335938 21.332031 21.335938h170.667969v170.664062c0 11.777344 9.558594 21.335938 21.332031 21.335938 11.777344 0 21.335938-9.558594 21.335938-21.335938v-170.664062h170.664062c11.777344 0 21.335938-9.558594 21.335938-21.335938 0-11.773437-9.558594-21.332031-21.335938-21.332031zm0 0" />
                                                </svg>
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="pro_buttn">

                                        <!-- <a href="javascript:void(0)" id="form_submit" class="add_to_cart" data-id="{{$single_product->id}}">Add To Cart</a> -->
                                        <button type=" submit" id="form_submit" class="btn btn-primary" data-id="{{$single_product->id}}">add to cart</button>
                                        <!-- <button type="submit" id="form_submit" class="btn btn-primary" data-id="{{$single_product->id}}">add to cart</button> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                       <br/>
                       
                       

                        <h5>Same Day Shipping</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- retail Price End -->

<!-- Description Start -->
<section class="warranty">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-sm-10 col-xs-12 centerCol">
                <div class="my-table">
                    <ul class="nav nav-pills" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="pills-spec-tab" data-bs-toggle="pill" data-bs-target="#pills-spec" type="button" role="tab" aria-controls="pills-spec" aria-selected="true">Product Description</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link " id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Reviews</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link " id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Vehicle Fitment</button>
                        </li>
                        <!-- <li class="nav-item" role="presentation">
                            <button class="nav-link " id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Warranty & Returns</button>
                        </li> -->
                    </ul>
                    <div class="tab-content" id="pills-tabContent">

                        <div class="tab-pane fade show active" id="pills-spec" role="tabpanel" aria-labelledby="pills-spec-tab">
                            <div class="tab_content">
                                <div class="pro_img">
                                    <img src="{{$product_specification ? asset('uploads/specifications/'.$product_specification->title) : ''}}" alt="">
                                </div>
                                <br />
                                <h5 style="text-align:center"> CALIFORNIA WARNING: Cancer and Reproductive Harm - <a href="www.p65warnings.ca.gov">www.p65warnings.ca.gov</a></h5>

                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <p>COVID-19 UPDATE: YES all online orders are still shipping out daily with UPS and FEDEX
                                Services . Thank you for your patronage during this national crisis</p>
                            <p>(Only works if your inlet hose diameter is 1 1/2)</p>
                            <p>Preserve your radiator and heater core from debris damage and potential clogs. This filter is
                                designed to be installed in the upper radiator hose and helps stop clogging due to foreign
                                particles, and rust scale. The filters are transparent and easily cleaned</p>
                            <p>inline filter 1 1/2 hose filter. Will fit inlet or outlet hoses with 1 1/2 diameter. Check
                                radiator specifications, related step down hoses and parts prior to purchase.</p>
                            <p>traps the rust and removes contaminants from radiator fluid before entering the radiator and
                                or when exiting.</p>
                            <p>Don't replace a radiator and watch it fail because of dirty fluid or rust coming from your
                                block. protect your vehicle and clean your engine in one simple step. Attach this filter to
                                your top hose connection.</p>
                        </div>
                        <div class="tab-pane fade " id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            <div class="tab_content">
                                <div class="pro_img">
                                    <img src="{{$product_fitment ? asset('uploads/vehicle-fitments/'.$product_fitment->title) : ''}}" alt="">
                                </div>
                                <br />
                                <h5 style="text-align:center"> Aluminum Radiators come with a Lifetime Warranty and a 60 day "No Hassle Return Policy"</h5>

                            </div>
                        </div>
                        <!-- <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                            <p>COVID-19 UPDATE: YES all online orders are still shipping out daily with UPS and FEDEX
                                Services . Thank you for your patronage during this national crisis</p>
                            <p>(Only works if your inlet hose diameter is 1 1/2)</p>
                            <p>Preserve your radiator and heater core from debris damage and potential clogs. This filter is
                                designed to be installed in the upper radiator hose and helps stop clogging due to foreign
                                particles, and rust scale. The filters are transparent and easily cleaned</p>
                            <p>inline filter 1 1/2 hose filter. Will fit inlet or outlet hoses with 1 1/2 diameter. Check
                                radiator specifications, related step down hoses and parts prior to purchase.</p>
                            <p>traps the rust and removes contaminants from radiator fluid before entering the radiator and
                                or when exiting.</p>
                            <p>Don't replace a radiator and watch it fail because of dirty fluid or rust coming from your
                                block. protect your vehicle and clean your engine in one simple step. Attach this filter to
                                your top hose connection.</p>
                        </div> -->

                    </div>
                </div>
            </div>
        </div>




    </div>
</section>

<!-- Description end -->




<section class="re_sec">
    <div class="container">
        <div class="row">
            <h2>Related Product</h2>
            <div class="clearfix"></div>
            <div class="col-xs-10 col-sm-10 col-md-10 centerCol">
                <!-- <img src="images/re_1.jpg" class="img-fluid one" alt="">
            <img src="images/re_3.jpg" class="img-fluid three" alt=""> -->
                <div class="sing_prod">
                    @foreach($related_product as $value)
                    <div>





                        <div class="heat">
                            <!-- <h5>Heat & Air Conditioning</h5> -->
                            <a href="{{route('UI_single_product',[$value->id])}}">
                                <img src="{{asset('uploads/products/'.$value->images_take1->title)}}" alt="">
                            </a>
                            <div class="main_w">
                                <h6> {{$value->title}} </h6>
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="mei">
                                            <span>Retail Price: </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="mei">
                                            <del>$ {{$value->retail_price}}</del>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="mei">
                                            <span>our Price: </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="mei">
                                            <strong>$ {{$value->our_price}}</strong>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>





                    </div>

                    @endforeach
                </div>
                <!-- <img src="images/re_4.jpg" class="img-fluid four" alt="">
            <img src="images/re_5.jpg" class="img-fluid five" alt=""> -->
            </div>
        </div>
    </div>
</section>

@push('js')
<script>

var xyztotal= 0;
    $('.xyz').change(function(){
        xyztotal =0;
        $('.xyz').each(function(k,v){
          xyztotal+= parseInt($(this).val());
        })
        console.log(xyztotal);
        var act_price = parseInt($('#act_price').val()); 
        let added_val = xyztotal+parseInt(act_price);
        $('#opt_price').html(added_val);
    })



    $('#form_submit').click(function() {
        product_id = $(this).data("id");
        quantity = parseInt($('#quantity').val());
        price_cart = xyztotal;
        console.log(product_id, quantity);
        var data = {
            'id': product_id,
            'quantity': quantity,
            'price_cart' : price_cart,
            '_token': '{{csrf_token()}}'
        };

        var url = "{{route('UI_add_to_cart')}}";
        var res = AjaxRequest(url, data);
        // if (res.status == 1) {
        //     $('#cart_counter').html(res.cart_length);
        //     toastr["success"](res.comment);
        //     setTimeout(function() {
        //         $('#added_to_cart').removeClass('d-none').addClass('d-block').fadeIn('slow');
        //     }, 1000);
        // }
        
              if(res.status==1)
        {
           
            $('#cart_counter').html(res.cart_length);

            toastr["success"](res.comment);
            // toastr.info(res.comment);


            setTimeout(function () {
                $('#added_to_cart').removeClass('d-none').addClass('d-block').fadeIn('slow');
            }, 1000)
        }else if(res.status==0){
          toastr["warning"](res.comment);

        }else if(res.status==2){
          toastr["error"](res.comment);

        }
        else
        {
            alert('Error Not Saved');
        }

    })

 


    // $("#option").change(function () {

    //     let opt_val =parseInt(this.value);
    //     let opt = $('#opt_price').html();
    //     $('#opt_price').html(parseInt(opt));

    //     let added_val = opt_val+parseInt(opt);
    //     $('#opt_price').html(added_val);

    //     console.log(opt_val+parseInt(opt));
    //     // var end = this.value;
    //     // var firstDropVal = $('#pick').val();
    // });
// testssa('.option');
// function testssa(changed_id){
//     $(changed_id).change(function() {
//         prod_id = $(this).val();
//         product_id = $('#product_id').val();
//         console.log(product_id);    
//         // quantity = parseInt($('#quantity').val());
//         var data = {
//             'id': prod_id,
//             'product_id': product_id,
//             '_token': '{{csrf_token()}}'
//         };

//         var url = "{{route('UI_available_option')}}";
//         var res = AjaxRequest(url, data);
//         if (res.status == 1) {

//         //    var x = parseInt(res.prod_option) + parseInt(our_price)
//             $('#opt_price').html(res.opt_option);
//         }
       

//     })
// }

  
    
    
</script>
@endpush




@endsection