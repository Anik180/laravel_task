@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-between align-items-center mb-3">
            <div>
                <p>Add Category</p>
            </div>
            <div>
                <a href="{{ route('categories.index') }}" type="button" class="btn btn-primary">All Category</a>
            </div>
        </div>

        <form action="{{ route('categories.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label>category_name</label>
                <input type="text" class="form-control" placeholder="Enter Category Name" name="category_name" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
@endsection
