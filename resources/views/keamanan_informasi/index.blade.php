@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2"> - </h4>
    <p class="mb-4 d-inline-block">Test Link (Sampling 10 Website / Hari)</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <div class="row">
                    <div class="col-lg-6">
                        <h6 class="m-0 d-inline-block font-weight-bold">
                            Grafik Status
                        </h6>
                    </div>
                    <div class="col-lg-6">
                        {{-- Select Kategori --}}
                        <select style="width: 170px" id="keamanan-kategori"
                            class="d-inline-block custom-select custom-select-sm">
                            <option value="" selected>Semua</option>
                            <option>Normal</option>
                            <option>Deface</option>
                            <option>Tidak Bisa Diakses</option>
                            <option>Lainnya</option>
                        </select>
                    </div>
                </div>
            </div>
            <div>
                <span>Periode :</span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="start-date"
                        value="{{ $data['periodStart'] }}">
                </div>
                <span class="d-inline-block mx-2"> - </span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="end-date"
                        value="{{ $data['periodEnd'] }}">
                </div>
                <button id="keamanan-submit-period" type="submit" class="btn btn-sm btn-primary">Submit</button>
            </div>
        </div>
        <div class="card-body">
            <div id="keamanan-chart-wrapper" class="chart-area">
                <div class="chartjs-size-monitor">
                    <div class="chartjs-size-monitor-expand">
                        <div class="___class_+?21___"></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink">
                        <div class="___class_+?23___"></div>
                    </div>
                </div>
                <canvas id="keamanan-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400"
                    class="chartjs-render-monitor"></canvas>
            </div>
            <hr>
            <div>
                <div class="d-inline-block mr-3">
                    <span class="dot bg-primary"></span>
                    Normal
                </div>
                <div class="d-inline-block mr-3">
                    <span class="dot bg-warning"></span>
                    Deface
                </div>
                <div class="d-inline-block mr-3">
                    <span class="dot bg-danger"></span>
                    Tidak Bisa Diakses
                </div>
                <div class="d-inline-block mr-3">
                    <span class="dot bg-secondary"></span>
                    Lainnya
                </div>
            </div>
        </div>
    </div>

    <!-- Summary Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div class="col-9">
                <h6 class="m-0 mt-2 font-weight-bold">
                    Summary Laporan Website
                </h6>
            </div>
            <div class="col-3">
                <div class="container d-flex justify-content-between">
                    <div>
                        <button id="monthLeft" class="btn btn-white btn-sm">
                            <i class="fas fa-chevron-left"></i>
                        </button>
                    </div>
                    <div>
                        <h6 id="monthName" class="m-0 mt-2 font-weight-bold">
                            Oktober
                        </h6>
                    </div>
                    <div>
                        <button id="monthRight" class="btn btn-white btn-sm">
                            <i class="fas fa-chevron-right"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div>
            </div>
        </div>
        <div class="card-body">
            <div id="keamanan-summary-wrapper" class="table-responsive" style="overflow-y: scroll; height: 650px;">
                {{-- Table diisi melalui keamanan-informasi-report.js --}}
            </div>
        </div>
        {{-- <div class="card-body">
            <div class="table-responsive" style="overflow-y: scroll; height: 500px">
                <table class="table table-sm table-hover">

                    <tr>
                        <th>No.</th>
                        <th>Web Subdomain</th>
                        <th>Status Periksa</th>
                    </tr>
                    @forelse ($data['subdomains'] as $subdomain)
                        @php
                            $linkWebsite = 'https://' . $subdomain->link_website;
                        @endphp
                        <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>
                                <a href="{{ $linkWebsite }}" target="_blank">
                                    {{ $linkWebsite }}
                                </a>
                            </td>
                            <td>
                                @php
                                    $statusPeriksa = App\Models\Layanan\KeamananInformasi::getStatusPeriksa($linkWebsite);
                                    if (count($statusPeriksa) > 0) {
                                        echo 'SUDAH';
                                    }
                                @endphp
                            </td>
                        </tr>
                    @empty
                        <h4 id="keamanan-table" class="text-secondary text-center">
                            Data Tidak Ditemukan
                        </h4>
                    @endforelse
                </table>
            </div>
        </div> --}}
    </div>

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold">
                    Seluruh Laporan Status Website
                </h6>
            </div>

            <div>
            </div>
        </div>
        <div class="card-body">
            <div id="keamanan-table-wrapper" style="overflow-y: scroll;">
                {{-- Table diisi melalui informasi-chart.js --}}
            </div>
        </div>
    </div>

    <!-- Hasil Pemeriksaan Modal -->
    <div class="modal fade hasil-pemeriksaan-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Hasil Pemeriksaan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h6 class="mt-1 font-weight-bold mx-2">Website Subdomain</h6>
                    <p class="ml-2" id="detail-link"></p>

                    <h6 class="mt-4 font-weight-bold mx-2">Tanggal Pemeriksaan</h6>
                    <p class="ml-2" id="detail-tanggal"></p>

                    <h6 class="mt-4 font-weight-bold mx-2">Jam Pemeriksaan</h6>
                    <p class="ml-2" id="detail-jam"></p>

                    <h6 class="mt-4 font-weight-bold mx-2">Status Website</h6>
                    <p class="ml-2" id="detail-status"></p>

                    <h6 class="mt-4 font-weight-bold mx-2">Keterangan :</h6>
                    <p class="text-justify mx-2" id="detail-keterangan"></p>

                    <h6 class="mt-3 font-weight-bold mx-2">Capture Website :</h6>
                    <div id="detail-capture-wrapper" class="mx-2 my-2">
                        <img class="w-100 rounded shadow" id="detail-capture"
                            data-path="{{ asset('img/capture/laporan\\') }}" src="" alt="Capture Website">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Tindak Lanjut Modal -->
    <div class="modal fade tindak-modal" tabindex="-1" role="dialog" aria-hidden="true" data-keyboard="false"
        data-backdrop="static">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <form id="form-tindak-lanjut" action="{{ route('tindak-lanjut.store') }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <input id="id-keamanan" type="hidden" name="idKeamanan" value="">

                    <div class="modal-header">
                        <h5 class="modal-title">Tindak Lanjut</h5>
                    </div>

                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="tanggal">Tanggal :</label>
                            <input id="tanggal" name="tanggal"
                                class="form-control  @error('tanggal')  border-danger @enderror" type="date"
                                value="{{ $data['now'] }}">
                            @error('tanggal')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="jam">Jam :</label>
                            <input id="jam" name="jam" class="form-control  @error('jam')  border-danger @enderror"
                                type="time" value="{{ $data['nowTime'] }}">
                            @error('jam')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="keterangan">Keterangan Tindak Lanjut :</label>
                            <textarea name="keterangan" class="form-control" id="keterangan"
                                rows="4">{{ old('keterangan') }}</textarea>
                        </div>

                        <div>
                            <label for="">Capture / Bukti Tindak Lanjut :</label>
                            <div class="custom-file">
                                <input name="capture" id="capture" type="file" accept="image/*" class="custom-file-input">
                                <label id="capture-label" class="custom-file-label" for="capture">Browse image..</label>
                            </div>
                            @error('capture')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                            <div class="d-flex mt-1">
                                <div class="w-100" id="capture-preview-wrapper"></div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-sm btn-primary">Submit</button>
                        <button id="cancel-tindak-lanjut" type="button" class="btn btn-sm btn-secondary"
                            data-dismiss="modal">Batal</button>
                    </div>
            </div>
            </form>
        </div>
    </div>

    {{-- Delete Modal --}}
    <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Hapus Data Keamanan Informasi</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Tekan OK untuk menghapus data.</div>
                <div class="modal-footer">
                    <button class="btn btn-sm btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <form id="form-delete" action="{{ route('keamanan-informasi.destroy', 0) }}" method="POST">
                        @csrf
                        <input type="hidden" name="_method" value="DELETE">
                        <input id="id" type="hidden" name="id" value="">

                        <button type="submit" class="btn btn-sm btn-primary">OK</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
