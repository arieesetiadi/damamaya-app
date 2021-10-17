@php
header('Content-type: application/xls');
header('Content-Disposition: attachment; filename=KontenSubdomain.xls');
@endphp


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- Custom fonts for this template-->
    <link href="{{ asset('vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/sb-admin-2.min.css') }}" rel="stylesheet">

    <style>
        th p {
            text-align: center;
        }

        td p {
            text-align: center;
        }

        * {
            color: black
        }

    </style>

</head>

<body>
    <table border="1" class="table table-sm table-bordered">
        <tr>
            <td colspan="11">
                <p class="text-center font-weight-bold">
                    EVALUASI PENGELOLAAN SUBDOMAIN PADA OPD, PERUSAHAAN DAERAH, DESA DAN KELURAHAN PEMERINTAH
                    KOTA DENPASAR
                </p>
            </td>
        </tr>
        <tr>
            <td colspan="11">
                <p class="text-center">
                    (Per {{ $data['daftarBulan'][$data['bulan'] - 1] }} {{ $data['tahun'] }})
                </p>
            </td>
        </tr>
        <tr>
            <th>
                <p>No.</p>
            </th>
            <th>
                <p>Instansi</p>
            </th>
            <th style="width: 110px">
                <p>Tanggal</p>
            </th>
            <th>
                <p>Survey Kepuasan Masyarakat</p>
            </th>
            <th>
                <p>Transparansi Anggaran</p>
            </th>
            <th>
                <p>Foto Kegiatan</p>
            </th>
            <th>
                <p>Berita</p>
            </th>
            <th>
                <p>Struktur Organisasi</p>
            </th>
            <th>
                <p>Foto Pimpinan</p>
            </th>
            <th>
                <p>Tupoksi</p>
            </th>
            <th>
                <p>Agenda</p>
            </th>
        </tr>
        @forelse ($data['data'] as $item)
            {{-- ✔✔
            ✔ --}}
            <tr>
                <td>
                    <p>{{ $loop->index + 1 }}</p>
                </td>
                <td>
                    <p>{{ $item->nama_pd }}</p>
                </td>
                <td>
                    <p>{{ $item->tanggal }}</p>
                </td>

                <td>
                    <p>
                        @if ($data['status'][$loop->index][0]->is_uptodate)
                            ✔✔
                        @else
                            ✔
                        @endif
                    </p>
                </td>

                <td>
                    <p>
                        @if ($data['status'][$loop->index][1]->is_uptodate)
                            ✔✔
                        @else
                            ✔
                        @endif
                    </p>
                </td>

                <td>
                    <p>
                        @if ($data['status'][$loop->index][2]->is_uptodate)
                            ✔✔
                        @else
                            ✔
                        @endif
                    </p>
                </td>

                <td>
                    <p>
                        @if ($data['status'][$loop->index][3]->is_uptodate)
                            ✔✔
                        @else
                            ✔
                        @endif
                    </p>
                </td>

                <td>
                    <p>
                        @if ($data['status'][$loop->index][4]->is_uptodate)
                            ✔✔
                        @else
                            ✔
                        @endif
                    </p>
                </td>

                <td>
                    <p>
                        @if ($data['status'][$loop->index][5]->is_uptodate)
                            ✔✔
                        @else
                            ✔
                        @endif
                    </p>
                </td>

                <td>
                    <p>
                        @if ($data['status'][$loop->index][6]->is_uptodate)
                            ✔✔
                        @else
                            ✔
                        @endif
                    </p>
                </td>

                <td>
                    <p>
                        @if ($data['status'][$loop->index][7]->is_uptodate)
                            ✔✔
                        @else
                            ✔
                        @endif
                    </p>
                </td>
            </tr>
        @empty
            <h1>Data Tidak Tersedia</h1>
        @endforelse
    </table>

    <table>
        <tr></tr>
        <tr>
            <td>(✔✔) = Up to Date</td>
        </tr>
        <tr>
            <td>(✔ ) = Belum Up to Date</td>
        </tr>
        <tr>
            <td>( ) = Belum Ada</td>
        </tr>
    </table>

</body>

</html>
