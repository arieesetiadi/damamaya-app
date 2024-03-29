@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2"> - </h4>
    <p class="mb-4 d-inline-block">Riwayat website yang sudah ditindak lanjuti</p>

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
                    Data Tindak Lanjut
                </h6>
            </div>

            <div>
            </div>
        </div>
        <div class="card-body">
            <div id="keamanan-table-wrapper" class="table-responsive">
                <table class="table table-sm table-hover container-fluid">
                    @if (count($data['tindakLanjut']) > 0)
                        <tr>
                            <th>No.</th>
                            <th>Link Website</th>
                            <th>Tanggal Penindakan</th>
                            <th>Jam Penindakan</th>
                            <th>View</th>
                            <th>Response Time</th>
                            <th>Petugas</th>

                            @if (Auth::user()->role_id == 1 || Auth::user()->role_id == 2)
                                <th>Aksi</th>
                            @endif
                        </tr>
                        @foreach ($data['tindakLanjut'] as $tindakLanjut)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>

                                <td>
                                    <a href="{{ $tindakLanjut->link_website }}" target="_blank">
                                        {{ $tindakLanjut->link_website }}
                                    </a>
                                </td>

                                @php
                                    $date = Carbon\Carbon::createFromFormat('Y-m-d', $tindakLanjut->tanggal);
                                @endphp

                                <td>{{ $date->format('d F Y') }}</td>
                                <td>{{ $tindakLanjut->jam }}</td>

                                <td>
                                    <a href="#" class="detail-modal-link" data-toggle="modal" data-target=".detail-modal"
                                        data-capture="{{ $tindakLanjut->capture }}"
                                        data-keterangan="{{ $tindakLanjut->keterangan }}">Mirror</a>
                                </td>

                                <td>{{ $tindakLanjut->response_time }} Hari</td>
                                <td>{{ $tindakLanjut->name }}</td>

                                @if (Auth::user()->role_id == 1 || Auth::user()->role_id == 2)
                                    <td>
                                        <button class="btn btn-sm btn-primary edit-tindak-lanjut" id="edit-tindak-lanjut"
                                            data-toggle="modal" data-id="{{ $tindakLanjut->id }}"
                                            data-target="#edit-tindak-lanjut-modal">Edit</button>

                                        <button class=" btn btn-sm btn-danger delete-tindak-lanjut"
                                            id="delete-tindak-lanjut" data-toggle="modal"
                                            data-id="{{ $tindakLanjut->id }}"
                                            data-target="#delete-tindak-lanjut-modal">Hapus</button>
                                    </td>
                                @endif
                            </tr>
                        @endforeach
                    @else
                        <h4 id="keamanan-table" class="text-secondary text-center">
                            Data Tidak Ditemukan
                        </h4>
                    @endif
                </table>
            </div>
        </div>
    </div>



    <!-- Mirror Modal -->
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
                            data-path="{{ asset('img/capture/tindak_lanjut\\') }}" src="" alt="Capture Website">
                    </div>
                    <hr>
                    <h6 class="mt-4 font-weight-bold mx-2">Keterangan :</h6>
                    <p class="text-justify mx-2" id="detail-keterangan"></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal fade" id="edit-tindak-lanjut-modal" tabindex="-1" role="dialog" aria-hidden="true"
        data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <form id="form-edit-tindak-lanjut" action="{{ route('keamanan-informasi-tindak.update', 0) }}"
                    method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="_method" value="PUT">
                    <input id="id" type="hidden" name="id" value="">

                    <div class="modal-header">
                        <h5 class="modal-title">Tindak Lanjut</h5>
                    </div>

                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="tanggal">Tanggal :</label>
                            <input id="tanggal" name="tanggal"
                                class="form-control  @error('tanggal')  border-danger @enderror" type="date" value="">
                            @error('tanggal')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="jam">Jam :</label>
                            <input id="jam" name="jam" class="form-control  @error('jam')  border-danger @enderror"
                                type="time" value="" step="any">
                            @error('jam')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="keterangan">Keterangan Tindak Lanjut :</label>
                            <textarea name="keterangan" class="form-control" id="keterangan" rows="4"></textarea>
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
                                <div class="w-100" id="capture-preview-wrapper"
                                    data-path="{{ asset('img/capture/tindak_lanjut\\') }}">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" modal-footer">
                        <button type="submit" class="btn btn-sm btn-primary">Submit</button>
                        <button id="cancel-edit-tindak-lanjut" type="button" class="btn btn-sm btn-secondary"
                            data-dismiss="modal">Cancel</button>
                    </div>
            </div>
            </form>
        </div>
    </div>

    {{-- Delete Modal --}}
    <div class="modal fade" id="delete-tindak-lanjut-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Hapus Data Tindak Lanjut</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Tekan OK untuk menghapus data.</div>
                <div class="modal-footer">
                    <button class="btn btn-sm btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <form id="form-delete" action="{{ route('keamanan-informasi-tindak.destroy', 0) }}" method="POST">
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
