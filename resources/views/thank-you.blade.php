@extends('layouts.main')
@section('content')

<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1></h1>
                </div>
            </div>
        </div>
    </div>
</section>
    <!-- Cooming Soon Html Start -->

    <section class="main_coming">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="coming_content wow fadeInLeft" wow-data-duration="2s">
                        <h4>Thank you for purchasing...</h4>
                        <div class="soon_content wow fadeInLeft" wow-data-duration="2s">
                            <p>Please check your email for further instructions on how to complete your account setup.
                            </p>
                            <a href="{{route('UI_home')}}" >Continue to</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>

@endsection