<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @include('layouts.css')
    <title>Revved Up</title>
  </head>
  <body>

  @include('layouts.header')

  @yield('content')
  <script src="//code.tidio.co/aqvwqcwdctadm0fxvhkc97rjr35ticj7.js" async></script>
  @include('layouts.footer')
    
  @include('layouts.js')
  </body>



<!-- Modal -->

<div class="main_modal">
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">

          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <h3>Fabrication Pricing</h3>
          <h4><a href="tel:8882973077"> <img src="{{asset('images/ph.png')}}" class="img-fluid" alt=""></a> Please call and speak to one of our representatives for any custom fabrication</h4>
          <div class="">
            <div class="modal_table">
              <table class="table table-responsive table-bordered">
                <tr class="gray">
                  <th>Item #</th>
                  <th>Labor Description </th>
                  <th>Cost</th>
                </tr>
                <tr>
                  <td>1</td>
                  <td>1 Port Size Change </td>
                  <td>$ 60.00 </td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>2 Port Size Changes </td>
                  <td>$ 80.00 </td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Add Any 1 Port Available (Fill Neck, Tubing, Threaded port, Trans Cooler) </td>
                  <td>$ 60.00 </td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>Move Port with a Delete </td>
                  <td>$ 70.00 </td>
                </tr>
                <tr>
                  <td>5</td>
                  <td>Replate Surface and Move Port </td>
                  <td>$ 100.00</td>
                </tr>
                <tr>
                  <td>6</td>
                  <td>Custom Bracketing** </td>
                  <td>$ 70.00 </td>
                </tr>
                <tr>
                  <td>7</td>
                  <td>Single Fan Installed Onto Shroud </td>
                  <td>$ 60.00 </td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>Dual Fans Installed Onto Shroud </td>
                  <td>$ 80.00 </td>
                </tr>
                <tr>
                  <td>9</td>
                  <td>48 Hour Express Guaranteed Turnaround Time </td>
                  <td>$ 70.00 </td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>Male AN additional material charge (-20, -16, -12, -8, -6, -4) </td>
                  <td>$ 80.00 </td>
                </tr>
              </table>
            </div>
            <div class="red_sec">
              <h3>Custom order notes and instructions</h3>
              <ul>
                <li>1. Anything not listed above will require further pricing from the fabrication department.</li>
                <li>2.Item 6 may vary upon complications & excessive material cost.</li>
                <li>3.Please include in the notes an accurate description of the modifications needed, using the Labor Description list above.</li>
                <li>4. All normal custom orders will be processed & Shipped within 10 business days</li>
              </ul>
            </div>
            <div class="white_sec">
              <h4>Now Offering Complete Custom Core Builds. Our process is as follows:</h4>
              <div class="white_box">
                <ul>
                  <li>1. Customer Drawing or Sample Radiator is required</li>
                  <li>2. We quote out the core and labor that is required</li>
                  <li>3. Invoice of 50% to 100% is required</li>
                  <li>4. We purchase the core and that will take 2 weeks</li>
                  <li>5. We schedule the radiator build to be finished within another 2 weeks</li>
                  <li>6. Invoice of any balance must be paid before Shipment</li>
                </ul>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="main_modal search">
  <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="">
            <div class="inner_form">
              <div class="col-xs-12 col-sm-8 col-md-8 centerCol">
                <div class="form-group">
                  <input type="text" placeholder="Auto Parts Quick Search">
                  <button>Search</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</html>
