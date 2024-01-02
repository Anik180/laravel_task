@extends('layouts.app')

@section('content')
    @if (Auth::user()->role == 'admin')
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">{{ __('Dashboard') }}</div>

                        <div class="card-body">
                            @if (session('status'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('status') }}
                                </div>
                            @endif
                            <p>Welcome, {{ Auth::user()->name }}!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @else
        <div class="container">
            @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            @endif
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">{{ __('Dashboard') }}</div>

                        <div class="card-body">


                            <p>Welcome, {{ Auth::user()->name }}!</p>
                            <p>You are logged in as a regular user.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br><br>
        <div class="container-fluid d-flex">

            @foreach ($products as $product)
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">{{ $product->name }}</h5>
                        <h6 class="card-subtitle mb-2">{{ $product->category->category_name }}</h6>
                        <p>Price: ${{ $product->price }}</p>
                        <p>Quantity: {{ $product->quantity }}</p>
                        <hr>
                        <form method="post" action="{{ route('purchase.product', ['productId' => $product->id]) }}">
                            @csrf
                            <div class="form-group mt-2">
                                <label for="quantityInput">Enter Quantity:</label>
                                <input type="number" class="form-control" id="quantityInput" name="quantity"
                                    value="{{ $product->quantity }}">
                            </div>
                            <button type="submit" class="btn btn-primary">Purchase</button>
                        </form>


                    </div>
                </div>
            @endforeach
        </div>
    @endif
@endsection
