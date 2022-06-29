@extends('layouts.app')

@section('title','Graha Asri | Produk')

@push('addon-style')
    <style>
                .btn-filter:hover {
        background-color: #ddd;
        }

        /* Add a dark background to the active button */
        .btn-filter.active {
        background-color: #666;
        color: white;
        }
    </style>
@endpush
@section('content')
<main>
  <section id="product-list" style="background-color: rgb(240, 240, 240)">
    <div class="container">
        <div class="row py-4">
            <h2 class="text-center mb-3" style="color: rgb(61, 61, 61);font-size: 38px; font-weight: 600;">All Products</h2>
            <div class="row mb-3">
                <div class="col-md-8">
                    <!-- Control buttons -->
                    <div id="myBtnContainer">
                        <a href="{{route('all-product')}}" class="btn btn-filter {{request()->routeIs('all-product') ? 'active' : ''}}"> Show all</a>
                        @foreach ($categories as $category)
                        <a href="{{route('filter-product',$category->id)}}" class="btn btn-filter {{request()->search == $category->id ? 'active' : ' '}}"> {{$category->category_name}}</a>
                        @endforeach
                    </div>
                </div>
            </div>
            @foreach ($products as $product)
            <div class="col-md-3 mt-3">
                <a href="{{route('detail', $product->id)}}" class="text-decoration-none card-product" style="color: rgb(61, 61, 61)">
                    <div class="card card-product" >
                        <img src="{{Storage::url($product->gallery->first()->image)}}" class="card-img-top" style="background-size: cover; object-fit: cover;" height="220" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">{{ $product->product_name }}</h5>
                          <div class="card-price-rating d-flex">
                              <p class="card-text me-2" style="margin-bottom: 7px">Rp <span id="price-product">{{ $product->price }}</span></p>
                              <span>|</span>
                              <div  class="ms-2"><span id="star">{{$product->review->count() != 0 ? $product->review->avg('rate_value') : 0}}</span><i style="color:yellow" class="fa-solid fa-star"></i></div>
                          </div>
                          <a href="{{route('detail', $product->id)}}" class="btn btn-sm btn-warning">Detail</a>
                        </div>
                      </div>
                </a>
            </div>
            @endforeach
        </div>

    </div>
  </section>
</main>
@endsection

{{-- @push('addon-script')
    <script>
        $(document).ready(function() {
    $('.btn-filter').click(function() {
        $(this).siblings().addClass('active');
    });
});
    </script>
@endpush --}}
