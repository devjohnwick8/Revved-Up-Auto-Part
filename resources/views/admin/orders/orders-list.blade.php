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
            <h1 class="h4">Order-List</h1>
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
        <div class="table-responsive">
            <table class="table table-centered table-nowrap mb-0 rounded" id="table_id">
                <thead class="thead-light">
                    <tr>
                        <th class="border-0">#</th>
                        <th class="border-0">Order Number</th>


                        <th class="border-0">customer Name</th>
                        <th class="border-0">Shipping Address</th>

                        <th class="border-0">Order Total</th>
                        <th class="border-0">Status</th>
                        <th class="border-0">Action</th>

                  
                    </tr>
                </thead>
                <tbody>
                    @foreach($orders as $key=>$value)
                    <tr>
                        <td class="border-0"><a href="#" class="text-primary font-weight-bold">{{$key+1}}</a> </td>
                        <td class="border-0 "><strong>{{$value->order_number}}</strong></td>
                        <td class="border-0 "><strong>{{$value->get_user ? $value->get_user->first_name : ''}}</strong></td>
                        <td class="border-0 "><strong>{{$value->get_shipping ? $value->get_shipping->shipping_address : ''}}</strong></td>
                        <td class="border-0 "><strong>{{$value->order_total}}</strong></td>
                        <!-- <td class="border-0 "><strong></strong></td> -->

                        <td class="border-0 font-weight-bold">
                            <button class="btn
                                    @if($value->status === 0)
                                        btn-warning
                                    @elseif($value->status === 1)
                                        btn-info
                                    @elseif($value->status === 2)
                                        btn-secondary
                                    @elseif($value->status === 3)
                                        btn-success
                                    @elseif($value->status === 4)
                                        btn-danger
                                    @elseif($value->status === 5)
                                        btn-primary
                                    @elseif($value->status === 6)
                                        btn-primary
                                    @endif
                                    btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                @if($value->status === 0)
                                Pending
                                @elseif($value->status === 1)
                                Processing
                                @elseif($value->status === 2)
                                OnHold
                                @elseif($value->status === 3)
                                Completed
                                @elseif($value->status === 4)
                                Canceled
                                @elseif($value->status === 5)
                                Refunded
                                @elseif($value->status === 6)
                                Failed
                                @endif
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="{{route('admin_order_status',[$value->id,0])}}">Pending</a>
                                <a class="dropdown-item" href="{{route('admin_order_status',[$value->id,1])}}">Processing</a>
                                <a class="dropdown-item" href="{{route('admin_order_status',[$value->id,2])}}">OnHold</a>
                                <a class="dropdown-item" href="{{route('admin_order_status',[$value->id,3])}}">Completed</a>
                                <a class="dropdown-item" href="{{route('admin_order_status',[$value->id,4])}}">Canceled</a>
                                <a class="dropdown-item" href="{{route('admin_order_status',[$value->id,5])}}">Refunded</a>
                                <a class="dropdown-item" href="{{route('admin_order_status',[$value->id,6])}}">Failed</a>
                            </div>
                        </td>
                        <td class="border-0">
                            <a href="{{route('admin_order_views', [$value->id])}}" class="text-secondary mr-3"><i class="fas fa-edit"></i>View</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Internal Notes -->

<!-- Internal Notes -->
@endsection
@push('js')
<script>
    $(document).ready(function() {
        $('#table_id').DataTable();
    });

    /** for internal notes*/
    var order_id = 0;

    // });
</script>
@endpush