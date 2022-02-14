@extends('admin.layouts.main')
@section('content')
<div class="py-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
            <li class="breadcrumb-item"><a href="{{route('admin_dashboard')}}"><span class="fas fa-home"></span></a></li>
            <li class="breadcrumb-item"><a href="{{route('admin_products')}}">Product-List</a></li>
            <li class="breadcrumb-item active" aria-current="page">Product-Add</li>
        </ol>
    </nav>
    <div class="d-flex justify-content-between w-100 flex-wrap">
        <div class="mb-3 mb-lg-0">
            <h1 class="h4">Product Add</h1>
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
                            <form action="{{route('admin_products_add_edit')}}" method="POST" enctype="multipart/form-data">@csrf
                                <div class="row">
                                    <div class="col-sm-6">
                                    <div class="mb-4">
                                                <label class="my-1 mr-2" for="country">Category</label>
                                                <select class="form-select" id="parent_category" name="sub_categories">
                                                    <option selected hidden disabled>Select Category</option>
                                                    @foreach($sub_categories as $values)
                                                        <option value="{{$values->id}}">{{$values->title}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        <div class="mb-4">
                                            <label for="title">Title</label>
                                            <input type="text" class="form-control" required name="title" placeholder="Enter your title...">
                                        </div>
                                        <div class="my-4">
                                            <label for="textarea">Description</label>
                                            <textarea class="form-control" placeholder="Enter your message..." id="textarea" rows="5" name="description"></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 mb-4">
                                                <label for="title">Retail Price</label>
                                                <input type="text" class="form-control" required name="retail_price" placeholder="Enter your retail price...">
                                            </div>
                                            <div class="col-sm-6 mb-4">
                                                <label for="title">Our Price</label>
                                                <input type="text" class="form-control" required name="our_price" placeholder="Enter your price...">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="my-4 col-4">
                                                <legend class="h6">Condition</legend>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="condition" id="exampleRadios1" value="1" checked="">
                                                    <label class="form-check-label" for="exampleRadios1">
                                                        New
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="condition" id="exampleRadios2" value="0">
                                                    <label class="form-check-label" for="exampleRadios2">
                                                        Old
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="my-4 col-4">
                                                <legend class="h6">Rare</legend>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="rare" id="exampleRadios3" value="1" checked="">
                                                    <label class="form-check-label" for="exampleRadios3">
                                                        Rare
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="rare" id="exampleRadios4" value="0">
                                                    <label class="form-check-label" for="exampleRadios4">
                                                        Not Rare
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="my-4 col-4">
                                                <legend class="h6">Status</legend>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="status" id="exampleRadios5" value="1" checked="">
                                                    <label class="form-check-label" for="exampleRadios5">
                                                        Active
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="status" id="exampleRadios6" value="0">
                                                    <label class="form-check-label" for="exampleRadios6">
                                                        Inactive
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="row">
                                            <div class="col-sm-6 mb-4">
                                                <label for="title">Brand</label>
                                                <input type="text" class="form-control" required name="brand" placeholder="Enter your brand...">
                                            </div>
                                            <div class="col-sm-6 mb-4">
                                                <label for="title">Stock</label>
                                                <input type="number" class="form-control" required name="stock" placeholder="Enter your stock...">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class=" col-sm-6 mb-4">
                                                <label for="title">SKU</label>
                                                <input type="text" class="form-control" required name="sku" placeholder="Enter your sku...">
                                            </div>
                                            <div class=" col-sm-6 mb-4">
                                                <label for="title">OEM</label>
                                                <input type="number" class="form-control" required name="oem" placeholder="Enter your oem...">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class=" col-sm-6 mb-4">
                                                <label for="title">Make</label>
                                                <select id="year" name="make" class="form-control">
                                                    <option selected hidden disabled>Please select make</option>
                                                    @foreach($product_make as $value)
                                                    <option value="{{$value->id}}">{{$value->title}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class=" col-sm-6 mb-4">
                                                <label for="title">Year</label>
                                                <select id="year" name="year" class="form-control">
                                                    <option selected hidden disabled>Please select year</option>
                                                    @foreach($product_year as $value)
                                                    <option value="{{$value->id}}">{{$value->title}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class=" col-sm-6 mb-4">
                                                <label for="title">Model</label>
                                                <select id="year" name="model" class="form-control">
                                                    <option selected hidden disabled>Please select model</option>
                                                    @foreach($product_model as $value)
                                                    <option value="{{$value->id}}">{{$value->title}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class=" col-sm-6 mb-4">
                                                <label for="title">SubModel</label>
                                                <select id="year" name="submodel" class="form-control">
                                                    <option selected hidden disabled>Please select submodel</option>
                                                    @foreach($product_submodel as $value)
                                                    <option value="{{$value->id}}">{{$value->title}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="mb-4">
                                            <label for="title">Engine</label>
                                            <select id="year" name="engine" class="form-control">
                                                <option selected hidden disabled>Please select engine</option>
                                                @foreach($product_engine as $value)
                                                <option value="{{$value->id}}">{{$value->title}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div>
                                            <label for="textarea">Image</label>
                                            <div class="form-file mb-3">
                                                <input type="file" class="form-file-input" required id="customFile" multiple name="images[]" onchange="loadFile(this)">
                                                <label class="form-file-label" for="customFile">
                                                    <span class="form-file-text">Choose file...</span>
                                                    <span class="form-file-button">Browse</span>
                                                </label>
                                                <div id="imagediv"></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="my-4 text-center">
                                    <button class="btn btn-pill btn-outline-success  w-50" type="submit">Submit</button>
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