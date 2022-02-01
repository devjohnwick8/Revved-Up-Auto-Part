@extends('admin.layouts.main')
@section('content')

    <div class="py-4">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
                <li class="breadcrumb-item"><a href="{{route('admin_dashboard')}}"><span class="fas fa-home"></span></a></li>
                <li class="breadcrumb-item active" aria-current="page">Orders</li>
            </ol>
        </nav>
        <div class="d-flex justify-content-between w-100 flex-wrap">
            <div class="mb-3 mb-lg-0">
                <h1 class="h4">Order-Edit</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="card border-light shadow-sm mb-4">
                <div class="card-body">
                    <h2>Order-Details</h2>
                    <ul>
                        <li>
                            <h4>Order-Number: <strong>{{$orders->order_number}}</strong></h4>
                        </li>
                        <li>
                            Email: <strong>{{$orders->email}}</strong>
                        </li>
                        <li>
                            Phone: <strong>{{$orders->phone}}</strong>
                        </li>
                        <li>
                            Country: <strong>{{$orders->country}}</strong>
                        </li>
                        <li>
                            First Name: <strong>{{$orders->first_name}}</strong>
                        </li>
                        <li>
                            Last Name: <strong>{{$orders->last_name}}</strong>
                        </li>
                        <li>
                            Address: <strong>{{$orders->address." ".$orders->address_2}}</strong>
                        </li>
                        <li>
                            City: <strong>{{$orders->city}}</strong>
                        </li>
                        <li>
                            Postal: <strong>{{$orders->postal}}</strong>
                        </li>
                        <li>
                            Total Amount:  <strong id="total"></strong>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card border-light shadow-sm mb-4">
                <div class="card-body">
                    <h2>Add new product to this order:</h2>
                    <form action="{{route('admin_addnewproduct',[$orders->id])}}" method="POST">@csrf
                        <div class="row">
                            <div class="col-sm-6 mb-4">
                                <label class="my-1 mr-2" for="country">Product*</label>
                                <select class="form-select" id="category" name="product_id">
                                    <option selected hidden disabled>Select Product</option>
                                    @foreach($allProducts as $values)
                                        <option value="{{$values->id}}">{{$values->title}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-sm-6 mb-4">
                                <label for="title">Quantity*</label>
                                <input type="number" class="form-control" required name="quantity" placeholder="Enter your quantity...">
                            </div>
                        </div>
                        <div class="text-center ">
                            <button class="btn btn-pill btn-outline-success" type="submit">Add Product</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="card border-light shadow-sm mb-4">
        <div class="card-body">
            @if(Session::has('delete'))
                <div class="alert alert-danger mb-4" id="success-alert">
                    <span class="text-white">{{Session::get('delete')}}</span>
                </div>
            @endif
            <div class="row">
                @php $total_amount =0; @endphp
                @foreach($order_items as $key=>$values)
                    <div class="col-sm-4">
                        <div class="card border-light shadow-sm mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-8">
                                    <img style="height: 150px;width: 150px;" src="{{asset('uploads/products/attributes/'.$values->get_product->images_color_take1->color_image)}}" alt="..." class="img-thumbnail">
                                    </div>
                                    <div class="col-sm-4 text-right">
                                        <a href="{{route('admin_delete_order',[$values->id])}}" class="text-danger ">Remove</a>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <span class="text-center">Product: {{$values->get_product->title}}</span><br>
                                    <span class="text-center">Quantity: {{$values->quantity}}</span><br>
                                    <span class="text-center">Stock: {{$values->get_product->stock}}</span><br>
                                    <span class="text-center">Color: {{$values->get_product->images_color_take1->color}}</span><br>
                                    <span class="text-center">Price: {{$values->get_product->price}}</span>
                                    <span class="text-center"><strong>Total Product Price: {{$productTotal = $values->get_product->price*$values->quantity}}</strong></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    @php $total_amount += $productTotal; @endphp
                @endforeach
            </div>
        </div>
    </div>
@push('js')
    <script>
        $(document).ready(function() {
            $('#total').html({{$total_amount}});
        });
    </script>
@endpush

@endsection
