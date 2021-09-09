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
            <div class="row w-100">
                <div class="col-9">
                    <h6 class="m-0 mt-2 font-weight-bold">
                        {{ isset($data['title']) ? $data['title'] : 'Title' }}
                    </h6>
                </div>
                <div class="col-3">
                    <div class="container d-flex justify-content-between">
                        <div>
                            <button id="monthLeft" class="btn btn-white btn-sm">
                                <i class="fas fa-chevron-left"></i>
                            </button>
                        </div>
                        <div>
                            <h6 id="monthName" class="m-0 mt-2 font-weight-bold">September</h6>
                        </div>
                        <div>
                            <button id="monthRight" class="btn btn-white btn-sm">
                                <i class="fas fa-chevron-right"></i>
                            </button>
                        </div>
                    </div>
                    {{-- <select id="pro-kategori" class="d-inline-block custom-select custom-select-sm">
                        <option value="" selected>September</option>
                    </select> --}}
                    {{-- @foreach ($data['bulan'] as $bulan)
                            <option>{{ $bulan->name }}</option>
                        @endforeach --}}
                </div>
            </div>
        </div>
        <div class="card-body">
            <div id="pinjam-ruangan-table-wrapper" class="row">
                @foreach ($data['periods'] as $date)
                    <div class="pinjam-ruangan-table col-2 py-2" style="height: 100px">
                        <button class="btn btn-white h-100 w-100 border">
                            <small>
                                {{ $date->isoFormat('dddd') }}
                            </small>
                            <h6>
                                {{ $date->isoFormat('D') }}
                            </h6>
                            <small>
                                <span>
                                    {{ $date->isoFormat('MMMM') }}
                                </span>
                                <span>
                                    {{ $date->isoFormat('YYYY') }}
                                </span>
                            </small>
                        </button>
                    </div>
                @endforeach
            </div>
        </div>
    </div>



@endsection
