@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <p>All Product</p>
            </div>
            <div class="col-md-10">
                <div class="d-flex justify-content-end align-items-center">
                    <form action="{{ url('import') }}" method="POST" enctype="multipart/form-data" class="d-flex">
                        @csrf
                        <div class="mr-2">
                            <input type="file" name="file">
                        </div>
                        <button class="btn btn-warning">Import</button>
                    </form>
                    <a href="{{ url('export') }}" type="button" class="btn btn-success ml-2">Export</a>
                    <a href="{{ route('products.create') }}" type="button" class="btn btn-primary ml-2">Add Product</a>
                </div>
            </div>
        </div>



        @php
            $sl = 1;
        @endphp
        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">SL</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Category Name</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($products as $product)
                    <tr>
                        <th scope="row">{{ $sl++ }}</th>
                        <td>{{ $product->name }}</td>
                        <td>
                            @if ($product->category)
                                {{ $product->category->category_name }}
                            @else
                                No Category
                            @endif
                        </td>
                        <td>{{ $product->quantity }}</td>
                        <td>{{ $product->price }}</td>
                        <td>
                            <div class="d-flex">
                                <a href="{{ route('products.edit', $product->id) }}" type="button"
                                    class="btn btn-primary mr-2">Edit</a>

                                <form action="{{ route('products.destroy', $product->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')

                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                @endforeach

            </tbody>
        </table>
        {{ $products->links('pagination::bootstrap-4') }}

    </div>
@endsection
