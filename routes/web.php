<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\AutoCompleteController;
use App\Http\Controllers\Layanan\InformasiController;
use App\Http\Controllers\Layanan\AnalisaMediaController;
use App\Http\Controllers\Layanan\PengaduanPROController;
use App\Http\Controllers\Layanan\PinjamRuanganController;
use App\Http\Controllers\Layanan\KontenSubdomainController;
use App\Http\Controllers\Layanan\KeamananInformasiController;
use App\Http\Controllers\Layanan\PengaduanAnggaranController;
use App\Http\Controllers\Layanan\TindakLanjutController;
use App\Http\Controllers\Layanan\WebTidakBisaDiaksesController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Dashboard Route
Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

// Auto Complete Nama Instansi
Route::get('/get-instansi', [AutoCompleteController::class, 'getInstansi'])->name('get.instansi');
Route::get('/get-subdomain', [AutoCompleteController::class, 'getSubdomain'])->name('get.subdomain');

// Auth Routes
Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'store'])->name('login');
Route::post('/logout', [LogoutController::class, 'index'])->name('logout');

// User Custom Routes
Route::prefix('user/')->group(function () {
    Route::post('/reset/{id}', [UserController::class, 'reset'])->name('user.reset');
    Route::post('/search', [UserController::class, 'search'])->name('user.search');
    Route::get('/account', [UserController::class, 'account'])->name('user.account');
});

// Report Data Routes - Untuk request AJAX dari javascript
Route::post('/pro-report', [PengaduanPROController::class, 'report'])->name('pro.report');
Route::post('/anggaran-report', [PengaduanAnggaranController::class, 'report'])->name('anggaran.report');
Route::post('/analisa-report', [AnalisaMediaController::class, 'report'])->name('analisa.report');
Route::post('/keamanan-report', [KeamananInformasiController::class, 'report'])->name('keamanan.report');
Route::post('/subdomain-report', [KontenSubdomainController::class, 'report'])->name('subdomain.report');
Route::post('/web-tidak-bisa-diakses-report', [WebTidakBisaDiaksesController::class, 'report'])->name('web-tidak-bisa-diakses.report');
Route::post('/pinjam-ruangan-report', [PinjamRuanganController::class, 'report'])->name('pinjam-ruangan.report');
Route::post('/summary-report', [KeamananInformasiController::class, 'summaryReport'])->name('summary.report');
Route::post('/tindak-lanjut-report', [KeamananInformasiController::class, 'tindakLanjutReport'])->name('tindak-lanjut.report');

Route::post('/pinjam-ruangan-get', [PinjamRuanganController::class, 'getData'])->name('pinjam-ruangan.get');
Route::get('/keamanan-informasi-get', [KeamananInformasiController::class, 'getData'])->name('keamanan-informasi.get');

// Export Excell - Konten Subdomain
Route::post('/konten-subdomain-excell', [KontenSubdomainController::class, 'excell'])->name('konten-subdomain-excell');

// Resources Routes
Route::resources([
    'user' => UserController::class,
    'pengaduan-pro' => PengaduanPROController::class,
    'pengaduan-anggaran' => PengaduanAnggaranController::class,
    'informasi' => InformasiController::class,
    'analisa-media' => AnalisaMediaController::class,
    'keamanan-informasi' => KeamananInformasiController::class,
    'konten-subdomain' => KontenSubdomainController::class,
    'tindak-lanjut' => TindakLanjutController::class,
    'pinjam-ruangan' => PinjamRuanganController::class
]);
