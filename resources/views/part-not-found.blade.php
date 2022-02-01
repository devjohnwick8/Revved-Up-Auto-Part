@extends('layouts.main')
@section('content')
<!--  -->
<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>Part Not Found</h1>
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
                    <h2>PART NOT FOUND</h2>
                    <p>This part has not yet been added to our database. However, please Call OR Text us toll free at <a href="tel: 888-297-3077">888-297-3077,</a>
                        or use the form below to send your inquiry for this part.</p>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- Inline Hose End -->

<section class="contact_sec">
    <div class="container">
        @include('layouts.flash-message')
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6">
                <div class="details_div">
                    <ul>
                      
            
                        <li>MAKE: <span>{{$product ? $product->product_make->title : ''}}</span></li>
                        <li>MODEL: <span>{{$product ? $product->product_model->title : ''}}</span></li>
                        <li>SUBMODEL: <span>{{$product ? $product->product_submodel->title : ''}}</span></li>
                        <li>YEAR: <span>{{$product ? $product->product_year->title : ''}}</span></li>
                        <li>ENGINE: <span>{{$product ? $product->product_engine->title : ''}}</span></li>

                        <!-- <li>VEHICAL OPTIONS: <span>TURBO CHARGING</span></li> -->
                    </ul>
                    <form action="{{route('UI_add_part_not_found')}}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                <div class="not_found">
                                    <label>AC:</label>
                                </div>
                            </div>
                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                <div>
                                    <input type="text" name="ac" placeholder="Yes" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                <div class="not_found">
                                    <label>Transmission</label>
                                </div>
                            </div>
                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                <div>
                                    <input type="text" name="transmission" placeholder="Automatic" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                <div class="not_found">
                                    <label for="">HOW CAN WE HELP YOU?:</label>
                                </div>
                            </div>
                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                <div>
                                    <textarea name="how_can" placeholder="" required></textarea>
                                </div>
                            </div>
                        </div>

                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6">
                <div class="contact_form_div">
                    <h3>Contact us</h3>


                    <input type="text" name="product_id" hidden value="{{$product ? $product->id : ''}}">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="first_name" placeholder="First Name" required>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="last_name" placeholder="Last Name" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="email" placeholder="Email" required>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="phone" placeholder="Phone" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <textarea placeholder="Message" name="message" required></textarea>
                            <input type="submit" value="Submit">
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>



@endsection