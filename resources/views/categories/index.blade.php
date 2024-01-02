@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-between align-items-center mb-3">
            <div>
                <p>All Category</p>
            </div>
            <div>
                <a href="{{ route('categories.create') }}" type="button" class="btn btn-primary">Add Category</a>
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
                    <th scope="col">Category Name</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($categories as $category)
                    <tr>
                        <th scope="row">{{ $sl++ }}</th>
                        <td>{{ $category->category_name }}</td>
                        <td>
                            <div class="d-flex">
                                <a href="{{ route('categories.edit', $category->id) }}" type="button"
                                    class="btn btn-primary mr-2">Edit</a>

                                <form action="{{ route('categories.destroy', $category->id) }}" method="POST">
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
        {{ $categories->links('pagination::bootstrap-4') }}
    </div>
@endsection
