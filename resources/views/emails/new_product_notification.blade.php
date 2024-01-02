@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-between align-items-center mb-3">
            <div>
                <p>Notification</p>
            </div>
            <div>
                <a href="{{ route('home') }}" type="button" class="btn btn-primary">Back</a>
            </div>
        </div>

        <p>Hello ,</p>

        <p>A new product has been created.</p>

        <p>Thank you for using our platform.</p>
    </div>
@endsection
