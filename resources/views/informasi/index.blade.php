@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2"> - </h4>
    <p class="mb-4 d-inline-block">Kelengkapan Daftar Informasi Publik</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <h6 class="m-0 mt-2 font-weight-bold">
                Laporan Tahun Update Instansi
            </h6>
        </div>
        <div class="card-body">
            <div id="instansi-table-wrapper" class="table-responsive h-table">
                <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th class="w-nama-instansi">Nama Instansi / Perangkat Daerah</th>
                            @foreach ($data['years'] as $y)
                                <th>{{ $y }}</th>
                            @endforeach
                        </tr>
                    </thead>
                    <tbody>
                        {{-- Loop semua  data instansi --}}
                        @foreach ($data['instansi'] as $ins)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td class="w-nama-instansi text-left">{{ $ins->nama_pd }}</td>
                                @foreach ($data['years'] as $y)
                                    @php
                                        //Ambil tahun update instansi dari table layanan informasi
                                        $tahun_update = Illuminate\Support\Facades\DB::table('layanan_informasi')
                                            ->where('nama_pd', "$ins->nama_pd")
                                            ->max('tahun_update');
                                    @endphp

                                    {{-- Cek apakah ada data instansi di Layanan Informasi --}}
                                    @if (isset($tahun_update))

                                        {{-- Tampikan tahun update dari instansi tersebut --}}
                                        {{-- Jika sama dengan tahun berjalan, maka tampilkan warna biru --}}
                                        @if ($y == $tahun_update && $loop->last)
                                            <td>
                                                <span class="badge badge-primary d-block py-2">{{ $y }}</span>
                                            </td>
                                        @elseif ($y == $tahun_update)
                                            <td>
                                                <span class="badge badge-danger d-block py-2">{{ $y }}</span>
                                            </td>
                                        @else
                                            <td></td>
                                        @endif

                                    @else
                                        <td></td>
                                    @endif

                                @endforeach
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold">
                    Data Layanan Informasi
                </h6>
            </div>

            <div>
            </div>
        </div>
        <div class="card-body">
            <div id="informasi-table-wrapper" class="table-responsive h-table">
                <table class="table" id="dataTable" width="100%" cellspacing="0">
                    @if (count($data['informasi']) > 0)
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama Instansi / Perangkat Daerah</th>
                                <th>Tahun Update</th>
                                <th>Nama Petugas</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data['informasi'] as $info)
                                <tr>
                                    <td>{{ $loop->index + 1 }}</td>
                                    <td>{{ $info->nama_pd }}</td>
                                    <td>{{ $info->tahun_update }}</td>
                                    <td>{{ $info->name }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    @else
                        <h4 class="text-secondary text-center">Data Tidak Ditemukan</h4>
                    @endif
                </table>
            </div>
        </div>
    </div>

@endsection
