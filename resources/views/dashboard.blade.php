@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    {{-- <h1 class="h3 mb-4 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1> --}}

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    @php
    $chart_height = 170;
    @endphp

    {{-- Set tanggal Start dan End secara default selama 1 Minggu --}}
    <input type="hidden" id="start_date" name="start_date" value="{{ $data['chart_period']['start'] }}">
    <input type="hidden" id="end_date" name="end_date" value="{{ $data['chart_period']['end'] }}">

    <div class="row">
        <div class="col-6">
            <div class="card shadow mb-4">
                <div class="card-header">
                    Grafik Pengaduan PRO Denpasar
                </div>
                <div class="card-body">
                    <div id="pro-chart-wrapper" class="chart-area" style="height: {{ $chart_height }}px">
                        <div class="chartjs-size-monitor">
                            <div class="chartjs-size-monitor-expand">
                                <div class=""></div>
                            </div>
                            <div class="chartjs-size-monitor-shrink">
                                <div class=""></div>
                            </div>
                        </div>
                        <canvas id="pro-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400"
                            class="chartjs-render-monitor"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-6">
            <div class="card shadow mb-4">
                <div class="card-header">
                    Grafik Pengaduan Anggaran
                </div>
                <div class="card-body">
                    <div id="anggaran-chart-wrapper" class="chart-area" style="height: {{ $chart_height }}px">
                        <div class="chartjs-size-monitor">
                            <div class="chartjs-size-monitor-expand">
                                <div class=""></div>
                            </div>
                            <div class="chartjs-size-monitor-shrink">
                                <div class=""></div>
                            </div>
                        </div>
                        <canvas id="anggaran-chart" style="display: block; height: 320px; width: 601px;" width="751"
                            height="400" class="chartjs-render-monitor"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-6">
            <div class="card shadow mb-4">
                <div class="card-header d-flex justify-content-between">
                    <div class="pt-1">
                        Grafik Analisa Media
                    </div>
                    <div class="d-flex justify-content-end">
                        <select id="kategori_analisa" class="d-inline-block custom-select custom-select-sm">
                            <option selected>Semua</option>
                            @foreach ($data['kategori'] as $kategori)
                                <option>{{ $kategori->name }}</option>
                            @endforeach
                        </select>
                        <button id="btn_period_analisa" type="submit"
                            class="d-inline-block btn btn-sm btn-primary ml-2">Submit</button>
                    </div>
                </div>
                <div class="card-body">
                    <div id="analisa-chart-wrapper" class="chart-area" style="height: {{ $chart_height }}px">
                        <div class="chartjs-size-monitor">
                            <div class="chartjs-size-monitor-expand">
                                <div class=""></div>
                            </div>
                            <div class="chartjs-size-monitor-shrink">
                                <div class=""></div>
                            </div>
                        </div>
                        <canvas id="analisa-chart" style="display: block; height: 320px; width: 601px;" width="751"
                            height="400" class="chartjs-render-monitor"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <div class="row">
                        <div class="col-5">
                            Grafik Keamanan Informasi
                        </div>
                        <div class="col-7">
                            <div class="d-flex justify-content-end">
                                <div class="d-inline-block mr-3">
                                    <span class="dot bg-primary"></span>
                                    <small>Normal</small>
                                </div>
                                <div class="d-inline-block mr-3">
                                    <span class="dot bg-danger"></span>
                                    <small>Deface</small>
                                </div>
                                <div class="d-inline-block mr-3">
                                    <span class="dot bg-dark"></span>
                                    <small>Tidak Bisa Diakses</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div id="keamanan-chart-wrapper" class="chart-area" style="height: {{ $chart_height }}px">
                        <div class="chartjs-size-monitor">
                            <div class="chartjs-size-monitor-expand">
                                <div class=""></div>
                            </div>
                            <div class="chartjs-size-monitor-shrink">
                                <div class=""></div>
                            </div>
                        </div>
                        <canvas id="keamanan-chart" style="display: block; height: 320px; width: 601px;" width="751"
                            height="400" class="chartjs-render-monitor"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
