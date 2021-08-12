@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2">|</h4>
    <p class="mb-4 d-inline-block">Layanan Pengaduan Masyarakat Yang Memerlukan Dukungan Anggaran (TL Awal)</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 font-weight-bold">
                    Grafik Jumlah Aduan Anggaran
                </h6>
            </div>
            <div>
                <span>Periode :</span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="start_date" name="start_date"
                        value="{{ $data['chart_period']['start'] }}">
                </div>
                <span class="d-inline-block mx-2"> - </span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="end_date" name="end_date"
                        value="{{ $data['chart_period']['end'] }}">
                </div>
                <button id="anggaran-submit-period" type="submit" class="btn btn-sm btn-primary">Submit</button>
            </div>
        </div>
        <div class="card-body">
            <div id="anggaran-chart-wrapper" class="chart-area">
                <div class="chartjs-size-monitor">
                    <div class="chartjs-size-monitor-expand">
                        <div class=""></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink">
                        <div class=""></div>
                    </div>
                </div>
                <canvas id="anggaran-chart" style="display: block; height: 320px; width: 601px;" width="751"
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
                    Data Layanan Pengaduan Anggaran
                </h6>
            </div>

            <div>

            </div>
        </div>
        <div class="card-body">
            <div id="anggaran-table-wrapper" class="table-responsive">
                {{-- Table diisi dari pengaduan-anggaran-chart.js --}}
            </div>
        </div>
    </div>
@endsection
