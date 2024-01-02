@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-between align-items-center mb-3">
            <div>
                <p>Add Product</p>
            </div>
            <div>
                <a href="{{ route('products.index') }}" type="button" class="btn btn-primary">All Product</a>
            </div>
        </div>

        <form action="{{ route('products.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label>Product Name</label>
                <input type="text" class="form-control" placeholder="Enter Product Name" name="name" required>
            </div>

            <div class="form-group">
                <label>Category</label>
                <select class="form-control" name="category_id" required>
                    <option value="" disabled selected>Select a Category</option>
                    @foreach ($categories as $category)
                        <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                    @endforeach
                </select>
            </div>


            <div class="form-group">
                <label>Price</label>
                <input type="text" class="form-control" placeholder="Enter price" name="price" required>
            </div>
            <div class="form-group">
                <label>Quantity</label>
                <input type="text" class="form-control" placeholder="Enter quantity" name="quantity" required>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
@endsection
