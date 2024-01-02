@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-between align-items-center mb-3">
            <div>
                <p>Update Category</p>
            </div>
            <div>
                <a href="{{ route('categories.index') }}" type="button" class="btn btn-primary">All Category</a>
            </div>
        </div>

        <form action="{{ route('categories.update', $category->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label>category_name</label>
                <input type="text" class="form-control" value="{{ $category->category_name }}" name="category_name"
                    required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
@endsection
