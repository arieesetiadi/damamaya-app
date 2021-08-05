@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>
    <p class="mb-4">Layanan Pengaduan Masyarakat Yang Memerlukan Dukungan Anggaran (TL Awal)</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div id="chart-card-anggaran" data-route="{{ route('anggaran.chart') }}" class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 font-weight-bold text-primary">
                    Grafik Jumlah Aduan Anggaran
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
                <button id="btn_period_anggaran" type="submit" class="btn btn-sm btn-primary">Submit</button>
            </div>
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
                <canvas id="anggaran-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400"
                    class="chartjs-render-monitor" data-route="{{ route('anggaran.chart') }}"></canvas>
            </div>
            <hr>
        </div>
    </div>

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold text-primary">
                    Data Layanan Pengaduan Anggaran
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
            <div id="anggaran-table-container" class="table-responsive">
                {{-- <table class="table" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Tanggal Pengaduan</th>
                            <th>Nama Pelapor</th>
                            <th>Topik</th>
                            <th>Kategori</th>
                            <th>Instansi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data['pengaduan_anggaran'] as $anggaran)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $anggaran->tgl_pengaduan }}</td>
                                <td>{{ $anggaran->nama_pelapor }}</td>
                                <td>{{ $anggaran->topik }}</td>
                                <td>{{ $anggaran->kategori }}</td>
                                <td>{{ $anggaran->instansi }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table> --}}
            </div>
        </div>
    </div>
@endsection
