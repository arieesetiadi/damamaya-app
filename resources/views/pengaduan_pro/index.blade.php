@extends('layout.main')

@section('content')
    <div id="test-refresh"></div>
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>
    <p class="mb-4">Layanan Pengaduan Masyarakat Yang Tidak Sesuai Dengan Janji Layanan (PRO Denpasar)</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div id="chart-card-pro" data-route="{{ route('pro.chart') }}" class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 font-weight-bold text-primary">
                    Grafik Jumlah Aduan PRO Denpasar
                </h6>
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
                <button id="btn_period_pro" type="submit" class="btn btn-sm btn-primary">Submit</button>
            </div>
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

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold text-primary">
                    Data Layanan Pengaduan PRO Denpasar
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
            <div id="pro-table-container" class="table-responsive">
                {{-- <h4 class="text-secondary text-center">Data Tidak Ditemukan</h4> --}}
                {{-- <table class="table table-hover" id="pro-table">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th class="w-custom-sm">Tanggal Pengaduan</th>
                            <th class="w-custom-sm">Nama Pelapor</th>
                            <th class="w-custom-sm">Topik</th>
                            <th class="w-custom-sm">Kategori</th>
                            <th>Nama Instansi / Perangkat Daerah</th>
                        </tr>
                    </thead>
                    <tbody> --}}
                {{-- @foreach ($data['pengaduan_pro'] as $pro)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $pro->tgl_pengaduan }}</td>
                                <td>{{ $pro->nama_pelapor }}</td>
                                <td>{{ $pro->topik }}</td>
                                <td>{{ $pro->kategori }}</td>
                                <td>{{ $pro->instansi }}</td>
                            </tr>
                        @endforeach --}}
                </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
