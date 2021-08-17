@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2">|</h4>
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
                            <option selected>Semua</option>
                            <option>Normal</option>
                            <option>Deface</option>
                            <option>Tidak Bisa Diakses</option>
                        </select>
                    </div>
                </div>
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
                <button id="keamanan-submit-period" type="submit" class="btn btn-sm btn-primary">Submit</button>
            </div>
        </div>
        <div class="card-body">
            <div id="keamanan-chart-wrapper" class="chart-area">
                <div class="chartjs-size-monitor">
                    <div class="chartjs-size-monitor-expand">
                        <div class=""></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink">
                        <div class=""></div>
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
                    <span class="dot bg-danger"></span>
                    Deface
                </div>
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
                    Data Layanan Keamanan Informasi
                </h6>
            </div>

            <div>
            </div>
        </div>
        <div class="card-body">
            <div id="keamanan-table-wrapper" class="table-responsive">
                {{-- Table diisi melalui informasi-chart.js --}}
            </div>
        </div>
    </div>
@endsection
