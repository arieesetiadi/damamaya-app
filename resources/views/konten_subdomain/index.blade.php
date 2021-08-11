@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    {{-- <h1 class="h3 mb-4 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1> --}}

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold text-primary">
                    Data Layanan Konten Subdomain
                </h6>
            </div>

            <div>
                <div class="row">
                    <div id="subdomain-route" data-route="{{ route('subdomain.report') }}">
                        <select id="subdomain-bulan" class="d-inline-block custom-select custom-select-sm">
                            @foreach ($data['bulan_list'] as $bulan)
                                @if ($data['bulan_now'] == $bulan['value'])
                                    <option value="{{ $bulan['value'] }}" selected>{{ $bulan['name'] }}</option>
                                @else
                                    <option value="{{ $bulan['value'] }}">{{ $bulan['name'] }}</option>
                                @endif
                            @endforeach
                        </select>
                    </div>
                    <div class="mx-2">
                        <input id="subdomain-tahun" type="number" value="{{ $data['tahun_now'] }}" min="0" step="1"
                            class="form-control form-control-sm" />
                    </div>
                    <div>
                        <button id="btn-subdomain" class="btn btn-primary btn-sm">Submit</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="card-body">
            <div id="subdomain-report-container" class="table-responsive table-subdomain">
                {{-- <table class="table table-hover" id="dataTable">
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
                </table> --}}
            </div>
        </div>
    </div>
@endsection
