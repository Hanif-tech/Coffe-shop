@extends('layouts.appUser')
@section('title','Tambah Gallery')


@section('content')
<div class="main-panel">
    <div class="content-wrapper">
    <form action="{{route('kategori.store')}}" method="POST"">
        @csrf
        <div class="row g-3 align-items-center mb-3">
            <div class="col-9">
                <label for="">Nama Kategori</label>
                <input type="text" class="form-control" name="category_name">
            </div>
        </div>
        <button class="btn btn-warning " type="submit">Submit</button>
        <a href="{{route('kategori.index')}}" class="btn btn-info ms-2">Kembali</a>
    </form>
    </div>
@endsection
