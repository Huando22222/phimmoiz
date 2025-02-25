<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <meta name="theme-color" content="#234556">
    <meta http-equiv="Content-Language" content="vi" />
    <meta content="VN" name="geo.region" />
    <meta name="DC.language" scheme="utf-8" content="vi" />
    <meta name="language" content="Việt Nam">

    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Phim</title>


    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet"
        type='text/css'>
    <link rel='dns-prefetch' href='//s.w.org' />


    <link rel='stylesheet' id='bootstrap-css' href='{{asset('css/bootstrap.min.css')}}' media='all' />
    <link rel='stylesheet' id='style-css' href='{{asset('css/style.css')}}' media='all' />
    <link rel='stylesheet' id='wp-block-library-css' href='{{asset('css/style.min.css')}}' media='all' />
    <script type='text/javascript' src='{{asset('js/jquery.min.js')}}' id='halim-jquery-js'></script>
    <style type="text/css" id="wp-custom-css">
    .textwidget p a img {
        width: 100%;
    }

    .dropdown-item {
        display: block;
        background: #f4bf86;
        color: rgb(0, 0, 136);
    }

    .dropdown-item2 {
        display: block;
        background: #9cf486;
        color: rgb(98, 21, 28);
    }

    .btn-secondary.dropdown-toggle {
        background: #9cf486;
        color: rgb(98, 21, 28);
    }

    .btn.btn-primary2 {
        background: #ffe731;
        color: rgb(22, 26, 97);
    }
    </style>
    <style>
    #header .site-title {
        background: url(https://www.pngkey.com/png/detail/360-3601772_your-logo-here-your-company-logo-here-png.png) no-repeat top left;
        background-size: contain;
        text-indent: -9999px;
    }
    </style>

</head>

