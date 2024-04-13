@extends('layout')
@section('content')
<div class="row container" id="wrapper">
            <div class="halim-panel-filter">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-6">
                        <div class="yoast_breadcrumb hidden-xs"><span><span><a href="">{{$cate_slug->title}}</a> » <span class="breadcrumb_last" aria-current="page"></span></span></span></div>
                        
                     </div>
                    
                  </div>
               </div>
               <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
                  <div class="ajax"></div>
               </div>
            </div>
            
            <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
               <section>
                  <div class="section-bar clearfix">
                     <h1 class="section-title"><span>{{$cate_slug->title}}</span></h1>
                  </div>
                  <div class="section-bar clearfix">
                     <form action="">
                        @csrf
                        <select name="sort" id="sort" class="">
                           <option value="{{Request::url()}}?sort_by=none">--- Sắp xếp phim ---</option>
                           <option value="{{Request::url()}}?sort_by=tang_dan">--- Mới đến cũ ---</option>
                           <option value="{{Request::url()}}?sort_by=giam_dan">--- Cũ đến mới ---</option>
                           <option value="{{Request::url()}}?sort_by=kytu_za">--- theo tên A đến Z ---</option>
                           <option value="{{Request::url()}}?sort_by=kytu_az">--- theo tên Z đến A ---</option>

                        </select>
                     </form>
                 
                  </div>
                  <div class="halim_box">
                     @foreach($movie as $key => $mov)
                     <article class="col-md-3 col-sm-3 col-xs-6 thumb grid-item post-37606">
                        <div class="halim-item">
                           <a class="halim-thumb" href="{{route('movie',$mov->slug)}}">
                              <figure><img class="lazy img-responsive" src="{{asset('uploads/movie/'.$mov->image)}}" alt="" title="{{$mov->title}}"></figure>
                              <span class="status">
                                   @if($mov->resolution==0)
                                              HD
                                          @elseif($mov->resolution==1)
                                            SD
                                          @elseif($mov->resolution==2)
                                            HDCam
                                          @elseif($mov->resolution==3)
                                             Cam
                                          @elseif($mov->resolution==4)
                                            FullHD
                                          @else 
                                            Trailer

                                          @endif

                              </span><span class="episode"><i class="fa fa-play" aria-hidden="true"></i>
                                {{$mov->episode_count}}/{{$mov->sotap}} |
                                     @if($mov->phude==0)
                                        Phụ đề
                                      @else
                                        Thuyết minh
                                      @endif
                              </span> 
                              <div class="icon_overlay"></div>
                              <div class="halim-post-title-box">
                                 <div class="halim-post-title ">
                                    <p class="entry-title">{{$mov->title}}</p>
                                    <p class="original_title">{{$mov->name_eng}}</p>
                                 </div>
                              </div>
                           </a>
                        </div>
                     </article>
                     @endforeach
                  </div>
                  <div class="clearfix"></div>
                  <div>
                     {!! $movie->links("pagination::bootstrap-4") !!}
                  </div>
               </section>
            </main>
            @include('pages.include.sidebar')
         </div>
@endsection
<style>
/* Định dạng phần select */
select#sort {
  padding: 8px 12px; /* Khoảng cách bên trong của select */
  font-size: 16px; /* Kích thước chữ */
  border: 1px solid #ccc; /* Đường viền */
  border-radius: 4px; /* Bo góc */
  background-color: #fff; /* Màu nền */
  transition: border-color 0.3s ease; /* Hiệu ứng khi hover */
  cursor: pointer; /* Con trỏ chuột */
}

/* Khi hover vào phần select */
select#sort:hover {
  border-color: #999; /* Đổi màu viền */
}

/* Khi focus vào phần select */
select#sort:focus {
  outline: none; /* Loại bỏ đường viền khi focus */
  border-color: #333; /* Đổi màu viền */
}

/* Thiết lập kiểu của các option */
select#sort option {
  padding: 8px 12px; /* Khoảng cách bên trong của option */
  font-size: 16px; /* Kích thước chữ */
  background-color: #fff; /* Màu nền */
  color: #333; /* Màu chữ */
  transition: background-color 0.3s ease; /* Hiệu ứng khi hover */
}

/* Khi hover vào các option */
select#sort option:hover {
  background-color: #f0f0f0; /* Đổi màu nền */
}




</style>