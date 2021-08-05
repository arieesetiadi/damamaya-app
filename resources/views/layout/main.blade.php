<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>{{ isset($data['title']) ? $data['title'] : 'Title' }} - Damamaya Cyber Monitor</title>

    <!-- Custom fonts for this template-->
    <link href="{{ asset('vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{ asset('css/sb-admin-2.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">

    {{-- Website Icon --}}
    <link rel="shortcut icon" href="{{ asset('tech.ico') }}" type="image/x-icon">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('dashboard') }}">
                <div class="sidebar-brand-icon">
                    {{-- <img width="50px" src="{{ asset('img/logo/kominfo.png') }}" alt="Logo Kominfo"> --}}
                    <i class="fas fa-globe-asia"></i>
                </div>
                <div class="sidebar-brand-text mx-3">DAMAMAYA</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="{{ route('dashboard') }}">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Layanan
            </div>

            <!-- Nav Item - Layanan Pengaduan (PRO Denpasar) -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseZero"
                    aria-expanded="true" aria-controls="collapseZero">
                    <i class="fas fa-list"></i>
                    <span>Pengaduan PRO</span>
                </a>
                <div id="collapseZero" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('pengaduan-pro.index') }}">Report</a>
                        @if (Auth::user()->role_id == 1 || Auth::user()->role_id == 2)
                            <a class="collapse-item" href="{{ route('pengaduan-pro.create') }}">Input</a>
                        @endif
                    </div>
                </div>
            </li>

            <!-- Nav Item - Layanan Pengaduan (Anggaran) -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">
                    <i class="fas fa-list"></i>
                    <span>Pengaduan Anggaran</span>
                </a>
                <div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('pengaduan-anggaran.index') }}">Report</a>
                        @if (Auth::user()->role_id == 1 || Auth::user()->role_id == 2)
                            <a class="collapse-item" href="{{ route('pengaduan-anggaran.create') }}">Input</a>
                        @endif
                    </div>
                </div>
            </li>

            <!-- Nav Item - Analisa Media -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree"
                    aria-expanded="true" aria-controls="collapseThree">
                    <i class="fas fa-list-alt"></i>
                    <span>Analisa Media</span>
                </a>
                <div id="collapseThree" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('analisa-media.index') }}">Report</a>
                        @if (Auth::user()->role_id == 1 || Auth::user()->role_id == 2)
                            <a class="collapse-item" href="{{ route('analisa-media.create') }}">Input</a>
                        @endif
                    </div>
                </div>
            </li>

            <!-- Nav Item - Keamanan Informasi -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour"
                    aria-expanded="true" aria-controls="collapseFour">
                    <i class="fas fa-th-list"></i>
                    <span>Keamanan Informasi</span>
                </a>
                <div id="collapseFour" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('keamanan-informasi.index') }}">Report</a>
                        @if (Auth::user()->role_id == 1 || Auth::user()->role_id == 2)
                            <a class="collapse-item" href="{{ route('keamanan-informasi.create') }}">Input</a>
                        @endif
                    </div>
                </div>
            </li>

            <!-- Nav Item - Layanan Informasi -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-list-ul"></i>
                    <span>Layanan Informasi</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('informasi.index') }}">Report</a>
                        @if (Auth::user()->role_id == 1 || Auth::user()->role_id == 2)
                            <a class="collapse-item" href="{{ route('informasi.create') }}">Input</a>
                        @endif
                    </div>
                </div>
            </li>

            <!-- Nav Item - Keamanan Informasi -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive"
                    aria-expanded="true" aria-controls="collapseFive">
                    <i class="far fa-list-alt"></i>
                    <span>Konten Subdomain</span>
                </a>
                <div id="collapseFive" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('konten-subdomain.index') }}">Report</a>
                        @if (Auth::user()->role_id == 1 || Auth::user()->role_id == 2)
                            <a class="collapse-item" href="{{ route('konten-subdomain.create') }}">Input</a>
                        @endif
                    </div>
                </div>
            </li>

            @if (Auth::user()->role_id == 1)
                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    User
                </div>

                <!-- Nav Item - Keamanan Informasi -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="{{ route('user.index') }}" aria-expanded="true"
                        aria-controls="collapseFive">
                        <i class="fas fa-user-tie"></i>
                        <span>Kelola User</span>
                    </a>
                </li>
            @endif
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span
                                    class="mr-2 d-none d-lg-inline text-gray-600 small">{{ Auth::user()->name }}</span>

                                @if (Auth::user()->gender == 'l')
                                    <img class="img-profile rounded-circle" src="{{ asset('img/avatar_male.svg') }}">
                                @else
                                    <img class="img-profile rounded-circle"
                                        src="{{ asset('img/avatar_female.svg') }}">
                                @endif

                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="{{ route('user.account') }}">
                                    <i class="fas fa-user-cog fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Akun
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    @yield('content')

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Damamaya Cyber Monitor 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Sign Out</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Pilih logout untuk keluar dari sistem.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <form action="{{ route('logout') }}" method="POST">
                        @csrf
                        <button type="submit" class="btn btn-primary">Logout</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


    {{-- Jquery Plugins --}}
    <script src="{{ asset('js/jquery-3.6.0.min.js') }}"></script>

    {{-- Autocomplete JS --}}
    <script src="{{ asset('js/typeahead.min.js') }}"></script>

    {{-- Basic Chart JS --}}
    <script src="{{ asset('vendor/chart.js/Chart.js') }}"></script>

    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{ asset('vendor/jquery-easing/jquery.easing.min.js') }}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{ asset('js/sb-admin-2.min.js') }}"></script>


    {{-- Custom Charts --}}
    <script src="{{ asset('js/chart/pengaduan-pro-chart.js') }}"></script>
    <script src="{{ asset('js/chart/pengaduan-anggaran-chart.js') }}"></script>
    <script src="{{ asset('js/chart/layanan-informasi-chart.js') }}"></script>
    <script src="{{ asset('js/chart/analisa-media-chart.js') }}"></script>
    <script src="{{ asset('js/chart/keamanan-informasi-chart.js') }}"></script>
    <script src="{{ asset('js/chart/dashboard-chart.js') }}"></script>

    {{-- Form Autocomplete Script --}}
    <script>
        var route = "{{ route('get.instansi') }}";

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $("#nama_pd").typeahead({
            source: function(query, process) {
                $.ajax({
                    url: route,
                    type: 'POST',
                    data: {
                        key: query
                    },
                    async: false,
                    success: function(data) {
                        process(data)
                    }
                });
            }
        });

        // $("#instansi").typeahead({
        //     source: function(query, process) {
        //         return $.get(
        //             route, {
        //                 query: query,
        //             },
        //             function(data) {
        //                 return process(data);
        //             }
        //         );
        //     }
        // });
    </script>

</body>

</html>
