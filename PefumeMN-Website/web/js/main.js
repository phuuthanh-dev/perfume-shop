
(function ($) {
    ("use strict");

    // canvas menu activation
    $(".canvas_open").on("click", function () {
        $(".offcanvas_menu_wrapper,.off_canvars_overlay").addClass("active");
    });

    $(".canvas_close,.off_canvars_overlay").on("click", function () {
        $(".offcanvas_menu_wrapper,.off_canvars_overlay").removeClass("active");
    });

    //   off canvas menu
    var $offcanvasNav = $(".offcanvas_main_menu"),
            $offcanvasNavSubMenu = $offcanvasNav.find(".sub-menu");
    $offcanvasNavSubMenu
            .parent()
            .prepend(
                    '<span class="menu-expand"><i class="fa fa-angle-down"></i></span>'
                    );

    $offcanvasNavSubMenu.slideUp();

    $offcanvasNav.on("click", "li a, li .menu-expand", function (e) {
        var $this = $(this);
        if (
                $this
                .parent()
                .attr("class")
                .match(/\b(menu-item-has-children| has-children | has-sub-menu)\b/) &&
                ($this.attr("href") === "#" || $this.hasClass("menu-expand"))
                ) {
            e.preventDefault();
            if ($this.siblings("ul:visible").length) {
                $this.siblings("ul").slideUp("slow");
            } else {
                $this.closest("li").siblings("li").find("ul:visible").slideUp("slow");
                $this.siblings("ul").slideDown("slow");
            }
        }

        if (
                $this.is("a") ||
                $this.is("span") ||
                $this.attr("class").match(/\b(menu-expand)\b/)
                ) {
            $this.parent().toggleClass("menu-open");
        } else if (
                $this.is("li") &&
                $this.attr("class").match(/\b('menu-item-has-children')\b/)
                ) {
            $this.toggleClass("menu-open");
        }
    });

    //   search box slidetoggle activation
    $(".search_box > a").on("click", function () {
        $(this).toggleClass("active");
        $(".search_widget").slideToggle("medium");
    });

    // slide toggle activation of mini cart
    $(".mini_cart_wrapper > a").on("click", function () {
        if ($(window).width() < 991) {
            $(".mini_cart").slideToggle("medium");
        }
    });

    // sticky header

    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();
        if (scroll < 100) {
            $(".sticky-header").removeClass("sticky");
        } else {
            $(".sticky-header").addClass("sticky");
        }
    });

    function dataBackgroundImage() {
        $("[data-bgimg]").each(function () {
            var bgImgUrl = $(this).data("bgimg");
            $(this).css({
                "background-image": "url(" + bgImgUrl + ")",
            });
        });
    }

    $(window).on("load", function () {
        dataBackgroundImage();
    });

    // slider activation
    $(".slider_area").owlCarousel({
        animateOut: "fadeOut",
        autoplay: true,
        loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 5000,
        items: 1,
        dots: false,
        navText: [
            '<i class="fa fa-arrow-left"></i>',
            '<i class="fa fa-arrow-right"></i>',
        ],
    });

    // product column of 4 activation
    $(".product_column4")
            .on("changed.owl.carousel initialized.owl.carousel", function (event) {
                $(event.target)
                        .find(".owl-item")
                        .removeClass("last")
                        .eq(event.item.index + event.page.size - 1)
                        .addClass("last");
            })
            .owlCarousel({
                autoplay: true,
                nav: true,
                loop: true,
                autoplay: false,
                autoplayTimeout: 5000,
                items: 4,
                dots: false,
                navText: [
                    '<i class="fa fa-arrow-left"></i>',
                    '<i class="fa fa-arrow-right"></i>',
                ],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    576: {
                        items: 2,
                    },
                    768: {
                        items: 3,
                    },
                    992: {
                        items: 4,
                    },
                },
            });

    // tooltip activation

    $(".action_links ul li a,.add_to_cart a,.footer_social_link ul li a").tooltip(
            {
                animated: "fade",
                placement: "top",
                container: "body",
            }
    );

    // activation of one column of deal product
    $(".product_column1")

            .owlCarousel({
                nav: true,
                autoplay: false,
                autoplayTimeout: 5000,
                items: 1,
                dots: false,
                navText: [
                    '<i class="fa fa-arrow-left"></i>',
                    '<i class="fa fa-arrow-right"></i>',
                ],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    768: {
                        items: 2,
                    },
                    992: {
                        items: 1,
                    },
                },
            });


    // activation of one column of Best seller product
    $(".sidebar_product_column1")
            .on("changed.owl.carousel initialized.owl.carousel", function (event) {
                $(event.target)
                        .find(".owl-item")
                        .removeClass("last")
                        .eq(event.item.index + event.page.size - 1)
                        .addClass("last");
            })
            .owlCarousel({
                autoplay: true,
                loop: true,
                nav: true,
                autoplay: false,
                autoplayTimeout: 5000,
                items: 4,
                dots: false,
                navText: [
                    '<i class="fa fa-arrow-left"></i>',
                    '<i class="fa fa-arrow-right"></i>',
                ],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    768: {
                        items: 2,
                        margin: 30,
                    },
                    992: {
                        items: 1,
                    },
                },
            });

    // Testimonial activation
    $(".testimonial_sidebar_carousel").owlCarousel({
        autoplay: true,
        loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 5000,
        items: 1,
        dots: false,
        navText: [
            '<i class="fa fa-arrow-left"></i>',
            '<i class="fa fa-arrow-right"></i>',
        ],
    });

    // activation of one column of Best seller product
    $(".product_column3")
            .on("changed.owl.carousel initialized.owl.carousel", function (event) {
                $(event.target)
                        .find(".owl-item")
                        .removeClass("last")
                        .eq(event.item.index + event.page.size - 1)
                        .addClass("last");
            })
            .owlCarousel({
                autoplay: true,
                nav: true,
                autoplay: false,
                autoplayTimeout: 5000,
                items: 4,
                dots: false,
                navText: [
                    '<i class="fa fa-arrow-left"></i>',
                    '<i class="fa fa-arrow-right"></i>',
                ],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    567: {
                        items: 2,
                    },
                    768: {
                        items: 3,
                    },
                    992: {
                        items: 3,
                    },
                },
            });

    // activation of blog section
    $(".blog_column3").owlCarousel({
        autoplay: true,
        loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 5000,
        items: 4,
        dots: false,
        navText: [
            '<i class="fa fa-arrow-left"></i>',
            '<i class="fa fa-arrow-right"></i>',
        ],
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
            },
            768: {
                items: 2,
            },
            992: {
                items: 3,
            },
        },
    });

    // Small product column 1 activation
    $(".small_product_column1")
            .on("changed.owl.carousel initialized.owl.carousel", function (event) {
                $(event.target)
                        .find(".owl-item")
                        .removeClass("last")
                        .eq(event.item.index + event.page.size - 1)
                        .addClass("last");
            })
            .owlCarousel({
                autoplay: true,
                loop: true,
                nav: false,
                autoplay: false,
                autoplayTimeout: 5000,
                items: 4,
                dots: false,
                navText: [
                    '<i class="fa fa-arrow-left"></i>',
                    '<i class="fa fa-arrow-right"></i>',
                ],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    568: {
                        items: 2,
                        margin: 15,
                    },
                    768: {
                        items: 1,
                    },
                },
            });

    // activation of small nav active
    $(".product_navactive").owlCarousel({
        autoplay: false,
        loop: true,
        nav: true,
        items: 4,
        dots: false,
        navText: [
            '<i class="fa fa-angle-left"></i>',
            '<i class="fa fa-angle-right"></i>',
        ],
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
            },
            250: {
                items: 2,
            },
            480: {
                items: 3,
            },
            768: {
                items: 4,
            },
        },
    });

    $(".modal").on("shown.bs.modal", function (e) {
        $(".product_navactive").resize();
    });
    $(".product_navactive a").on("click", function (e) {
        e.preventDefault();

        var $href = $(this).attr("href");

        $(".product_navactive a").removeClass("active");
        $(this).addClass("active");

        $(".product-details-large .tab-pane").removeClass("active show");
        $(".product-details-large " + $href).addClass("active show");
    });

    $(".select_option").niceSelect();
})(jQuery);




