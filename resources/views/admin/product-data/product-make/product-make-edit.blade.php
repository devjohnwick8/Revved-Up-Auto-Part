@extends('admin.layouts.main')
@section('content')
    <div class="py-4">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
                <li class="breadcrumb-item"><a href="{{route('admin_dashboard')}}"><span class="fas fa-home"></span></a></li>
                <li class="breadcrumb-item"><a href="{{route('admin_product_make_list')}}">Product-Make-List</a></li>
                <li class="breadcrumb-item active" aria-current="page">Product-Make-Edit</li>
            </ol>
        </nav>
        <div class="d-flex justify-content-between w-100 flex-wrap">
            <div class="mb-3 mb-lg-0">
                <h1 class="h4">Product Make Edit</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="card border-light shadow-sm components-section">
                    <div class="card-body">
                        <div class="row mb-4">
                            <div class="col-lg-12 col-sm-12">
                                <!-- Form -->
                                @if(Session::has('update'))
                                    <div class="alert alert-warning mb-4" id="success-alert">
                                        <center><span class="text-white">{{Session::get('update')}}</span></center>
                                    </div>
                                @endif
                                <form action="{{route('admin_product_make_add_edit_data',[$product_make->id])}}" method="POST" enctype="multipart/form-data">@csrf
                                    <div class="row">
                                        <div class="col-sm-10">
                                            <div class="mb-4">
                                                <label for="title">Product Make</label>
                                                <input required type="text" class="form-control" value="{{$product_make->title}}" required name="title" placeholder="Enter your product make...">
                                            </div>
                                        </div>
                                        <div class="col-sm-2 my-4">
                                            <button class="btn btn-pill btn-outline-success w-100" type="submit">Submit</button>
                                        </div>
                                    </div>
                                </form>
                                <!-- End of Form -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
