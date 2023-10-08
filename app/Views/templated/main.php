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

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Preloader -->
		<div class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake" src="/assets/templated/dist/img/cc123.png" alt="AdminLTELogo" height="60" width="60">
		</div>

		<!-- Navbar -->
		<?= $this->include('templated/navbar') ?>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<?= $this->include('templated/sidebar') ?>

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