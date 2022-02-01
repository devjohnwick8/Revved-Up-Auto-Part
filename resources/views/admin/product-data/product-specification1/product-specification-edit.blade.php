@extends('admin.layouts.main')
@section('content')
<div class="py-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
            <li class="breadcrumb-item"><a href="{{route('admin_dashboard')}}"><span class="fas fa-home"></span></a></li>
            <li class="breadcrumb-item"><a href="{{route('admin_product_engine_list')}}">Product-Engine-List</a></li>
            <li class="breadcrumb-item active" aria-current="page">Product-Engine-Edit</li>
        </ol>
    </nav>
    <div class="d-flex justify-content-between w-100 flex-wrap">
        <div class="mb-3 mb-lg-0">
            <h1 class="h4">Product Engine Edit</h1>
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
                            <form action="{{route('admin_product_specification_add_edit_data',[$product_specification->id])}}" method="POST" enctype="multipart/form-data">@csrf
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="mb-4">
                                            <label for="title">Title</label>
                                            <input type="text" class="form-control" value="{{$product_specification->spec_head}}" required name="spec_head" placeholder="Enter your product engine...">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="mb-4">
                                            <label for="title">Detail</label>
                                            <input type="text" class="form-control" value="{{$product_specification->spec_detail}}" required name="spec_detail" placeholder="Enter your product engine...">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="title">Product</label>
                                        <select id="year" name="product_id" class="form-control">

                                            @foreach($product as $value)
                                            <option value=" {{$value->id}}" {{$product_specification->product_id == $value->id ? 'selected' : ''}}>{{$value->title}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-sm-3">
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