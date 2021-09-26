@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4 col">
        <div class="card-body">
            <form action="{{ route('konten-subdomain.store') }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-lg-6">
                        <div class="mb-3">
                            <label for="tanggal">Tanggal :</label>
                            <input id="tanggal" name="tanggal"
                                class="form-control form-control-sm  @error('tanggal')  border-danger @enderror" type="date"
                                value="{{ $data['now'] }}">
                            @error('tanggal')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="mt-3">
                            <label for="nama_pd">Nama Instansi / Perangkat Daerah :</label>
                            <input id="nama_pd" name="namaPd"
                                class="form-control form-control-sm  @error('namaPd')  border-danger @enderror" type="text"
                                placeholder="Instansi" value="{{ old('namaPd') }}">
                            @error('namaPd')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <div class="row">
                                <div class="col-5">
                                    <label>Survey Kepuasan Masyarakat :</label>
                                    <div class="form-check">
                                        <input id="status-skm" name="statusSkm" class="form-check-input" type="checkbox">
                                        <label class="form-check-label" for="status-skm">
                                            Ada
                                        </label>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <label for="tanggal-update-skm">Tanggal Update :</label>
                                    <input id="tanggal-update-skm" name="tanggalUpdateSkm"
                                        class="form-control form-control-sm" type="date">
                                </div>
                            </div>
                        </div>

                        <div class="my-3">
                            <div class="row">
                                <div class="col-5">
                                    <label>Transparansi Anggaran :</label>
                                    <div class="form-check">
                                        <input id="status-ta" name="statusTa" class="form-check-input" type="checkbox">
                                        <label class="form-check-label" for="status-ta">
                                            Ada
                                        </label>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <label for="tanggal-update-ta">Tanggal Update :</label>
                                    <input id="tanggal-update-ta" name="tanggalUpdateTa"
                                        class="form-control form-control-sm" type="date">
                                </div>
                            </div>
                        </div>

                        <div class="my-3">
                            <div class="row">
                                <div class="col-5">
                                    <label>Foto Kegiatan :</label>
                                    <div class="form-check">
                                        <input id="status-fk" name="statusFk" class="form-check-input" type="checkbox">
                                        <label class="form-check-label" for="status-fk">
                                            Ada
                                        </label>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <label for="tanggal-update-fk">Tanggal Update :</label>
                                    <input id="tanggal-update-fk" name="tanggalUpdateFk"
                                        class="form-control form-control-sm" type="date">
                                </div>
                            </div>
                        </div>

                        <div class="my-3">
                            <div class="row">
                                <div class="col-5">
                                    <label>Berita :</label>
                                    <div class="form-check">
                                        <input id="status-berita" name="statusBerita" class="form-check-input"
                                            type="checkbox">
                                        <label class="form-check-label" for="status-berita">
                                            Ada
                                        </label>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <label for="tanggal-update-berita">Tanggal Update :</label>
                                    <input id="tanggal-update-berita" name="tanggalUpdateBerita"
                                        class="form-control form-control-sm" type="date">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="my-3">
                            <label class="d-block">Struktur Organisasi :</label>
                            <div class="form-check d-inline-block">
                                <input id="status-so" name="statusSo" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="status-so">
                                    Ada
                                </label>
                            </div>
                            <div class="form-check d-inline-block ml-4">
                                <input id="is-uptodate-so" name="isUptodateSo" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="is-uptodate-so">
                                    Up to Date
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label class="d-block">Foto Pimpinan :</label>
                            <div class="form-check d-inline-block">
                                <input id="status-fp" name="statusFp" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="status-fp">
                                    Ada
                                </label>
                            </div>
                            <div class="form-check d-inline-block ml-4">
                                <input id="is-uptodate-fp" name="isUptodateFp" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="is-uptodate-fp">
                                    Up to Date
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label class="d-block">Tupoksi :</label>
                            <div class="form-check d-inline-block">
                                <input id="status-tupoksi" name="statusTupoksi" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="status-tupoksi">
                                    Ada
                                </label>
                            </div>
                            <div class="form-check d-inline-block ml-4">
                                <input id="is-uptodate-tupoksi" name="isUptodateTupoksi" class="form-check-input"
                                    type="checkbox">
                                <label class="form-check-label" for="is-uptodate-tupoksi">
                                    Up to Date
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label class="d-block">Agenda :</label>
                            <div class="form-check d-inline-block">
                                <input id="status-agenda" name="statusAgenda" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="status-agenda">
                                    Ada
                                </label>
                            </div>
                            <div class="form-check d-inline-block ml-4">
                                <input id="is-uptodate-agenda" name="isUptodateAgenda" class="form-check-input"
                                    type="checkbox">
                                <label class="form-check-label" for="is-uptodate-agenda">
                                    Up to Date
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <button type="submit" class="btn btn-sm btn-primary px-2 my-2">Tambah</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
