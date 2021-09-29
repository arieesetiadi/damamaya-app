@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="mb-4 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    <!-- Report Table  -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <h6 class="m-0 mt-2 font-weight-bold">
                    Data Layanan Konten Subdomain
                </h6>
            </div>

            <div>
                <div class="row">
                    <div>
                        <select id="subdomain-bulan" class="d-inline-block custom-select custom-select-sm">
                            {{-- Tampilkan filter bulan, dengan nilai default bulan sekarang --}}
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
                        {{-- Tampilkan filter tahun, dengan nilai default tahun sekarang --}}
                        <input id="subdomain-tahun" type="number" value="{{ $data['tahun_now'] }}" min="0" step="1"
                            class="form-control form-control-sm" />
                    </div>
                    <div>
                        <button id="subdomain-submit-filter" class="btn btn-primary btn-sm">Submit</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="card-body">
            <div id="subdomain-table-wrapper" class="table-responsive table-subdomain">
                {{-- Table ini diisi melalui konten-subdomain-chart.js --}}
            </div>
        </div>
    </div>


    {{-- Modal untuk detail Konten Subdomain --}}
    <div class="modal fade modal konten-subdomain-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h6 id="konten-subdomain-modal-title"></h6>
                </div>
                <div id="konten-subdomain-modal-body" class="modal-body">

                </div>
            </div>
        </div>
    </div>
@endsection
