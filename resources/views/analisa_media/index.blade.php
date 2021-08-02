@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>
    <p class="mb-4">Aplikasi Media Analitik</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div id="chart-card-analisa" data-route="{{ route('analisa.chart') }}" class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div class="w-25">
                <div class="row">
                    <div class="col-lg-6">
                        <h6 class="m-0 d-inline-block font-weight-bold text-primary">
                            Laporan Grafik
                        </h6>
                    </div>
                    <div class="col-lg-6">
                        {{-- Select Kategori --}}
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
                    </div>
                </div>
            </div>
            {{-- Periode Chart --}}
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
                <button id="btn_period_analisa" type="submit" class="btn btn-sm btn-primary">Submit</button>
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
                <canvas id="analisa-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400"
                    class="chartjs-render-monitor"></canvas>
            </div>
            <hr>
        </div>
    </div>

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold text-primary">
                    Laporan Table
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
                            <th>Issue Lokal</th>
                            <th>Issue Nasional</th>
                            <th>Kategori</th>
                            <th>Nama Petugas</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data['analisa_media'] as $analisa)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $analisa->tanggal }}</td>
                                <td>{{ $analisa->issue_lokal }}</td>
                                <td>{{ $analisa->issue_nasional }}</td>
                                <td>{{ $analisa->kategori }}</td>
                                <td>{{ $analisa->nama_petugas }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
