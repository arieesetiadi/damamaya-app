@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2">|</h4>
    <p class="mb-4 d-inline-block">Daftar website yang tidak bisa diakses</p>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 d-inline-block font-weight-bold">
                    Grafik Status
                </h6>
            </div>
            <div>
                <span>Periode :</span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="start-date"
                        value="{{ $data['chart_period']['start'] }}">
                </div>
                <span class="d-inline-block mx-2"> - </span>
                <div class="form-group d-inline-block">
                    <input type="date" class="form-control form-control-sm" id="end-date"
                        value="{{ $data['chart_period']['end'] }}">
                </div>
                <button id="tik-submit-period" type="submit" class="btn btn-sm btn-primary">Submit</button>
            </div>
        </div>
        <div class="card-body">
            <div id="tik-chart-wrapper" class="chart-area">
                <div class="chartjs-size-monitor">
                    <div class="chartjs-size-monitor-expand">
                        <div class=""></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink">
                        <div class=""></div>
                    </div>
                </div>
                <canvas id="tik-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400"
                    class="chartjs-render-monitor"></canvas>
            </div>
            <hr>
            <div>
                <div class="d-inline-block mr-3">
                    <span class="dot bg-dark"></span>
                    Tidak Bisa Diakses
                </div>
            </div>
        </div>
    </div>

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold">
                    Data Web Tidak Bisa Diakses
                </h6>
            </div>

            <div>
            </div>
        </div>
        <div class="card-body">
            <div id="tik-table-wrapper" class="table-responsive">
                {{-- Table diisi melalui bidang-tik-report.js --}}
            </div>
        </div>
    </div>



    <!-- Large modal -->
    <div class="modal fade detail-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Capture Detail</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="detail-capture-wrapper" class="mx-2">
                        <img class="w-100 rounded shadow" id="detail-capture"
                            data-path="{{ asset('img/capture/laporan\\') }}" src="" alt="Capture Website">
                    </div>
                    <hr>
                    <h6 class="mt-4 font-weight-bold mx-2">Keterangan :</h6>
                    <p class="text-justify mx-2" id="detail-keterangan"></p>
                </div>
            </div>
        </div>
    </div>
@endsection
