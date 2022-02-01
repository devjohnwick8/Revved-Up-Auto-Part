@extends('layouts.main')
@section('content')

<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>Track Order</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- banner end -->
<!-- BEGIN Track Order Start -->
<section class="my_hose">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="diameter">
                    <h2>Track Order</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<br/>
<section class="main_track">
    <div class="container">
    @include('layouts/flash-message')
        <div class="row">
            <div class="col-md-10 col-sm-10 col-xs-12 centerCol">
                <div class="new_track">
                   <form action="{{route('UI_track_post')}}" method="POST">
                       @csrf
                        <div class="mb-2 row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Order Number : </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="order_number" id="inputPassword2" placeholder="Search For Order" required>
                            </div>
                        </div>
                        <button type="submit" class=" btn btn_red">Submit</button>
                    </form> 
                </div>

            </div>
        </div>
    </div>
</section>
<br/>
<!-- END Track Order End -->


@endsection