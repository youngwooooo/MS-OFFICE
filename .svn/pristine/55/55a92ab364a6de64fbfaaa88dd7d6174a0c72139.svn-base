<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html style="overflow-x: hidden;">
<head>
<style type="text/css">
	.sidebar-mini {padding: 0px !important;}
	.modal-backdrop.show {background-color: transparent;}
	.modal-open {overflow: auto !important; padding: 0px !important;}
</style>
<script type="text/javascript">
if("${empVo}" == ""){
	location.href = "/login";
}else{
	console.log("로그인 됨");
}
console.log("${aop}");
</script>
<title><tiles:insertAttribute name="title" /></title>
	<!-- Jquery -->
	<script src="/resources/js/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="/resources/adminlte/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="/resources/adminlte/plugins/moment/moment.min.js"></script>
	<!-- jstree -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
	<!-- CKEditor -->
	<script src="/resources/ckeditor/ckeditor.js"></script>
	<!-- fullcalendar CDN -->
	<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.css' rel='stylesheet' />
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.js'></script>
	<!-- fullcalendar 언어 CDN -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/locales-all.min.js'></script>
	<!-- Daum Address API -->
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/resources/adminlte/plugins/fontawesome-free/css/all.min.css">
	<!-- remixicon -->
	<link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet">
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

</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="aside" />
		<div class="content-wrapper" style="background-color: white;">
		<div class="left-menu">
			<tiles:insertAttribute name="aside2" />
			<tiles:insertAttribute name="body" />
		</div>
		</div>
	</div>
	
	<!-- jQuery -->
	<!-- <script src="/resources/adminlte/plugins/jquery/jquery.min.js"></script> -->
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
	  /* $.widget.bridge('uibutton', $.ui.button) */
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
</body>
</html>