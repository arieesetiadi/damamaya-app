@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2">|</h4>
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
                <table class="table container-fluid">
                    <tr>
                        <th>No.</th>
                        <th>ID</th>
                        <th>Link Website</th>
                        <th>Tanggal Penindakan</th>
                        <th>Jam Penindakan</th>
                        <th>View</th>
                        <th>Petugas</th>
                        <th>Response Time</th>
                        <th>Aksi</th>
                    </tr>

                    @foreach ($data['tindak_lanjut'] as $tindak_lanjut)
                        <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $tindak_lanjut->id }}</td>
                            <td>{{ $tindak_lanjut->link_website }}</td>
                            <td>{{ $tindak_lanjut->tanggal }}</td>
                            <td>{{ $tindak_lanjut->jam }}</td>
                            <td>
                                <a href="#" class="detail-modal-link" data-toggle="modal" data-target=".detail-modal"
                                    data-capture="{{ $tindak_lanjut->capture }}"
                                    data-keterangan="{{ $tindak_lanjut->keterangan }}">Mirror</a>
                            </td>
                            <td>{{ $tindak_lanjut->name }}</td>
                            <td>{{ $data['carbon']->diffInDays($tindak_lanjut->tanggal_laporan) }} Hari</td>
                            <td>
                                <button class="btn btn-sm btn-primary" id="edit-tindak-lanjut" data-toggle="modal"
                                    data-id="{{ $tindak_lanjut->id }}"
                                    data-target="#edit-tindak-lanjut-modal">Edit</button>

                                <button class=" btn btn-sm btn-danger" id="delete-tindak-lanjut" data-toggle="modal"
                                    data-id="{{ $tindak_lanjut->id }}"
                                    data-target="#delete-tindak-lanjut-modal">Hapus</button>
                            </td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>



    <!-- Mirror Modal -->
    <div class="modal fade detail-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Capture Detail</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="detail-capture-wrapper" class="mx-2">
                        <img class="w-100 rounded shadow" id="detail-capture" data-path="{{ asset('img/capture\\') }}"
                            src="" alt="Capture Website">
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
                <form id="form-edit-tindak-lanjut" action="" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="_method" value="PUT">

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
                                <div class="w-100" id="capture-preview-wrapper" data-path="{{ asset('img/capture\\') }}">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" modal-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button id="cancel-tindak-lanjut" type="button" class="btn btn-secondary"
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
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <form id="form-delete" action="{{ route('tindak-lanjut.destroy', 0) }}" method="POST">
                        @csrf
                        <input type="hidden" name="_method" value="DELETE">
                        <button type="submit" class="btn btn-primary">OK</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