function setCountDown() {
    var countDownDate = new Date("Jan 5, 2024 11:37:25").getTime();

    var x = setInterval(function () {

        // Get today's date and time
        var now = new Date().getTime();
        var distance = countDownDate - now;
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Output the result in elements with corresponding ids
        document.getElementById("day").innerHTML = days;
        document.getElementById("hour").innerHTML = hours;
        document.getElementById("minutes").innerHTML = minutes; // Corrected typo
        document.getElementById("sec").innerHTML = seconds;

        // If the count down is over, write some text 
        if (distance < 0) {
            clearInterval(x);
            document.getElementById("day").innerHTML = "EXPIRED";
            document.getElementById("hour").innerHTML = "EXPIRED";
            document.getElementById("minutes").innerHTML = "EXPIRED";
            document.getElementById("sec").innerHTML = "EXPIRED";
        }
    }, 1000);
}

setCountDown();

function pageRefine(x) {
    var submit = document.getElementById("submitt");
    submit.value = x;
    document.getElementById("f3").submit();
    console.log(form);
}

function searchByName() {
    var text = document.querySelector("#searchId").value;
    $.ajax({
        url: "/PefumeMN-Website/searchProduct",
        type: "get",
        data: {
            txt: text
        },
        success: function (data) {
            var row = document.getElementById("contentt");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}

function monthNameToNumber(monthName) {
    var months = [
        'January', 'February', 'March', 'April', 'May', 'June',
        'July', 'August', 'September', 'October', 'November', 'December'
    ];
    var lowerMonthName = monthName.toLowerCase();
    var monthIndex = months.findIndex(function (month) {
        return month.toLowerCase() === lowerMonthName;
    });
    return monthIndex !== -1 ? monthIndex + 1 : -1;
}