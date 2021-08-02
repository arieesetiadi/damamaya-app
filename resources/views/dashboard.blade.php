@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Set tanggal Start dan End secara default selama 1 Minggu --}}
    <input id="_token" type="hidden" value="{{ csrf_token() }}">
    <input type="date" class="d-none form-control form-control-sm" id="start_date" name="start_date"
        value="{{ $data['chart_period']['start'] }}">
    <input type="date" class="d-none form-control form-control-sm" id="end_date" name="end_date"
        value="{{ $data['chart_period']['end'] }}">

    <div class="row">
        <div class="col-6">
            <div id="chart-card-pro" data-route="{{ route('pro.chart') }}" class="card shadow mb-4">
                <div class="card-header">
                    Grafik Pengaduan PRO Denpasar
                </div>
                <div class="card-body">
                    <div id="pro-chart-area" class="chart-area">
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
                    <hr>
                </div>
            </div>
        </div>

        <div class="col-6">
            <div id="chart-card-anggaran" data-route="{{ route('anggaran.chart') }}" class="card shadow mb-4">
                <div class="card-header">
                    Grafik Pengaduan Anggaran
                </div>
                <div class="card-body">
                    <div id="anggaran-chart-area" class="chart-area">
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
                    <hr>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-6">
            <div id="chart-card-analisa" data-route="{{ route('analisa.chart') }}" class="card shadow mb-4">
                <div class="card-header d-flex justify-content-between">
                    <div>
                        Grafik Analisa Media
                    </div>
                    <div class="d-flex justify-content-end">
                        <select id="kategori_analisa" class="d-inline-block custom-select custom-select-sm">
                            <option selected hidden>Pilih Kategori</option>
                            @foreach ($data['kategori'] as $kategori)
                                @if ($kategori->name == $data['kategori'][0]->name)
                                    <option value="{{ $kategori->name }}" selected>{{ $kategori->name }}</option>
                                @else
                                    <option value="{{ $kategori->name }}">{{ $kategori->name }}</option>
                                @endif
                            @endforeach
                        </select>
                        <button id="btn_period_analisa" type="submit"
                            class="d-inline-block btn btn-sm btn-primary ml-2">Submit</button>
                    </div>
                </div>
                <div class="card-body">
                    <div id="analisa-chart-area" class="chart-area">
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
                    <hr>
                </div>
            </div>
        </div>

        <div class="col-6">
            <div class="card shadow mb-4">
                <div class="card-header">
                    Grafik Keamanan Informasi
                </div>
                <div class="card-body">
                    <div class="my-5 py5">Isi Grafik</div>
                </div>
            </div>
        </div>
    </div>

    {{-- <div class="row">
        <div class="col-12">
            <div class="card shadow mb-4">
                <div class="card-header">
                    Grafik Layanan Informasi
                </div>
                <div class="card-body">
                    <div class="my-5 py5">Isi Grafik</div>
                </div>
            </div>
        </div>
    </div> --}}
@endsection
