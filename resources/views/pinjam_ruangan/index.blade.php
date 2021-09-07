@extends('layout.main')

@section('content')

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            {{-- <div class="row">
                <div class="col-6"></div>
                <div class="col-6"></div>
            </div> --}}
            <h6 class="m-0 mt-2 font-weight-bold">
                {{ isset($data['title']) ? $data['title'] : 'Title' }}
            </h6>
        </div>
        <div class="card-body">
            <div id="pinjam-ruangan-table-wrapper">
                <div class="row">
                    @foreach ($data['periods'] as $date)
                        <div class="col-2 py-2" style="height: 100px">
                            <button class="btn btn-white h-100 w-100 border">
                                <small>
                                    {{ $date->isoFormat('dddd') }}
                                </small>
                                <h6>
                                    {{ $date->isoFormat('D') }}
                                </h6>
                                <small>
                                    {{ $date->isoFormat('MMMM YYYY') }}
                                </small>
                                {{-- @php
                                    dump($date->isoFormat('dddd, D MMMM YYYY'));
                                @endphp
                            </button> --}}
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>



@endsection
