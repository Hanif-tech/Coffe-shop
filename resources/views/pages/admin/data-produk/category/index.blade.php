@extends('layouts.appUser')
@section('title','Kategori')


@section('content')
<div class="main-panel">
    <div class="content-wrapper">
        <!-- isi kontene -->
<h1>Data Produk</h1>
<a href="{{route('kategori.create')}}" class="btn btn-warning"><i class="fa-solid fa-circle-plus"></i> Tambah Kategory</a>

<table class="table">
    <thead>
      <tr>
        <th scope="col">No</th>
        <th scope="col">Kategori</th>
        <th scope="col">Aksi</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($categories as $category)
        <tr>
        <td>{{ $category->id }}</td>
        <td>{{ $category->category_name }}</td>
          <td class="d-flex">
              <a href="{{route('kategori.edit', $category->id)}}" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i></a>
              <form action="{{route('kategori.destroy', $category->id)}}" method="POST">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-sm btn-danger show_confirm" type="submit" ><i class="fa-solid fa-trash"></i></button>
              </form>
          </td>
        </tr>
        @endforeach

    </tbody>
  </table>
    </div>
    <!-- content-wrapper ends -->
    <!-- partial:partials/_footer.html -->

@endsection

@push('addon-script')
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
<script>
    $(document).ready(function(){
        $('.show_confirm').click(function(event) {
        var form =  $(this).closest("form");
        var name = $(this).data("name");
        event.preventDefault();
        swal({
            title: `Anda yakin ingin menghapus kategori ini?`,
            text: "Jika iya kamu kategori ini akan hilang selamanya!",
            icon: "warning",
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            buttons: true,
            dangerMode: true,
        })
        .then((willDelete) => {
        if (willDelete) {
            form.submit();
        }
        });
        });
    })
</script>
@endpush
