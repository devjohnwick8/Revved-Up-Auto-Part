@extends('admin.layouts.main')
@section('content')
<div class="py-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
            <li class="breadcrumb-item"><a href="{{route('admin_dashboard')}}"><span class="fas fa-home"></span></a></li>
            <li class="breadcrumb-item"><a href="{{route('admin_vehicle_fitments')}}">vehicle-fitment-List</a></li>
            <li class="breadcrumb-item active" aria-current="page">vehicle-fitment-Edit</li>
        </ol>
    </nav>
    <div class="d-flex justify-content-between w-100 flex-wrap">
        <div class="mb-3 mb-lg-0">
            <h1 class="h4">Vehicle Fitment Edit</h1>
        </div>
    </div>

    <div class="row">
        <div class="col-5 mb-4 ml-4">
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
                            <form action="{{route('admin_vehicle_fitments_add_edit').'/'.$vehicle_fitment->id}}" method="POST" enctype="multipart/form-data">
                                @csrf
                            <div class="mb-4">
                                    <label for="title">Product</label>
                                        <select id="year" name="product_id" data-id="1" class="form-control">
                                            @foreach($product as $value)
                                            <option value="{{$value->id}}" {{$vehicle_fitment->product_id == $value->id ? 'selected' : ''}} >{{$value->title}}</option>
                                            @endforeach
                                        </select>
                                </div>
                                <div class="form-file mb-3">
                                                <input type="file" class="form-file-input" id="customFile" multiple name="images" onchange="loadFile(this)">
                                                <label class="form-file-label" for="customFile">
                                                    <span class="form-file-text">Choose file...</span>
                                                    <span class="form-file-button">Browse</span>
                                                </label>
                                                <div id="imagediv">

                                                    <img class="img-fluid image-preview" width="200" height="200" src="{{asset('uploads/vehicle-fitments/'.$vehicle_fitment->title)}}">
                                                    
                                                </div>
                                            </div>
                                <div class="my-4">
                                    <button class="btn btn-pill btn-outline-success" type="submit">Submit</button>
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
