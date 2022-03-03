@extends('admin.layouts.main')
@section('content')





    <section class="alis">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="main_grn">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Order Detail</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false"> Order Items</button>
                            </li>

                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="grn_table">
                                    <table class="table">
                                        <thead>

                                        </thead>

                                        <tbody>




                                        <tr>
                                            <td>Order Number</td>
                                            <td>{{$orders->order_number}}</td>
                                        </tr>
                                        <tr>
                                            <td>Order Date And Time</td>
                                            <td>{{$orders->created_at}}</td>
                                        </tr>
                                        <tr>
                                            <td>First Name</td>

                                            <td>{{$orders->first_name}}</td>
                                        </tr>
                                        
                                        <tr>
                                            <td>User Email</td>
                                            <td>{{$orders->email}}</td>
                                        </tr>
                                        <tr>
                                            <td>Shipping Address</td>
                                            <td>{{$orders->get_shipping ? $orders->get_shipping->shipping_address : ''}}</td>
                                        </tr>
                                        <tr>
                                            <td>User Status</td>

                                            <td>
                                            @if($orders->status === 0)
                                                Pending
                                            @elseif($orders->status === 1)
                                                Processing
                                            @elseif($orders->status === 2)
                                                OnHold
                                            @elseif($orders->status === 3)
                                                Completed
                                            @elseif($orders->status === 4)
                                                Canceled
                                            @elseif($orders->status === 5)
                                                Refunded
                                            @elseif($orders->status === 6)
                                                Failed
                                            @endif
                                             
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Authorize</td>

                                            <td>
                                            @if($orders->login_status === 0)
                                                without-Login
                                            @elseif($orders->login_status === 1)
                                                Login
                                            @endif
                                             
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Total Amount</td>
                                            <td>{{$orders->order_total}}</td>
                                        </tr>


                                        </tbody>

                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="grn_table2">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                           
                                            <th scope="col">S.No</th>
                                            <th scope="col">Date & Time</th>
                                            <th scope="col">Order Number</th>
                                            <th scope="col">Product Image</th>
                                            <th scope="col">Product Name</th>
                                            <th scope="col">Brand</th>
                                            <th scope="col">Sku</th>
                                            <th scope="col">Oem</th>
                                            <th scope="col">QTY</th>
                                            <th scope="col">Unit Price</th>
                                         
                          
                                        </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($order_items as $key=>$value)
                                            
                                        <tr>
                                            
                                            <td>1</td>
                                            <td>{{$value->created_at}}</td>
                                            <td>{{$value->order_number}}</td>
                                            <td> <img class="img-list"
                                            src="{{asset('uploads/products/'.$value->get_product->images_take1->title)}}"
                                            alt="{{$value->title}}">
                                        </td>
                                            <td>{{$value->get_product ? $value->get_product->title : ''}}</td>
                                            <td>{{$value->get_product ?  $value->get_product->brand : ''}}</td>
                                            <td>{{$value->get_product ?  $value->get_product->sku : ''}}</td>
                                            <td>{{$value->get_product ?  $value->get_product->oem : ''}}</td>
                                            <td>{{$value->quantity}}</td>
                                            <td>${{$value->get_product ?  $value->get_product->our_price : ''}}</td>
                                           
                                        </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
        </div>
    </section>


   



@endsection
