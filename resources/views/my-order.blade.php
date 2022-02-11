@extends('layouts.main')
@section('content')


<!-- -------------------------------  Use For Only Email Purpose ---------------------------------- -->
<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>My Order</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="my_hose">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="diameter">
                    <h2>My Order</h2>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mein_order">
    <div class="container">
        <div class="row">
                <div class="col-md-10 col-sm-10 col-xs-10 centerCol">
                    <table id="example" class="display">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Order Date & Time</th>
                                <th>Order Number</th>
                                <th>Name</th>
                                <th>Shipping Address</th>
                                <th>Total Price</th>
                                <th>Ordre Status</th>
                                <th>Action</th>

                            </tr>
                        </thead>
                        <tbody>
                       
                            <tr>
                                <td class="border-0 font-weight-bold"><strong>1</strong></td>
                                <td class="border-0 font-weight-bold"><strong>{{$order->created_at}}</strong></td>
                                <td class="border-0 font-weight-bold"><strong>{{$order->order_number}}</strong></td>
                                <td class="border-0 font-weight-bold"><strong>{{$order->get_user ? $value->get_user->first_name : ''}}</strong></td>
                                <td class="border-0 font-weight-bold"><strong>{{$order->get_shipping ? $value->get_shipping->shipping_address : ''}}</strong></td>
                                <td class="border-0 font-weight-bold"><strong>{{$order->order_total}}</strong></td>
                                <td class="border-0 font-weight-bold"><strong>
                                @if($order->status === 0)
                                Pending
                                @elseif($order->status === 1)
                                Processing
                                @elseif($order->status === 2)
                                OnHold
                                @elseif($order->status === 3)
                                Completed
                                @elseif($order->status === 4)
                                Canceled
                                @elseif($order->status === 5)
                                Refunded
                                @elseif($order->status === 6)
                                Failed
                                @endif
                                </strong></td>
                                <td class="border-0"><strong>
                                    <a href="{{route('UI_my_order_items', [$order->id])}}" class="text-secondary mr-3"><i
                                            class="fas fa-edit"></i>View Order</a></strong>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <a style="margin-left:100px" href="{{route('UI_home')}}" class="btn btn_red">Go To Back</a>
        </div>
</section>
@endsection