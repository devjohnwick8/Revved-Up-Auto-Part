@extends('admin.layouts.main')
@section('content')
<div class="py-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
            <li class="breadcrumb-item"><a href="{{route('admin_dashboard')}}"><span class="fas fa-home"></span></a></li>
            <li class="breadcrumb-item active" aria-current="page">Specifications</li>
        </ol>
    </nav>
    <div class="d-flex justify-content-between w-100 flex-wrap">
        <div class="mb-3 mb-lg-0">
            <h1 class="h4">Specifications List</h1>
        </div>
        <div>
            <a href="{{route('admin_specifications_add')}}" class="btn btn-outline-gray"><i class="far fa-plus-square mr-1"></i> Add New Specification</a>
        </div>
    </div>
</div>

<div class="card border-light shadow-sm mb-4">
    <div class="card-body">
        @if(Session::has('delete'))
            <div class="alert alert-danger mb-4" id="success-alert">
                <center><span class="text-white">{{Session::get('delete')}}</span></center>
            </div>
        @endif
        <div class="table-responsive">
            <table class="table table-centered table-nowrap mb-0 rounded" id="table_id">
                <thead class="thead-light">
                    <tr>
                        <th class="border-0">#</th>
                        <th class="border-0">Product Title</th>
                        <th class="border-0">Image</th>
                        <th class="border-0">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Item -->
                        <!-- Start of Item -->
                       
                        @foreach($specification as $key=>$value)
                            <tr>
                                <td class="border-0"><a href="#" class="text-primary font-weight-bold">{{$key+1}}</a> </td>
                                <td class="border-0"><a href="#" class="text-primary font-weight-bold">{{$value->get_product ? $value->get_product->title : ''}}</a> </td>
                                <td class="border-0">
                                    <img class="img-list" src="{{asset('uploads/specifications/'.$value->title)}}"
                                     alt="{{$value->title}}">
                                </td>
                                <td class="border-0">
                                    <a href="{{route('admin_specifications_edit').'/'.$value->id}}" class="text-secondary mr-3"><i class="fas fa-edit"></i>Edit</a>
                                    <span class="text-primary"> |  </span>
                                    <a href="{{route('admin_specifications_delete').'/'.$value->id}}" class="text-danger ml-3"><i class="far fa-trash-alt"></i>Delete</a>
                                </td>
                            </tr>
                        @endforeach
                        <!-- End of Item -->
                    <!-- Item -->
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
@push('js')
    <script>
        $(document).ready( function () {
            $('#table_id').DataTable();
        } );
    </script>
@endpush
