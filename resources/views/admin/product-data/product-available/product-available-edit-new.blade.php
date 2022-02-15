@extends('admin.layouts.main')
@section('content')
<div class="py-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
            <li class="breadcrumb-item"><a href="{{route('admin_dashboard')}}"><span class="fas fa-home"></span></a></li>
            <li class="breadcrumb-item"><a href="{{route('admin_product_available_list')}}">Product-available-List</a></li>
            <li class="breadcrumb-item active" aria-current="page">Product-available-Edit</li>
        </ol>
    </nav>
    <div class="d-flex justify-content-between w-100 flex-wrap">
        <div class="mb-3 mb-lg-0">
            <h1 class="h4">Product available Edit</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="card border-light shadow-sm components-section">
                <div class="card-body">
                    <div class="row mb-4">
                        <div class="col-lg-12 col-sm-12">
                            <!-- Form -->
                            @if(Session::has('success'))
                            <div class="alert alert-success mb-4" id="success-alert">
                                <center><span class="text-white">{{Session::get('success')}}</span></center>
                            </div>
                            @endif
                            <form action="{{route('admin_product_available_add_edit_data',[$product_avail->id])}}" method="POST" >
                            @csrf
                                    <div class="row ">
                                        <div class="col-sm-4">
                                            <div class="mb-4">
                                                <label for="title"><Head>Available</Head></label>
                                                <input type="text" value="{{$product_avail->heading}}" class="form-control" data-id="1"  name="heading" placeholder="Enter your Heading...">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                        <div class="mb-4">
                                    <label for="title">Product</label>
                                    <select id="year" name="product_id" data-id="1" class="form-control">
                                 
                                            @foreach($product as $value)
                                           
                                            <option value="{{$value->id}}" {{$product_avail->product_id == $value->id ? 'selected' : ''}} >{{$value->title}}</option>
                                            @endforeach
                                        </select>
                                </div>
                                        </div>
                                       
                                    </div>
                                <div class="row input_fields_wrap"></div>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <button class="btn btn-pill btn-outline-success w-100" type="submit">Submit</button>
                                    </div>

                                </div>
                                <!-- <button class="add_field_button btn btn-pill btn-outline-primary w-100">Add More Field</button> -->
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