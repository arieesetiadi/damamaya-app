@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    {{-- <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">
                Laporan Grafik
            </h6>
        </div>
        <div class="card-body">
            <div class="chart-area">
                <div class="chartjs-size-monitor">
                    <div class="chartjs-size-monitor-expand">
                        <div class=""></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink">
                        <div class=""></div>
                    </div>
                </div>
                <canvas id="myAreaChart" style="display: block; height: 320px; width: 601px;" width="751" height="400"
                    class="chartjs-render-monitor" data-route="{{ route('pro.chart') }}"></canvas>
            </div>
            <hr>
        </div>
    </div> --}}

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold text-primary">
                    Data Layanan Konten Subdomain
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
            <div class="table-responsive table-subdomain">
                <table class="table table-hover" id="dataTable">
                    <thead>
                        <tr id="tr-subdomain">
                            <th>No.</th>
                            <th>Tanggal</th>
                            <th style="white-space: nowrap">Nama Instansi / Perangkat Daerah</th>
                            <th>Survey Kepuasan Masyarakat</th>
                            <th>Agenda</th>
                            <th>Foto Kegiatan</th>
                            <th>Berita</th>
                            <th>Foto Pimpinan</th>
                            <th>Struktur Organisasi</th>
                            <th>Tupoksi</th>
                            <th>Transparansi Anggaran</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data['konten_subdomain'] as $konten)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $konten->tanggal }}</td>
                                <td>{{ $konten->nama_pd }}</td>
                                <td>
                                    @if ($konten->survey_kepuasan_masyarakat == 1)
                                        <span class="badge badge-primary d-block py-2">Ada</span>
                                    @else
                                        <span class="badge badge-danger d-block py-2">Tidak Ada</span>
                                    @endif
                                </td>
                                <td>
                                    @if ($konten->agenda == 1)
                                        <span class="badge badge-primary d-block py-2">Ada</span>
                                    @else
                                        <span class="badge badge-danger d-block py-2">Tidak Ada</span>
                                    @endif
                                </td>
                                <td>
                                    @if ($konten->foto_kegiatan == 1)
                                        <span class="badge badge-primary d-block py-2">Ada</span>
                                    @else
                                        <span class="badge badge-danger d-block py-2">Tidak Ada</span>
                                    @endif
                                </td>
                                <td>
                                    @if ($konten->berita == 1)
                                        <span class="badge badge-primary d-block py-2">Ada</span>
                                    @else
                                        <span class="badge badge-danger d-block py-2">Tidak Ada</span>
                                    @endif
                                </td>
                                <td>
                                    @if ($konten->foto_pimpinan == 1)
                                        <span class="badge badge-primary d-block py-2">Ada</span>
                                    @else
                                        <span class="badge badge-danger d-block py-2">Tidak Ada</span>
                                    @endif
                                </td>
                                <td>
                                    @if ($konten->struktur_organisasi == 1)
                                        <span class="badge badge-primary d-block py-2">Ada</span>
                                    @else
                                        <span class="badge badge-danger d-block py-2">Tidak Ada</span>
                                    @endif
                                </td>
                                <td>
                                    @if ($konten->tupoksi == 1)
                                        <span class="badge badge-primary d-block py-2">Ada</span>
                                    @else
                                        <span class="badge badge-danger d-block py-2">Tidak Ada</span>
                                    @endif
                                </td>
                                <td>
                                    @if ($konten->transparansi_anggaran == 1)
                                        <span class="badge badge-primary d-block py-2">Ada</span>
                                    @else
                                        <span class="badge badge-danger d-block py-2">Tidak Ada</span>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
