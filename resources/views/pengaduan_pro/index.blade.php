@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2"> - </h4>
    <p class="mb-4 d-inline-block">Layanan Pengaduan Masyarakat Yang Tidak Sesuai Dengan Janji Layanan (PRO Denpasar)</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div class="row">
                <div class="col-6">
                    <h6 class="m-0 font-weight-bold">
                        Grafik Jumlah Aduan PRO Denpasar
                    </h6>
                </div>
                <div class="col-6">
                    <select id="pro-kategori" class="d-inline-block custom-select custom-select-sm">
                        <option value="" selected>Semua</option>
                        @foreach ($data['kategori'] as $kategori)
                            <option>{{ $kategori->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div>
                <span>Periode :</span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="start-date"
                        value="{{ $data['chart_period']['start'] }}">
                </div>
                <span class="d-inline-block mx-2"> - </span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="end-date"
                        value="{{ $data['chart_period']['end'] }}">
                </div>
                <button id="pro-submit-period" type="submit" class="btn btn-sm btn-primary">Submit</button>
            </div>
        </div>
        <div class="card-body">
            <div id="pro-chart-wrapper" class="chart-area">
                <div class="chartjs-size-monitor">
                    <div class="chartjs-size-monitor-expand">
                        <div class=""></div>
                    </div>
                    <div class="
                            chartjs-size-monitor-shrink">
                        <div class=""></div>
                    </div>
                </div>
                <canvas class="
                                chartjs-render-monitor" id="pro-chart" width="751"
                    height="400"></canvas>
            </div>
            <hr>
        </div>
    </div>

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold">
                    Data Layanan Pengaduan PRO Denpasar
                </h6>
            </div>

            <div>
            </div>
        </div>
        <div class="card-body">
            <div id="pro-table-wrapper" class="table-responsive">
                {{-- Table diisi melalui pengaduan-pro-report.js --}}
            </div>
        </div>
    </div>

@endsection