<body class="home blog halimthemes halimmovies" data-masonry="">
    <header id="header">
        <div class="container">
            <div class="row" id="headwrap">
                <div class="col-md-3 col-sm-6 slogan">
                    <p class=""><a class="logo" href="" title="phim hay ">
                            {{-- <img src="{{asset('uploads/logo/'.$info->logo)}}" height="70px" width="70px"> --}}
                            <img src="https://cdn.haitrieu.com/wp-content/uploads/2021/09/Logo-DH-CONG-NGHE-THANH-PHO-HO-CHI-MINH-HUTECH.png"
                                height="70px" width="70px">
                        </a></p>
                    </a>
                </div>

                <div class=" user-actions" style="float: right; margin-top: 10px;">
                    <div style="text-align: right;">
                        @if(session('user'))
                        <div class="btn-group" role="group">
                            <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                {{ session('user') }}🔽
                            </button>
                            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                <a class="dropdown-item" href="{{ route('yeuthich') }}">💖 Phim yêu thích</a>
                                <a class="dropdown-item2" href="{{ route('luu') }}">💾 Xem sau</a>
                                <a class="dropdown-item" href="{{ route('history') }}">⛺️ Lịch sử xem</a>
                                <a class="dropdown-item2" href="{{ route('logout2') }}">🚀 Đăng xuất</a>
                            </div>
                        </div>
                        @else
                        {{-- Hiển thị nút đăng nhập --}}
                        <a href="{{ route('login2') }}"
                            style="background-color: #0a64bbc9; color: white; padding: 10px 10px; border: 1px solid #4CAF50; border-radius: 5px; text-decoration: none; cursor: pointer;">Đăng
                            nhập</a>
                        @endif
                    </div>
                </div>

                <div class="col-md-5 col-sm-6 halim-search-form hidden-xs">
                    <div class="header-nav">
                        <div class="col-xs-12">
                            <style type="text/css">
                            ul#result {
                                position: absolute;
                                z-index: 9999;
                                background: #1b2d3c;
                                width: 94%;
                                padding: 10px;
                                margin: 1px;
                            }
                            </style>
                            <div class="form-group form-timkiem">
                                <div class="input-group col-xs-12">
                                    <form action="{{ route('tim-kiem') }}" method="GET" class="input-group">
                                        <input type="text" name="search" id="timkiem" class="form-control"
                                            placeholder="Tìm kiếm phim..." autocomplete="off">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary2" type="submit">🔎Tìm kiếm</button>
                                        </span>
                                    </form>
                                </div>
                            </div>
                            <ul class="list-group" id="result" style="display: none;">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="navbar-container">
        <div class="container">
            <nav class="navbar halim-navbar main-navigation" role="navigation" data-dropdown-hover="1">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed pull-left" data-toggle="collapse"
                        data-target="#halim" aria-expanded="false">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <button type="button" class="navbar-toggle collapsed pull-right expand-search-form"
                        data-toggle="collapse" data-target="#search-form" aria-expanded="false">
                        <span class="hl-search" aria-hidden="true"></span>
                    </button>
                    <button type="button" class="navbar-toggle collapsed pull-right get-bookmark-on-mobile">
                        Bookmarks<i class="hl-bookmark" aria-hidden="true"></i>
                        <span class="count">0</span>
                    </button>
                    <button type="button" class="navbar-toggle collapsed pull-right get-locphim-on-mobile">

                </div>
                <div class="collapse navbar-collapse" id="halim">
                    <div class="menu-menu_1-container">
                        <ul id="menu-menu_1" class="nav navbar-nav navbar-left">
                            <li class="current-menu-item active"><a title="Trang Chủ" href="{{route('homepage')}}">Trang
                                    Chủ</a></li>
                            <li class="mega dropdown">
                                <a title="Thể Loại" href="#" data-toggle="dropdown" class="dropdown-toggle"
                                    aria-haspopup="true">Thể Loại <span class="caret"></span></a>
                                <ul role="menu" class=" dropdown-menu">
                                    @foreach($genre_home as $key => $gen)
                                    <li><a title="{{$gen->title}}"
                                            href="{{route('genre',$gen->slug)}}">{{$gen->title}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li class="mega dropdown">
                                <a title="Quốc Gia" href="#" data-toggle="dropdown" class="dropdown-toggle"
                                    aria-haspopup="true">Quốc Gia <span class="caret"></span></a>
                                <ul role="menu" class=" dropdown-menu">
                                    @foreach($country_home as $key => $count)
                                    <li><a title="{{$count->title}}"
                                            href="{{route('country',$count->slug)}}">{{$count->title}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li class="mega dropdown">
                                <a title="Năm Phim" href="#" data-toggle="dropdown" class="dropdown-toggle"
                                    aria-haspopup="true">Năm phim <span class="caret"></span></a>
                                <ul role="menu" class=" dropdown-menu">
                                    @for($year=2000;$year<=2023;$year++) <li><a title="{{$year}}"
                                            href="{{url('nam/'.$year)}}">{{$year}}</a>
                            </li>
                            @endfor
                        </ul>
                        </li>
                        @foreach($category_home as $key => $cate)
                        <li class="mega"><a title="{{$cate->title}}"
                                href="{{route('category',$cate->slug)}}">{{$cate->title}}</a></li>
                        @endforeach

                        </ul>

                    </div>
                    <ul class="nav navbar-nav navbar-left" style="background:#862823;">
                        <li><a href="{{route('locphim')}}" onclick="locphim()" style="color: #ffc4a2;">Lọc Phim</a></li>
                    </ul>
                </div>
            </nav>
            <div class="collapse navbar-collapse" id="search-form">
                <div id="mobile-search-form" class="halim-search-form"></div>
            </div>
            <div class="collapse navbar-collapse" id="user-info">
                <div id="mobile-user-login"></div>
            </div>
        </div>
    </div>
    </div>

    <div class="container">
        <div class="row fullwith-slider"></div>
    </div>
    <div class="container">
        @yield('content')
        @include('pages.include.banner')
    </div>
    <div class="clearfix"></div>
    {{-- <footer id="footer" class="clearfix">
         <div class="container footer-columns">
            <div class="row container">
               <div class="widget about col-xs-12 col-sm-4 col-md-2">
                  <div class="footer-logo">
                     <img src="{{asset('uploads/logo/'.$info->logo)}}" height="10%" width="10%">
    </div>
    </div>
    <div class="widget about col-xs-12 col-sm-4 col-md-6">
        <div class="footer-logo">
            <p>{{$info->description}}</p>
        </div>

    </div>
    </div>
    </div>
    </footer> --}}



    <style>
    .block {
        display: flex;
        background-color: hsl(210, 24%, 18%);
        justify-content: space-around;
        padding: 25px;
        color: #fff;
    }

    a {
        color: #fff;
        text-decoration: none;
    }
    </style>
    <div>
        <div>
            <div class="block">
                <div>
                    <div><b>TRƯỜNG ĐẠI HỌC CÔNG NGHỆ TP.HCM (HUTECH)</b></div>
                    <div><b class="truso">Sai Gon Campus:</b> 475A Điện Biên Phủ, P.25, Q.Bình Thạnh, TP.HCM</div>
                    <div class="coso"><b>Ung Van Khiem Campus:</b> 31/36 Ung Văn Khiêm, P.25, Q.Bình Thạnh, TP.HCM</div>
                    <div class="coso"><b>Thu Duc Campus:</b> Khu Công nghệ cao TP.HCM, Xa lộ Hà Nội, P.Hiệp Phú, TP.Thủ
                        Đức, TP.HCM</div>
                    <div class="coso"><b>Hitech Park Campus:</b> Khu Công nghệ cao TP.HCM, Đường D1, P.Long Thạnh Mỹ,
                        TP.Thủ Đức, TP.HCM</div>
                    <div><b>Điện thoại:</b> (028) 5445 7777 - <b>Email:</b> hutech@hutech.edu.vn</div>
                </div>
                <div data-includehtml="https://www.hutech.edu.vn/page/html/social.txt">
                    <div>
                        <a href="//www.hutech.edu.vn/">Trang Chủ</a> | <a
                            href="//www.hutech.edu.vn/homepage/lien-he/so-do-den-truong">Sơ Đồ</a> | <a
                            href="//www.hutech.edu.vn/homepage/dong-gop-y-kien">Liên Hệ</a>
                        <br>
                        <a href="https://zalo.me/84421131520127076" target="_blank">
                            <img class="icon-lien-he-zalo" src="https://www.hutech.edu.vn/images/img_blank.gif">
                        </a>
                        <a href="https://www.instagram.com/hutechuniversity/" target="_blank">
                            <img class="icon-lien-he-instagram" src="https://www.hutech.edu.vn/images/img_blank.gif">
                        </a>
                        <a href="https://www.tiktok.com/@hutechuniversity" target="_blank">
                            <img class="icon-lien-he-tiktok" src="https://www.hutech.edu.vn/images/img_blank.gif">
                        </a>
                        <a href="https://www.facebook.com/hutechuniversity">
                            <img class="icon-lien-he-facebook" src="https://www.hutech.edu.vn/images/img_blank.gif">
                        </a>
                        <a href="https://twitter.com/hutechvietnam" target="_blank">
                            <img class="icon-lien-he-twice" src="https://www.hutech.edu.vn/images/img_blank.gif">
                        </a>
                        <a href="https://www.youtube.com/c/HUTECHChannel" target="_blank">
                            <img class="icon-lien-he-youtube" src="https://www.hutech.edu.vn/images/img_blank.gif">
                        </a>
                        <br> Bản quyền <span style="font-size: small;"><a
                                href="https://www.hutech.edu.vn/admin"><strong>©</strong></a></span>
                        <span id="namfooter">2024</span>
                        <script type="text/javascript">
                        //document.write(new Date().getFullYear());
                        $('#namfooter').append(new Date().getFullYear())
                        </script>
                        <a rel="author" href="https://plus.google.com/u/0/+hutech">HUTECH</a>
                    </div>
                    <style>
                    .icon-lien-he-zalo {
                        background: url(https://www.hutech.edu.vn/images/icon-hutech.png) no-repeat scroll -743px -113px transparent;
                        height: 25px;
                        width: 25px;
                    }

                    .icon-lien-he-instagram {
                        background: url(https://www.hutech.edu.vn/images/icon-hutech.png) no-repeat scroll -774px -113px transparent;
                        height: 25px;
                        width: 25px;
                    }

                    .icon-lien-he-tiktok {
                        background: url(https://www.hutech.edu.vn/images/icon-hutech.png) no-repeat scroll -804px -113px transparent;
                        height: 25px;
                        width: 25px;
                    }

                    .icon-lien-he-facebook {
                        background: url(https://www.hutech.edu.vn/images/icon-hutech.png) no-repeat scroll -835px -113px transparent;
                        height: 25px;
                        width: 25px;
                    }

                    .icon-lien-he-twice {
                        background: url(https://www.hutech.edu.vn/images/icon-hutech.png) no-repeat scroll -866px -113px transparent;
                        height: 25px;
                        width: 25px;
                    }

                    .icon-lien-he-youtube {
                        background: url(https://www.hutech.edu.vn/images/icon-hutech.png) no-repeat scroll -897px -113px transparent;
                        height: 25px;
                        width: 25px;
                    }
                    </style>
                </div>
            </div>
        </div>
    </div>

    <style type="text/css">
    .copyright_footer {
        text-align: center;
        line-height: 32px;
        color: black;
    }
    </style>
    <div class="col-xs-12 col-sm-4 col-md-12 ">
        <p class="copyright_footer">{{$info->copyright}}</p>
    </div>
    <div class=" " style="text-align: center;">
        <div class="footer-logo">
            <p>{{$info->description}}</p>
        </div>
    </div>
    <div id='easy-top'></div>

    <script type='text/javascript' src='{{asset('js/bootstrap.min.js?ver=5.7.2')}}' id='bootstrap-js'></script>
    <script type='text/javascript' src='{{asset('js/owl.carousel.min.js?ver=5.7.2')}}' id='carousel-js'></script>

    <div id="fb-root"></div>

    <script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v15.0&appId=6125793717446054&autoLogAppEvents=1"
        nonce="xqhl5VGg"></script>

    <script type='text/javascript' src='{{asset('js/halimtheme-core.min.js?ver=1626273138')}}' id='halim-init-js'>
    </script>

    <!-- <script type="text/javascript">
         $(document).ready(function(){

           $('#timkiem').keyup(function(){
               $('#result').html('');
               var search = $('#timkiem').val();
               if(search!=''){
                  $('#result').css('display','inherit');
                  var expression = new RegExp(search, "i");
                  $.getJSON('/json/movies.json',function(data){
                     $.each(data, function(key, value){
                        if (value.title.search(expression) != -1 ){
                           $('#result').append('<li class="list-group-item" style="cursor:pointer"><img height="40" width="40" src="/uploads/movie/'+value.image+'">'+value.title+'<br/> </li>');
                        }
                     });
                  })
               }else{
                  $('#result').css('display','none');
               }
           })

            $('#result').on('click', 'li', function() {
              var click_text = $(this).text().split('|');

              $('#timkiem').val($.trim(click_text[0]));

              $("#result").html('');
              $('#result').css('display','none');
             });

         })
      </script> -->
    <!-- banner -->
    <script type="text/javascript">
    $(document).ready(function() {
        if ('{{ Route::currentRouteName() }}' === 'homepage') {
            $('#banner').modal('show');
        }
    });
    </script>



    <!-- Sort by -->
    <script type="text/javascript">
    $(document).ready(function() {
        $('#sort').on('change', function() {
            var url = $(this).val();
            if (url) {
                window.location = url;
            }
            return false;
        });
    });
    </script>




    <!-- tim kiem -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fuse.js/6.4.6/fuse.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        var jsonData; // Biến chứa dữ liệu từ JSON

        // Load dữ liệu từ tập tin JSON vào biến jsonData
        $.getJSON('/json/movies.json', function(data) {
            jsonData = data;

            // Khởi tạo và cấu hình Fuse.js với dữ liệu từ JSON
            var fuse = new Fuse(data, {
                keys: ['title', 'performer', 'description'],
                threshold: 0.5,
                includeScore: true,
                ignoreLocation: true,
                ignoreFieldNorm: true
            });

            $('#timkiem').keyup(function() {
                $('#result').html('');
                var search = $('#timkiem').val();

                if (search !== '') {
                    $('#result').css('display', 'inherit');

                    // Tìm kiếm với Fuse.js
                    var searchResults = fuse.search(search);

                    searchResults.forEach(function(result) {
                        var value = result.item;
                        $('#result').append(
                            '<li class="list-group-item" style="cursor:pointer"><img height="40" width="40" src="/uploads/movie/' +
                            value.image + '">' + value.title + '<br/> | <span>' +
                            value.description + '</span>  <br/>  </li>');
                    });
                } else {
                    $('#result').css('display', 'none');
                }
            });

            $('#result').on('click', 'li', function() {
                var click_text = $(this).text().split('|');
                $('#timkiem').val($.trim(click_text[0]));
                $("#result").html('');
                $('#result').css('display', 'none');
            });
        });
    });
    </script>


    <script type="text/javascript">
    function remove_background(movie_id) {
        for (var count = 1; count <= 5; count++) {
            $('#' + movie_id + '-' + count).css('color', '#ccc');
        }
    }

    //hover chuột đánh giá sao
    $(document).on('mouseenter', '.rating', function() {
        var index = $(this).data("index");
        var movie_id = $(this).data('movie_id');
        // alert(index);
        // alert(movie_id);
        remove_background(movie_id);
        for (var count = 1; count <= index; count++) {
            $('#' + movie_id + '-' + count).css('color', '#ffcc00');
        }
    });
    //nhả chuột ko đánh giá
    $(document).on('mouseleave', '.rating', function() {
        var index = $(this).data("index");
        var movie_id = $(this).data('movie_id');
        var rating = $(this).data("rating");
        remove_background(movie_id);
        //alert(rating);
        for (var count = 1; count <= rating; count++) {
            $('#' + movie_id + '-' + count).css('color', '#ffcc00');
        }
    });

    //click đánh giá sao
    $(document).on('click', '.rating', function() {

        var index = $(this).data("index");
        var movie_id = $(this).data('movie_id');

        $.ajax({
            url: "{{route('add-rating')}}",
            method: "POST",
            data: {
                index: index,
                movie_id: movie_id
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                if (data == 'done') {

                    alert("Bạn đã đánh giá " + index + " trên 5");
                    location.reload();

                } else if (data == 'exist') {
                    alert("Bạn đã đánh giá phim này rồi,cảm ơn bạn nhé");
                } else {
                    alert("Lỗi đánh giá");
                }

            }
        });

    });
    </script>

    <script type="text/javascript">
    $(".watch_trailer").click(function(e) {
        e.preventDefault();
        var aid = $(this).attr("href");
        $('html,body').animate({
            scrollTop: $(aid).offset().top
        }, 'slow');
    });
    </script>
    <script type="text/javascript">
    $(document).ready(function() {
        //lấy ra top view ngày phim 
        $.ajax({
            url: "{{url('/filter-topview-default')}}",
            method: "GET",

            success: function(data) {
                $('#show_data_default').html(data);
            }
        });

        $('.filter-sidebar').click(function() {
            var href = $(this).attr('href');
            if (href == '#ngay') {
                var value = 0;
            } else if (href == '#tuan') {
                var value = 1;
            } else {
                var value = 2;
            }
            $.ajax({
                url: "{{url('/filter-topview-phim')}}",
                method: "POST",
                data: {
                    value: value
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {

                    $('#halim-ajax-popular-post-default').css("display", "none");
                    $('#show_data').html(data);
                }
            });
        })
    })
    </script>


    <style>
    #overlay_mb {
        position: fixed;
        display: none;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.7);
        z-index: 99999;
        cursor: pointer
    }

    #overlay_mb .overlay_mb_content {
        position: relative;
        height: 100%
    }

    .overlay_mb_block {
        display: inline-block;
        position: relative
    }

    #overlay_mb .overlay_mb_content .overlay_mb_wrapper {
        width: 600px;
        height: auto;
        position: relative;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        text-align: center
    }

    #overlay_mb .overlay_mb_content .cls_ov {
        color: #fff;
        text-align: center;
        cursor: pointer;
        position: absolute;
        top: 5px;
        right: 5px;
        z-index: 999999;
        font-size: 14px;
        padding: 4px 10px;
        border: 1px solid #aeaeae;
        background-color: rgba(0, 0, 0, 0.7)
    }

    #overlay_mb img {
        position: relative;
        z-index: 999
    }

    @media only screen and (max-width: 768px) {
        #overlay_mb .overlay_mb_content .overlay_mb_wrapper {
            width: 400px;
            top: 3%;
            transform: translate(-50%, 3%)
        }
    }

    @media only screen and (max-width: 400px) {
        #overlay_mb .overlay_mb_content .overlay_mb_wrapper {
            width: 310px;
            top: 3%;
            transform: translate(-50%, 3%)
        }
    }
    </style>

    <style>
    #overlay_pc {
        position: fixed;
        display: none;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.7);
        z-index: 99999;
        cursor: pointer;
    }

    #overlay_pc .overlay_pc_content {
        position: relative;
        height: 100%;
    }

    .overlay_pc_block {
        display: inline-block;
        position: relative;
    }

    #overlay_pc .overlay_pc_content .overlay_pc_wrapper {
        width: 600px;
        height: auto;
        position: relative;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
    }

    #overlay_pc .overlay_pc_content .cls_ov {
        color: #fff;
        text-align: center;
        cursor: pointer;
        position: absolute;
        top: 5px;
        right: 5px;
        z-index: 999999;
        font-size: 14px;
        padding: 4px 10px;
        border: 1px solid #aeaeae;
        background-color: rgba(0, 0, 0, 0.7);
    }

    #overlay_pc img {
        position: relative;
        z-index: 999;
    }

    @media only screen and (max-width: 768px) {
        #overlay_pc .overlay_pc_content .overlay_pc_wrapper {
            width: 400px;
            top: 3%;
            transform: translate(-50%, 3%);
        }
    }

    @media only screen and (max-width: 400px) {
        #overlay_pc .overlay_pc_content .overlay_pc_wrapper {
            width: 310px;
            top: 3%;
            transform: translate(-50%, 3%);
        }
    }
    </style>

    <style>
    .float-ck {
        position: fixed;
        bottom: 0px;
        z-index: 9
    }

    * html .float-ck

    /* IE6 position fixed Bottom */
        {
        position: absolute;
        bottom: auto;
        top: expression(eval (document.documentElement.scrollTop+document.docum entElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop, 10)||0)-(parseInt(this.currentStyle.marginBottom, 10)||0)));
    }

    #hide_float_left a {
        background: #0098D2;
        padding: 5px 15px 5px 15px;
        color: #FFF;
        font-weight: 700;
        float: left;
    }

    #hide_float_left_m a {
        background: #0098D2;
        padding: 5px 15px 5px 15px;
        color: #FFF;
        font-weight: 700;
    }

    span.bannermobi2 img {
        height: 70px;
        width: 300px;
    }

    #hide_float_right a {
        background: #01AEF0;
        padding: 5px 5px 1px 5px;
        color: #FFF;
        float: left;
    }
    </style>
</body>

</html>