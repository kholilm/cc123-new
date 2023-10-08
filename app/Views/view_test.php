<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CC BALIKPAPAN</title>

    <link href="/assets/templated/dist/img/cc123.png" rel="shorcut icon">
    <!-- Google Font: Source Sans Pro -->
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"> -->
    <link rel="stylesheet" href="/assets/templated/dist/css/fontgoogle.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/assets/templated/plugins/fontawesome-free/css/all.min.css">
    <!-- <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->
    <!-- Ionicons -->
    <link rel="stylesheet" href="/assets/templated/dist/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="/assets/templated/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/assets/templated/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/assets/templated/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="/assets/templated/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">



    <?= $this->rendersection('css') ?>

    <!-- jQuery -->
    <script src="/assets/templated/plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="/assets/templated/plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 4 -->
    <script src="/assets/templated/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="/assets/templated/plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="/assets/templated/plugins/sparklines/sparkline.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="/assets/templated/plugins/jquery-knob/jquery.knob.min.js"></script>

    <script src="/assets/templated/plugins/moment/moment.min.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="/assets/templated/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="/assets/templated/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/assets/templated/dist/js/adminlte.js"></script>
    <script src="/assets/templated/dist/js/pages/dashboard.js"></script>

    <?= $this->rendersection('js') ?>
</head>

<body class=" layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-dark navbar-light">
            <!-- Left navbar links -->

            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/" role="button"><i class="fas fa-home"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="/view-tab" class="nav-link">Tab</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="#" class="nav-link" data-toggle="modal" data-target="#modal-link">Link</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <?php if (logged_in()) : ?>
                        <a href="/logout" class="btn btn-outline-danger" role="button" aria-disabled="true">Logout</a>
                        <!-- <a href="#" onclick="logout()" class="nav-link btn btn-outline-danger">Logout</a> -->
                    <?php endif  ?>
                </li>
            </ul>

            <!-- Right navbar links -->
            <!-- Menu Input -->
            <ul class="navbar-nav ml-auto">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="/menu-input" class="nav-link">Input Data</a>
                        <!-- <a href="#" onclick="inputdata()" class="nav-link">Input Data</a> -->
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="/view-test" class="nav-link">Test</a>
                        <!-- <a href="#" onclick="inputdata()" class="nav-link">Input Data</a> -->
                    </li>
                    <!-- fulscrenn bos -->
                    <li class="nav-item">
                        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                            <i class="fas fa-expand-arrows-alt"></i>
                        </a>
                    </li>
                </ul>
        </nav>
        <!-- /.navbar -

        <!-- Content Wrapper. Contains page content -->
        <?= $this->rendersection('content') ?>
        <!-- /.content-wrapper -->

        <footer class="main-footer">
            <strong>Copyright &copy; 2021 OMTS BPP</strong>
            All rights reserved.
        </footer>
    </div>

</body>

</html>