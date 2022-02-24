@extends('layouts.main')
@section('content')
<!--loader-->
<style>
        #load {
            position: fixed;

            left: 0;

            top: 0;

            z-index: 9999999;

            width: 100%;

            height: 100%;

            overflow: visible;

            background: rgb(255 255 255 / 65%) url("{{asset('images/1493.gif')}}") no-repeat center center;

            color: #000;


        }
    </style>

    <div class="preloader d-none" id="load" ></div>
    @push('js')
        <script>
            function myFunction() {
                $('.preloader').removeClass('d-none').addClass('d-block');
            }
        </script>
    @endpush
    <!--loader-->
<!--  -->
<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>Review & Place Order</h1>
                
                </div>
            </div>
        </div>
    </div>
</section>
<!--  -->
<!-- Inline Hose Start -->
<section class="my_hose">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="diameter">
                    <h2>Step 4 of 4: Review & Place Order</h2>
                    <!-- <p>This part has not yet been added to our database. However, please Call OR Text us toll free at <a href="tel: 888-297-3077">888-297-3077,</a>
                        or use the form below to send your inquiry for this part.</p> -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Inline Hose End -->
<!-- Review and place order start -->
<section class="place_order">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="review bil_head">
                    <p>Payment Information (Credit, Debit and Gift Card)</p>
                </div>
            </div>
        </div>

        <div class="row">

            <div class="col-md-7 col-sm-7 col-xs-12">
                <div class="main_place">
                    <form role="form" action="{{route('stripe_post')}}" method="post" class="require-validation" data-cc-on-file="false" data-stripe-publishable-key="{{ env('STRIPE_KEY') }}" id="payment-form">
                        @csrf
                        <div class='form-row row'>
                            <input type="text" id="finaltotal" name="finaltotal"  value="0" hidden  />
                            <div class='col-md-12 col-sm-12 col-xs-12 form-group required'>
                                <div class="my_re">
                                    <label class='control-label'>Name on Card</label>
                                    <input class='form-control' size='4' type='text' id="name">
                                </div>
                            </div>
                        </div>  
                        <div class='form-row row'>
                            <div class='col-md-12 col-sm-12 col-xs-12 form-group '>
                                <div class="my_re">
                                    <label class='control-label'>Card Number</label>
                                    <input autocomplete='off' class='form-control card-number' maxlength="16" size='20' type='text' id="cart_no">
                                </div>
                            </div>
                        </div>

                        <div class='form-row row'>
                            <div class='col-xs-12 col-md-4 form-group cvc required'>
                                <label class='control-label'>CVC</label> <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' maxlength="3" type='password' id="cvc">
                            </div>
                            <div class='col-xs-12 col-md-4 form-group expiration required'>
                                <label class='control-label'>Expiration Month</label> <input class='form-control card-expiry-month' maxlength="2" placeholder='MM' size='2' type='text' id="e_month">
                            </div>
                            <div class='col-xs-12 col-md-4 form-group expiration required'>
                                <label class='control-label'>Expiration Year</label> <input class='form-control card-expiry-year' maxlength="4" placeholder='YYYY' size='4' type='text' id="e_year">
                            </div>
                        </div>

                        <div class='form-row row'>
                            <div class='col-md-12 error form-group d-none'>
                                <div class='alert-danger alert'>Please correct the errors and try
                                    again.</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="agreedcheck">
                                    <label class="form-check-label" for="agreedcheck">
                                        I Agreed to the Terms.
                                    </label>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">

                                <button id="paynow" class="btn btn-primary btn-lg btn-block" type="submit" onClick="myFunction()">Pay
                                    Now</button>
                            </div>
                        </div>

                        @push('js')
                        <script type="text/javascript">
                            $(function() {
                                var $form = $(".require-validation");
                                $('form.require-validation').bind('submit', function(e) {
                                    var $form = $(".require-validation"),
                                        inputSelector = ['input[type=email]',
                                            'input[type=password]',
                                            'input[type=text]', 'input[type=file]',
                                            'textarea'
                                        ].join(', '),
                                        $inputs = $form.find('.required').find(
                                            inputSelector),
                                        $errorMessage = $form.find('div.error'),
                                        valid = true;
                                    $errorMessage.addClass('hide');

                                    $('.has-error').removeClass('has-error');
                                    $inputs.each(function(i, el) {
                                        var $input = $(el);
                                        if ($input.val() === '') {
                                            $input.parent().addClass('has-error');
                                            $errorMessage.removeClass('hide');
                                            e.preventDefault();
                                        }
                                    });

                                    if (!$form.data('cc-on-file')) {
                                        e.preventDefault();
                                        Stripe.setPublishableKey($form.data(
                                            'stripe-publishable-key'));
                                        Stripe.createToken({
                                            number: $('.card-number').val(),
                                            cvc: $('.card-cvc').val(),
                                            exp_month: $('.card-expiry-month')
                                                .val(),
                                            exp_year: $('.card-expiry-year').val()
                                        }, stripeResponseHandler);
                                    }
                                });
                                $('#paynow').prop('disabled', true);
                                $('#agreedcheck').click(function() {
                                    let checkvalues = false;
                                    if ($('#name').val() == '' ||
                                        $('#cart_no').val() == '' ||
                                        $('#cvc').val() == '' ||
                                        $('#e_month').val() == '' ||
                                        $('#e_year').val() == ''
                                    ) {
                                        checkvalues = false;
                                        $('#agreedcheck').prop('checked', false);
                                    } else {
                                        checkvalues = true;
                                    }
                                    if (checkvalues == true) {
                                        if ($(this).is(':checked')) {
                                            $('#paynow').prop('disabled', false);
                                        } else {
                                            $('#paynow').prop('disabled', true);
                                        }
                                    } else {
                                        alert('Fill all input fields');
                                    }
                                });


                                function stripeResponseHandler(status, response) {
                                    if (response.error) {
                                        $('.error')
                                            .removeClass('d-none')
                                            .find('.alert')
                                            .text(response.error.message);
                                        $('.preloader').removeClass('block').addClass('d-none');
                                    } else {
                                        // token contains id, last4, and card type
                                        var token = response['id'];
                                        // insert the token into the form so it gets submitted to the server
                                        $form.find('input[type=text]').empty();
                                        $form.append(
                                            "<input type='hidden' name='stripeToken' value='" +
                                            token + "'/>");
                                        $form.get(0).submit();
                                    }
                                }

                            });
                        </script>
                        @endpush

                    </form>
                    <!-- <button><i class="fas fa-check"></i> Place Order</button> -->
                </div>
                <div class="important">
                    <span>Important:</span>
                    <p>By placing your order, you agree to RadiatorExpress.com's privacy notice and "conditions of use".
                    </p>
                    <p>Your order is not complete until you click the "place Order" button . Once you have placed an
                        order,we will send you an email confirmation as well as status updates</p>


                </div>
            </div>
            <div class="col-md-5 col-sm-5 col-xs-12">
                <div class="summary">
                    <h2>Order Summary</h2>
                    <h3>Need Help? Text or </h3>
                    <h4>Call 609 978 666 X 1</h4>
                    <!-- <h5>Need to Make a </h5>
                    <h6>Change? <a href="javascript:void(0)"> EDIT Cart</a></h6> -->
                </div>

                <div class="order_recap">
                    <h4>Order Recap </h4>
                    <table class="your_table">
                        <thead>
                            <tr>
                                <th scope="col">Item</th>
                                <th scope="col">Price</th>
                                <th scope="col">Qty</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if($products)
                          
                            @foreach($products as $value)
                            <tr>
                                <th class="recap">{{$value->title}} </th>
                                <td>${{$value->our_price}}</td>
                                <td>{{$cart[$value->id]['quantity'] }}</td>
                                <td>${{$value->our_price * $cart[$value->id]['quantity'] + $cart[$value->id]['price']}}</td>
                                <!-- <th class="recap">2019 AUDI S3-2..0 liter L4-CID Radiator GAS, MAIN</th>
                                <td>$160.80</td>
                                <td>$160.80</td>
                                <td>$321.60</td> -->
                            </tr>
                            @endforeach
                            @else
                            <td>This Cart is Empty</td>
                            <td></td>
                            <td></td>
                            @endif

                        </tbody>
                    </table>

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                  
                               
                            <div class="side_subtotal">
                                <ul>
                                    @php $subtotal = session()->get('subtotal') @endphp
                                    <li class="subtotaly">Subtotal: $ {{$subtotal ? $subtotal : 0}}
                                        <br>
                                    </li>
                                    <li>Shipping
                                        </li>
                                        <br>
                                      
                            
                                        @if($zero === 0)
                                    
                                    <div class="form-check">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                        FedEx Express Saver (3 Business days) - $71
                                        </label>
                                        <input class="form-check-input"  type="radio"  name="myradio" value="71"  checked>
                                    </div>
                                    <div class="form-check">
                                        <label class="form-check-label" for="flexRadioDefault2">
                                        FedEx 2-Day - $84
                                        </label>
                                    <input class="form-check-input" type="radio"  name="myradio" value="84"  >
                                    </div>
                                    <div class="form-check">
                                        <label class="form-check-label" for="flexRadioDefault2">
                                        FedEx Priority Overnight - $104
                                        </label>
                                    <input class="form-check-input " type="radio" name="myradio" value="104" >
                                    </div>
                                    @else
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="myradio" value="71"  checked>
                                        <label class="form-check-label" for="flexRadioDefault1">
                                        FedEx Express Saver (3 Business days) - $71
                                        </label>
                                    </div>
                                    @endif
                                
                                    
                                    <!-- <li>Shipping: $89.85</li>
                                    <li>Tax/Handle:$0.00</li> -->
                                    <li class="subtotaly">TOTAL: $ <span id="total">{{$subtotal ? $subtotal : 0}}</span></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    </div>
</section>
<!-- Review and place order start -->


@push('js')
<!-- <script>
function myradio() {
    //var x = document.getElementById("mycheck").value;
    let rad = $(this).val();
    console.log(rad);

  //document.getElementById("demo").innerHTML = "You selected: " + x;
}
let radio = $('.myclass').val();
console.log(radio);


</script> -->

<script>


jQuery(document).ready(function(){
    let x =   parseInt(71) + parseInt('{{$subtotal}}');
    $('#total').html(x);
    $('#finaltotal').val(x);

$('input:radio[name="myradio"]').change(function(){
    let x = parseInt($(this).val()) + parseInt('{{$subtotal}}');
    $('#total').html(x);
    $('#finaltotal').val(x);

    
});

});

// ]]>
</script>

@endpush

@endsection