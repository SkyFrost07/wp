(function ($) {

    $(window).resize(function () {
        $('.logo-col .logo').height($('.head-col').height());
    }).resize();
    
    var elCollapseMenu = $('#cl_menu');
    var btnCollapseMenu = $('.pl-btn-menu');
    $('.pl-btn-menu, #cl_menu').on('mouseenter', function () {
        if ($(window).width() >= 768) {
            elCollapseMenu.addClass('cl_show');
            btnCollapseMenu.addClass('cl_show');
        }
    });
    $('.pl-btn-menu, #cl_menu').on('mouseleave', function () {
        if ($(window).width() >= 768) {
            elCollapseMenu.removeClass('cl_show');
            btnCollapseMenu.removeClass('cl_show');
        }
    });

    var topNav = $('#top-menu');
    $('.pl-btn-menu').on('click touch', function () {
        var openIcon = 'fa-bars';
        var closeIcon = 'fa-close';
        if ($(window).width() < 768) {
            if (elCollapseMenu.hasClass('cl_show')) {
                elCollapseMenu.removeClass('cl_show');
                $(this).find('span').removeClass(closeIcon).addClass(openIcon);
            } else {
                elCollapseMenu.addClass('cl_show');
                $(this).find('span').removeClass(openIcon).addClass(closeIcon);
            }
//            if (topNav.hasClass('nav-fixed')) {
//                topNav.removeClass('nav-fixed');
//                if (elCollapseMenu.hasClass('cl_show')) {
//                    elCollapseMenu.removeClass('cl_show');
//                }
//                $(this).find('span').removeClass(closeIcon).addClass(openIcon);
//            } else {
//                topNav.addClass('nav-fixed');
//                if (elCollapseMenu.hasClass('cl_show')) {
//                    
//                } else {
//                    elCollapseMenu.addClass('cl_show');
//                }
//                $(this).find('span').removeClass(openIcon).addClass(closeIcon);
//            }
        }
    });
    
    var offsetMenuTop = topNav.offset().top;
    $(window).scroll(function () {
        if ($(window).scrollTop() >= offsetMenuTop) {
            topNav.addClass('nav-fixed');
        } else {
            topNav.removeClass('nav-fixed');
        }
    });

    $('.main-carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        itemWidth: 210,
        itemMargin: 0,
        directionNav: false,
        asNavFor: '.main-slider'
    });

    $('.main-slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        sync: ".main-carousel"
    });

    $('.slider-items').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        center: true,
        margin: 20,
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
                center: true
            },
            600: {
                items: 2,
                center: true
            },
            992: {
                items: 3
            },
            1200: {
                items: 5
            }
        }
    });

})(jQuery);

