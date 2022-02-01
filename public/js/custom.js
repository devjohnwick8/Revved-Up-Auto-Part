// blogslider start
$(".blogslid").slick({
  dots: true,
  arrows: false,
  autoplay: true,
  infinite: false,
  speed: 300,
  slidesToShow: 1,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        dots: true,
      },
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
  ],
});

// blogslider end

// product slider jas start

$(".slider-for").slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  fade: true,
  asNavFor: ".slider-nav",
});
$(".slider-nav").slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  asNavFor: ".slider-for",
  dots: true,
  centerMode: true,
  focusOnSelect: true,
});
// product slider jas end

// simple slick slider start
$(".regular").slick({
  dots: true,
  infinite: true,
  speed: 300,
  autoplay: true,
  slidesToShow: 3,
  slidesToScroll: 3,
});

// simple slick slider end

// wow animation js

$(function () {
  new WOW().init();
});

// responsive menu js

$(function () {
  $("#menu").slicknav();
});

function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}

var btn = $("#button");

$(window).scroll(function () {
  if ($(window).scrollTop() > 800) {
    btn.addClass("show");
  } else {
    btn.removeClass("show");
  }
});

btn.on("click", function (e) {
  e.preventDefault();
  $("html, body").animate({ scrollTop: 0 }, "800");
});


// Product Quaintity Js
(function () {
  "use strict";
  var jQueryPlugin = (window.jQueryPlugin = function (ident, func) {
    return function (arg) {
      if (this.length > 1) {
        this.each(function () {
          var $this = $(this);

          if (!$this.data(ident)) {
            $this.data(ident, func($this, arg));
          }
        });

        return this;
      } else if (this.length === 1) {
        if (!this.data(ident)) {
          this.data(ident, func(this, arg));
        }

        return this.data(ident);
      }
    };
  });
})();

(function () {
  "use strict";
  function Guantity($root) {
    const element = $root;
    const quantity = $root.first("data-quantity");
    const quantity_target = $root.find("[data-quantity-target]");
    const quantity_minus = $root.find("[data-quantity-minus]");
    const quantity_plus = $root.find("[data-quantity-plus]");
    var quantity_ = quantity_target.val();
    $(quantity_minus).click(function () {
      if (quantity_target.val() <= 1) {
        return false
      } else {
        quantity_target.val(--quantity_);
      }
    });
    $(quantity_plus).click(function () {
      quantity_target.val(++quantity_);
    });
  }
  $.fn.Guantity = jQueryPlugin("Guantity", Guantity);
  $("[data-quantity]").Guantity();
})();
// slider product
// blogslider start
$(".blogslider").slick({
  dots: false,
  arrows: false,
  autoplay: true,
  infinite: false,
  speed: 300,
  slidesToShow: 1,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        dots: true,
      },
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
  ],
});

// blogslider end


// Header JavaScript

$(".dropdown-toggle").click(function (e) {
  if ($(document).width() > 768) {
    e.preventDefault();

    var url = $(this).attr("href");

    if (url !== "#") {
      window.location.href = url;
    }
  }
});

$(document).ready(function () {
  $('#example').DataTable();
});

// product slider


$('.slider-for1').slick({
  autoplay: true,
  autoplaySpeed: 20000,
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  asNavFor: '.slider-nav1'
});
$('.slider-nav1').slick({
  autoplay: true,
  autoplaySpeed: 20000,
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  asNavFor: '.slider-for1',
  dots: false,
  arrows: false,
  focusOnSelect: true,
  responsive: [
    {
      breakpoint: 767,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
        vertical: false,
      }
    }
  ]
});
// Related Product slider
$(".sing_prod").slick({
  dots: false,
  arrows: false,
  autoplay: true,
  infinite: true,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        dots: true,
      },
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
  ],
});

function AjaxRequest(url, data) {
    var res;
    $.ajax({
        url: url,
        data: data,
        async: false,
        error: function() {
            console.log('error');
        },
        dataType: 'json',
        success: function(data) {
            res = data;

        },
        type: 'POST'
    });
    return res;
}

function AjaxRequest_get(url, data) {
    var res;
    $.ajax({
        url: url,
        data: data,
        async: false,
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            res = data;

        },
        error: function() {
            console.log('error');
        }

    });
    return res;
}

toastr.options = {
    "closeButton": true,
    "debug": false,
    "newestOnTop": false,
    "progressBar": true,
    "rtl": false,
    "positionClass": "toast-top-right",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": 300,
    "hideDuration": 1000,
    "timeOut": 5000,
    "extendedTimeOut": 1000,
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
}