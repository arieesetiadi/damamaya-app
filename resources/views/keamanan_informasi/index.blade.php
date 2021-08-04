@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>
    <p class="mb-4">Test Link (Sampling 10 Website / Hari)</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div id="chart-card-keamanan" data-route="{{ route('keamanan.chart') }}" class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <div class="row">
                    <div class="col-lg-6">
                        <h6 class="m-0 d-inline-block font-weight-bold text-primary">
                            Grafik Status
                        </h6>
                    </div>
                    <div class="col-lg-6">
                        {{-- Select Kategori --}}
                        <select id="kategori_keamanan" class="d-inline-block custom-select custom-select-sm">
                            <option selected>Semua</option>
                            <option>Normal</option>
                            <option>Deface</option>
                            <option>Tidak Bisa Diakses</option>
                        </select>
                    </div>
                </div>
            </div>
            <div>
                <span>Periode :</span>
                <input id="_token" type="hidden" value="{{ csrf_token() }}">
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="start_date" name="start_date"
                        value="{{ $data['chart_period']['start'] }}">
                </div>
                <span class="d-inline-block mx-2"> - </span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="end_date" name="end_date"
                        value="{{ $data['chart_period']['end'] }}">
                </div>
                <button id="btn_period_keamanan" type="submit" class="btn btn-sm btn-primary">Submit</button>
            </div>
        </div>
        <div class="card-body">
            <div id="keamanan-chart-area" class="chart-area">
                <div class="chartjs-size-monitor">
                    <div class="chartjs-size-monitor-expand">
                        <div class=""></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink">
                        <div class=""></div>
                    </div>
                </div>
                <canvas id="keamanan-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400"
                    class="chartjs-render-monitor"></canvas>
            </div>
            <hr>
            <div>
                <div class="d-inline-block mr-3">
                    <span class="dot bg-primary"></span>
                    Normal
                </div>
                <div class="d-inline-block mr-3">
                    <span class="dot bg-danger"></span>
                    Deface
                </div>
                <div class="d-inline-block mr-3">
                    <span class="dot bg-dark"></span>
                    Tidak Bisa Diakses
                </div>
            </div>
        </div>
    </div>

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold text-primary">
                    Data Layanan Keamanan Informasi
                </h6>
            </div>

            <div>
                {{-- <form action="#" method="POST" class="form-inline mr-auto w-100 navbar-search">
                    @csrf
                    <div class="input-group">
                        <input name="keyword" type="text" class="form-control form-control-sm bg-light small"
                            placeholder="Cari user..." aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-sm btn-primary" type="submit">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form> --}}
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Tanggal</th>
                            <th>Jam</th>
                            <th>Link Website</th>
                            <th>Status Website</th>
                            <th>Nama Petugas</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data['keamanan_informasi'] as $keamanan_info)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $keamanan_info->tanggal }}</td>
                                <td>{{ $keamanan_info->jam }}</td>
                                <td>{{ $keamanan_info->link_website }}</td>
                                <td>{{ $keamanan_info->status_website }}</td>
                                <td>{{ $keamanan_info->nama_petugas }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
