@extends('admin.layouts.main')
@section('content')
<div class="py-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
            <li class="breadcrumb-item"><a href="{{route('admin_dashboard')}}"><span class="fas fa-home"></span></a></li>
            <li class="breadcrumb-item"><a href="{{route('admin_product_option_list')}}">Product-Option-List</a></li>
            <li class="breadcrumb-item active" aria-current="page">Product-Option-Add</li>
        </ol>
    </nav>
    <div class="d-flex justify-content-between w-100 flex-wrap">
        <div class="mb-3 mb-lg-0">
            <h1 class="h4">Product Option Add</h1>
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
                            <div class="row">
                                <div class="col-sm-10 my-4"></div>
                                <div class="col-sm-2 my-4">
                                    <button class="add_field_button btn btn-pill btn-outline-success form-control">Add More Fields</button>
                                </div>
                            </div>
                            <form action="{{route('admin_product_option_add_edit_data')}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row input_fields_wrap">
                                    <div class="col-sm-4">
                                        <div class="mb-4">
                                            <label for="title">Title</label>
                                            <input type="text" class="form-control" data-id="1" required name="title[]" placeholder="Enter your product Title...">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="mb-4">
                                            <label for="title">Price</label>
                                            <input type="number" class="form-control" data-id="1" required name="price[]" placeholder="Enter your product Amount...">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="title">Available</label>
                                        <select id="year" name="available_id" data-id="1" class="form-control">

                                            @foreach($product as $value)
                                            <option value="{{$value->id}}">{{$value->heading}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <button class="btn btn-pill btn-outline-success w-100" type="submit">Submit</button>
                                    </div>

                                </div>
                                <!-- <button class="add_field_button btn btn-pill btn-outline-primary w-100">Add More Field</button> -->
                            </form>

                            <!-- End of Form -->

                            @push('js')
                            <script>
                                $(document).ready(function() {
                                    var max_fields = 10; //maximum input boxes allowed
                                    var wrapper = $(".input_fields_wrap"); //Fields wrapper
                                    var add_button = $(".add_field_button"); //Add button ID

                                    var x = 1; //initlal text box count
                                    $(add_button).click(function(e) { //on add input button click
                                        e.preventDefault();
                                        if (x < max_fields) { //max input box allowed
                                            x++; //text box increment
                                            $(wrapper).append(
                                                '<div class = "row input_fields_wrap" > ' +
                                                    '<div class="col-sm-4">' +
                                                        '<div class="mb-4">' +
                                                            '<label class="mt-2">Title *</label>' +
                                                            '<input type="text" class="form-control"  required name="title[]"  placeholder="Enter your product Title...">' +
                                                        '</div>' +
                                                    '</div>' +

                                                    '<div class ="col-sm-4" > ' +
                                                        '<div class="mb-4">' +
                                                            '<label class="mt-2">Price*</label>' +
                                                            '<input type="number" class="form-control" required name="price[]"  placeholder="Enter your product Price...">' +
                                                        '</div>'+
                                                    '</div>' +
                                                    
                                                        '<div class="mt-3 mb-3">' +
                                                            '<a href="#" class="btn btn-pill btn-outline-danger remove_field ">Remove</a>' +
                                                        '</div>' +
                                                '</div>'
                                            ); //add input box
                                        }
                                    });

                                    $(wrapper).on("click", ".remove_field", function(e) { //user click on remove text
                                        e.preventDefault();
                                        $(this).parent('div').parent('div').remove();
                                        x--;
                                    })
                                });
                            </script>
                            @endpush
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection