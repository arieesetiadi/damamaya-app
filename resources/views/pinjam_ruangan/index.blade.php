@extends('layout.main')

@section('content')

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    {{-- Kalender Pinjaman --}}
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div class="row w-100">
                <div class="col-9">
                    <h6 class="m-0 mt-2 font-weight-bold">
                        {{ isset($data['title']) ? $data['title'] : 'Title' }}
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
                            <h6 id="monthName" class="m-0 mt-2 font-weight-bold"></h6>
                        </div>
                        <div>
                            <button id="monthRight" class="btn btn-white btn-sm">
                                <i class="fas fa-chevron-right"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div id="pinjam-ruangan-table-wrapper" class="row">
                {{-- Daftar tanggal diisi melalui pinjam-ruangan-report.js --}}
            </div>
        </div>
    </div>

    <!-- Detail Modal -->
    <div id="list-pinjam-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">List Pinjam Ruangan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Membatalkan Pinjaman Ruangan</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Tekan OK untuk menghapus data pinjaman.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <form id="form-delete" action="{{ route('pinjam-ruangan.destroy', 0) }}" method="POST">
                        @csrf
                        <input type="hidden" name="_method" value="DELETE">
                        <input id="id" type="hidden" name="id" value="">

                        <button type="submit" class="btn btn-primary">OK</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
