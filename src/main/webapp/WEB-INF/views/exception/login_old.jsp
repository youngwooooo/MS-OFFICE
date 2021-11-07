<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Jquery -->
<script src="/resources/js/jquery.min.js"></script>
<!-- CKEditor -->
<script src="/resources/ckeditor/ckeditor.js"></script>
<!-- Daum Address API -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<!-- fullcalendar -->
<link href="/resources/fullcalendar/lib/main.min.css" rel="stylesheet">
<script src="/resources/fullcalendar/lib/main.min.js"></script>
<!-- fullcalendar 언어 -->
<script src="/resources/fullcalendar/lib/locales-all.min.js"></script>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="/resources/adminlte/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet" href="/resources/adminlte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="/resources/adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<!-- <link rel="stylesheet" href="/resources/adminlte/plugins/jqvmap/jqvmap.min.css"> -->
<!-- Theme style -->
<link rel="stylesheet" href="/resources/adminlte/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet" href="/resources/adminlte/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet" href="/resources/adminlte/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet" href="/resources/adminlte/plugins/summernote/summernote-bs4.min.css">    
<!-- jQuery -->
<!-- <script src="/resources/adminlte/plugins/jquery/jquery.min.js"></script> -->
<!-- jQuery UI 1.11.4 -->
<script src="/resources/adminlte/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="/resources/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="/resources/adminlte/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="/resources/adminlte/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<!-- <script src="/resources/adminlte/plugins/jqvmap/jquery.vmap.min.js"></script> -->
<!-- <script src="/resources/adminlte/plugins/jqvmap/maps/jquery.vmap.usa.js"></script> -->
<!-- jQuery Knob Chart -->
<script src="/resources/adminlte/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="/resources/adminlte/plugins/moment/moment.min.js"></script>
<script src="/resources/adminlte/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="/resources/adminlte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="/resources/adminlte/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="/resources/adminlte/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/adminlte/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/adminlte/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="/resources/adminlte/dist/js/pages/dashboard.js"></script> -->
<style>
	body {
		
	}
	.mid {
		margin-top: 300px;
		/* background-color: #EEF1F6; */
		height: 250px;
		padding: 0px 10% 0px 10%;
	}
	.input {
		width: 100%;
		line-height: 35px;
	}
	.inputDiv {
		width: 100%;
		margin-bottom: 25px;
	}
	.loginBtn {
		width: 100%;
		height: 35px;
	}
</style>
<div id="content">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4 mid">
			<form action="/login" method="post">
				<div class="inputDiv">
					<input type="text" class="input" name="empno" placeholder="사번">
				</div>
				<div class="inputDiv">
					<input type="password" class="input" name="password" placeholder="비밀번호">
				</div>
				<div class="inputDiv">
					<button type="button" class="loginBtn"></button>
				</div>
			</form>
		</div>
		<div class="col-sm-4"></div>
	</div>
</div>