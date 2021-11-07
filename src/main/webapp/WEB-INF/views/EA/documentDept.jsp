<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
ul {
	list-style: none;
}
.content_top {
	padding: 20px 20px 30px 20px;
}


/* common */
.emphasize {
	display: inline-block;
	position: relative;
	z-index: 0;
	color: #333;
}

.emphasize:after {
	display: block;
	content: "";
	width: 100%;
	position: absolute;
	bottom: 2px;
	left: -2px;
	border-bottom: 6px solid #fee500;
	z-index: -1;
	border-radius: 2px
}
/* alarm */
.layer_toast .alert_wrap {
	position: fixed;
	top: 8px;
	left: 0;
	width: 100%;
	text-align: center;
	z-index: 999;
}

.layer_toast .alert_wrap .content {
	display: : inline-block;
	width: auto;
	background-color: #333;
	padding: 12px 16px;
	border-radius: 4px;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2)
}

.layer_toast .alert_wrap strong {
	margin-right: 10px
}

.layer_toast .alert_wrap span.txt, div.alert_wrap span.txt_caution {
	display: inline-block;
	color: #fff
}

.layer_toast .alert_wrap ins {
	display: none;
	margin-top: 12px;
	margin-right: 4px
}

.alert_wrap span.btn_del_light {
	position: absolute;
	right: 10px;
	top: 10px
}
/* form */
.form {
	display: table;
	width: 100%;
	table-layout: fixed
}

.form .form_tr {
	display: table-row
}

.form .form_tr .form_th {
	display: table-cell;
	vertical-align: top;
	width: 80px
}

.form .form_tr .form_th .title {
	display: inline-block;
	margin: 2px 0 0 0
}

.form .form_tr .form_td {
	display: table-cell
}

.lnb input[type='checkbox'], .tool_bar input[type='checkbox'],
	.type_normal input[type='checkbox'] {
	border: solid 2px #ccc;
	height: 16px;
	width: 16px;
	border-radius: 2px;
	-webkit-appearance: none;
	overflow: hidden;
	margin: 0 4px 0 0
}

.tool_bar .critical>input[type='checkbox'] {
	float: left;
	margin: 7px 8px 0 0;
	vertical-align: middle
}

.lnb input[type='checkbox']:checked, .tool_bar input[type='checkbox']:checked,
	.type_normal input[type='checkbox']:checked {
	border: solid 2px #333;
	background: #333;
	height: 16px;
	width: 16px;
	border-radius: 2px;
	-webkit-appearance: none;
	font-size: 19px
}

.lnb input[type='checkbox']:checked:after, .tool_bar input[type='checkbox']:checked:after,
	.type_normal input[type='checkbox']:checked:after {
	content: "\2228";
	display: block;
	position: relative;
	top: -10px;
	left: -1px;
	height: 15px;
	width: 15px;
	font-weight: bold;
	color: #fff;
	font-family: initial
}

.type_normal input[type='radio'] {
	border: solid 2px #ccc;
	height: 16px;
	width: 16px;
	border-radius: 16px;
	-webkit-appearance: none;
	margin: 0 8px 0 0
}

.type_normal input[type='radio']:checked {
	border: solid 2px #000;
	height: 16px;
	width: 16px;
	border-radius: 16px;
	-webkit-appearance: none;
	font-size: 17px
}

.type_normal input[type='radio']:checked:after {
	content: "";
	display: block;
	position: relative;
	top: 2px;
	left: 2px;
	height: 8px;
	width: 8px;
	border-radius: 14px;
	background: #000
}

.type_normal input.disabled[type='checkbox'] {
	border: solid 2px #ccc;
	height: 16px;
	width: 16px;
	border-radius: 2px;
	-webkit-appearance: none;
	overflow: hidden;
	margin: 0 8px 0 0;
	background: #eee
}

.type_normal input.disabled[type='checkbox']:checked {
	border: solid 2px #bbb;
	height: 16px;
	width: 16px;
	border-radius: 2px;
	-webkit-appearance: none;
	font-size: 19px
}

.type_normal input.disabled[type='checkbox']:checked:after {
	content: "\2228";
	display: block;
	position: relative;
	top: -11px;
	left: -1px;
	height: 15px;
	width: 15px;
	font-weight: bold;
	color: #bbb
}

.type_normal input.disabled[type='radio'] {
	border: solid 2px #ccc;
	height: 16px;
	width: 16px;
	border-radius: 16px;
	-webkit-appearance: none;
	margin: 0 8px 0 0
}

.type_normal input.disabled[type='radio']:checked {
	border: solid 2px #bbb;
	height: 16px;
	width: 16px;
	border-radius: 16px;
	-webkit-appearance: none;
	font-size: 17px
}

.type_normal inpu.disabledt[type='radio']:checked:after {
	content: "";
	display: block;
	position: relative;
	top: 2px;
	left: 2px;
	height: 8px;
	width: 8px;
	border-radius: 14px;
	background: #bbb
}

/* .content_mail input[type='checkbox']:checked {font-size: 12px} */
/* .content_mail input[type='checkbox']:checked:after {top: -4px; left: 0} */
.builder_side_box input[type='checkbox'] {
	border: solid 2px #222;
	background: #222;
	height: 16px;
	width: 16px;
	border-radius: 2px;
	-webkit-appearance: none;
	overflow: hidden;
	margin: 0 8px 0 0
}

.builder_side_box input[type='checkbox']:checked {
	border: solid 2px #000;
	background: #000;
	height: 16px;
	width: 16px;
	border-radius: 2px;
	-webkit-appearance: none;
	font-size: 19px
}

.builder_side_box input[type='checkbox']:checked:after {
	content: "\2228";
	display: block;
	position: relative;
	top: -11px;
	left: -1px;
	height: 15px;
	width: 15px;
	font-weight: bold;
	color: #fff
}

.builder_side_box input[type='radio'] {
	border: solid 2px #ccc;
	height: 16px;
	width: 16px;
	border-radius: 16px;
	-webkit-appearance: none;
	margin: 0 8px 0 0
}

.builder_side_box input[type='radio']:checked {
	border: solid 2px #000;
	height: 16px;
	width: 16px;
	border-radius: 16px;
	-webkit-appearance: none;
	font-size: 17px
}

.builder_side_box input[type='radio']:checked:after {
	content: "";
	display: block;
	position: relative;
	top: 2px;
	left: 2px;
	height: 8px;
	width: 8px;
	border-radius: 14px;
	background: #000
}
/* photo */
.photo {
	display: inline-block
}

.photo.small img {
	display: inline-block;
	width: 32px;
	height: 32px;
	border-radius: 32px
}
/* icon */
.ic24 {
	display: inline-block;
	background: url(../images/ic24.png) no-repeat 0 0;
	width: 24px !important;
	height: 24px !important;
	vertical-align: middle
}

.ic24.more_v {
	background-position: 0 0
}

.ic24.lock {
	background-position: -50px 0
}

.ic24.people {
	background-position: 0 -50px
}

.ic24.store {
	background-position: -50px -50px
}

.ic24.search {
	background-position: 0 -100px
}

.ic24.sign {
	background-position: -100px -100px
}

.ic24.sign_error {
	background-position: -150px -100px
}

.ic24.ic_tooltip {
	background-position: -50px -100px
}

.ic24.ic_more {
	background-position: -100px -50px
}

.ic24.arrow_t {
	background-position: 0 -150px
}

.ic24.arrow_d {
	background-position: -50px -150px
}

.ic24.close {
	background-position: -100px -150px
}

.ic16 {
	display: inline-block;
	background: url(../images/ic16.png) no-repeat 0 0;
	width: 16px;
	height: 16px;
	vertical-align: middle
}

.ic16.allDel {
	background-position: 0 0
}

.wrap_ic_gnb_adv {
	display: inline-block;
	vertical-align: top;
	padding: 10px;
	transition: 0.2s;
	line-height: 0
}

.ic_gnb_adv {
	display: inline-block;
	background: url(../images/ic_gnb_adv.png?v2.6.0.0) no-repeat 0 0;
	width: 20px;
	height: 20px
}

.ic_gnb_adv.menu {
	background-position: -50px 0
}

.ic_gnb_adv.ic_home_home {
	background-position: 0 -50px
}

.ic_gnb_adv.ic_home_mail {
	background-position: 0 -100px
}

.ic_gnb_adv.ic_home_contact {
	background-position: 0 -150px
}

.ic_gnb_adv.ic_home_webfolder {
	background-position: 0 -200px
}

.ic_gnb_adv.ic_home_board {
	background-position: 0 -350px
}

.ic_gnb_adv.ic_home_calendar {
	background-position: 0 -250px
}

.ic_gnb_adv.ic_home_community {
	background-position: 0 -400px
}

.ic_gnb_adv.ic_home_asset {
	background-position: 0 -450px
}

.ic_gnb_adv.ic_home_docs {
	background-position: 0 -300px
}

.ic_gnb_adv.ic_home_sms {
	background-position: 0 -900px
}

.ic_gnb_adv.ic_home_survey {
	background-position: 0 -500px
}

.ic_gnb_adv.ic_home_report {
	background-position: 0 -550px
}

.ic_gnb_adv.ic_home_works {
	background-position: 0 -600px
}

.ic_gnb_adv.ic_home_todo {
	background-position: 0 -650px
}

.ic_gnb_adv.ic_home_task {
	background-position: 0 -700px
}

.ic_gnb_adv.ic_home_approval {
	background-position: 0 -750px
}

.ic_gnb_adv.ic_home_docfolder {
	background-position: 0 -800px
}

.ic_gnb_adv.ic_home_ehr {
	background-position: 0 -850px
}

.ic_gnb_adv.oganization {
	background-position: -50px -100px
}

.ic_gnb_adv.ic_home_store {
	background-position: -50px -150px
}

.ic_toolbar {
	display: inline-block;
	background: url(../images/ic_toolbar.png?v3.1) no-repeat 0 0;
	width: 20px;
	height: 20px;
	vertical-align: middle
}

.ic_toolbar.mail {
	background-position: -50px 0
}

.ic_toolbar.group {
	background-position: -100px 0
}

.ic_toolbar.group_setting {
	background-position: -350px -50px
}

.ic_toolbar.cancel {
	background-position: 0 -150px
}

.ic_toolbar.opposition {
	background-position: 0 -150px
}

.ic_toolbar.end {
	background-position: 0 -150px
}

.ic_toolbar.close {
	background-position: 0 -150px
}

.ic_toolbar.group_cancel {
	background-position: -50px -150px
}

.ic_toolbar.member_cancel {
	background-position: -50px -150px
}

.ic_toolbar.del {
	background-position: -150px 0
}

.ic_toolbar.copy {
	background-position: -200px 0
}

.ic_toolbar.fast {
	background-position: -250px 0
}

.ic_toolbar.plus {
	background-position: -250px 0
}

.ic_toolbar.more {
	background-position: -300px 0
}

.ic_toolbar.search {
	background-position: 0 -50px
}

.ic_toolbar.tag {
	background-position: -50px -50px
}

.ic_toolbar.spam {
	background-position: -100px -50px
}

.ic_toolbar.stop {
	background-position: -100px -50px
}

.ic_toolbar.reply {
	background-position: -150px -50px
}

.ic_toolbar.forwading {
	background-position: -200px -50px
}

.ic_toolbar.return {
	background-position: -200px -50px
}

.ic_toolbar.read {
	background-position: -250px -50px
}

.ic_toolbar.move {
	background-position: -300px -50px
}

.ic_toolbar.sort {
	background-position: -50px -100px
}

.ic_toolbar.sort_up {
	background-position: -250px -100px
}

.ic_toolbar.sort_down {
	background-position: -300px -100px
}

.ic_toolbar.up {
	background-position: -250px -100px
}

.ic_toolbar.update {
	background-position: -250px -100px
}

.ic_toolbar.down {
	background-position: -300px -100px
}

.ic_toolbar.download {
	background-position: -150px -150px
}

.ic_toolbar.upload {
	background-position: -100px -150px
}

.ic_toolbar.send {
	background-position: 0px -200px
}

.ic_toolbar.save {
	background-position: -50px -200px
}

.ic_toolbar.preview {
	background-position: -100px -200px
}

.ic_toolbar.refresh {
	background-position: -150px -200px
}

.ic_toolbar.list {
	background-position: -300px -150px
}

.ic_toolbar.board {
	background-position: -200px -200px
}

.ic_toolbar.doc {
	background-position: -200px -200px
}

.ic_toolbar.doc_official {
	background-position: -200px -200px
}

.ic_toolbar.source {
	background-position: -200px -200px
}

.ic_toolbar.write {
	background-position: -250px -200px
}

.ic_toolbar.modify {
	background-position: -300px -200px
}

.ic_toolbar.change {
	background-position: 0px -250px
}

.ic_toolbar.member {
	background-position: -50px -250px
}

.ic_toolbar.popup {
	background-position: -100px -250px
}

.ic_toolbar.info {
	background-position: -150px -250px
}

.ic_toolbar.check {
	background-position: -150px -300px
}

.ic_toolbar.check_all {
	background-position: -200px -250px
}

.ic_toolbar.check_late {
	background-position: -150px -350px
}

.ic_toolbar.approval {
	background-position: -300px -200px
}

.ic_toolbar.drive {
	background-position: -250px -250px
}

.ic_toolbar.folder {
	background-position: -300px -250px
}

.ic_toolbar.folderadd {
	background-position: -50px -300px
}

.ic_toolbar.filter {
	background-position: 0px -300px
}

.ic_toolbar.open {
	background-position: -100px -300px
}

.ic_toolbar.checking {
	background-position: -150px -300px
}

.ic_toolbar.done {
	background-position: -150px -300px
}

.ic_toolbar.agree {
	background-position: -150px -300px
}

.ic_toolbar.dotline {
	background-position: -200px -300px
}

.ic_toolbar.delay {
	background-position: -250px -300px
}

.ic_toolbar.end {
	background-position: -250px -300px
}

.ic_toolbar.noti {
	background-position: -300px -300px
}

.ic_toolbar.return_again {
	background-position: 0px -350px
}

.ic_toolbar.out {
	background-position: 0px -350px
}

.ic_toolbar.member_check {
	background-position: -50px -350px
}

.ic_toolbar.receive {
	background-position: -100px -350px
}

.ic_toolbar.play {
	background-position: -250px -350px
}

.ic_toolbar.setting {
	background-position: -300px -350px
}

.ic_toolbar.adjust {
	background-position: -350px 0
}

.ic_side {
	display: inline-block;
	background: url(../images/ic_side.png?v2.6.0.0) repeat-x;
	vertical-align: middle
}

.ic_side.ic_body_folder {
	background-position: 0 -750px;
	width: 20px;
	height: 20px
}

.ic_side_setting {
	background-position: -100px -250px;
	width: 14px;
	height: 15px
}

.ic_side.plus {
	background-position: -450px -150px;
	width: 14px;
	height: 14px
}

.ic_side.ic_hide_up {
	background-position: -100px -200px;
	width: 12px;
	height: 12px
}

.ic_app_bbs {
	width: 41px;
	height: 37px;
	background-position: 0 0
}

.ic_app_calendar {
	width: 41px;
	height: 37px;
	background-position: 0 -50px
}

.ic_app_address {
	width: 41px;
	height: 37px;
	background-position: 0 -100px
}

.ic_app_community {
	width: 45px !important;
	height: 37px;
	height:;
	background-position: 0 -150px
}

.ic_app_mail {
	width: 41px;
	height: 37px;
	background-position: 0 -200px
}

.ic_app_file {
	width: 41px;
	height: 37px;
	background-position: 0 -250px
}

.ic_app_join {
	width: 41px;
	height: 37px;
	background-position: 0 -300px
}

.ic_app_report {
	width: 41px;
	height: 37px;
	background-position: 0 -350px
}

.ic_app_task {
	width: 41px;
	height: 37px;
	background-position: 0 -400px
}

.ic_app_appr {
	width: 41px;
	height: 37px;
	background-position: 0 -450px
}

.ic_app_survey {
	width: 41px;
	height: 37px;
	background-position: 0 -500px
}

.ic_app_works {
	width: 41px;
	height: 37px;
	background-position: 0 -550px
}

.ic_side.ic_list_del {
	background-position: -100px -400px;
	width: 14px;
	height: 14px
}

.ic_app_sms {
	width: 41px;
	height: 37px;
	background-position: 0 -600px
}

.ic_app_docs {
	width: 41px;
	height: 37px;
	background-position: 0 -400px
}

.ic_app_setting {
	width: 16px;
	height: 16px;
	background-position: 0px 0px
}

.ic_user {
	width: 16px;
	height: 16px;
	background-position: -50px -100px
}

.ic_folder {
	width: 16px;
	height: 16px;
	background-position: -100px -50px
}

.ic_folder:hover {
	background-position: -150px -50px
}

.ic_folder_sys {
	width: 16px;
	height: 16px;
	background-position: -100px -0px
}

.ic_folder_sys:hover {
	background-position: -150px 0px
}

.ic_folder_tag {
	width: 16px;
	height: 16px;
	background-position: -100px -100px
}

.ic_folder_tag:hover {
	background-position: -150px -100px
}

.ic_show_down {
	width: 19px;
	height: 19px;
	background-position: -100px -148px
}

.ic_show_down:hover {
	background-position: -200px -148px
}

.ic_list_del:hover {
	background-position: -150px -400px
}

.ic_list_edit {
	width: 16px;
	height: 16px;
	background-position: -100px -450px
}

.ic_list_edit:hover {
	background-position: -150px -450px
}

.ic_more_option {
	width: 16px;
	height: 16px;
	background-position: -100px -500px
}

.ic_more_option:hover {
	background-position: -150px -500px
}

.ic_done {
	width: 19px;
	height: 19px;
	background-position: -100px -550px;
	cursor: pointer
}

.ic_done:hover {
	background-position: -150px -550px
}

.ic_edit {
	width: 16px;
	height: 16px;
	background-position: -100px -450px;
	cursor: pointer
}

.ic_edit:hover {
	background-position: -150px -450px
}

.ic_basket_bx {
	width: 16px;
	height: 16px;
	background-position: -100px -600px;
	cursor: pointer
}

.ic_basket_bx:hover {
	background-position: -150px -600px
}

.ic_preview {
	width: 19px;
	height: 19px;
	background-position: -200px -550px;
	cursor: pointer
}

.ic_preview:hover {
	background-position: -200px -600px
}

.ic_cancel {
	width: 19px;
	height: 19px;
	background-position: -100px -650px;
	cursor: pointer
}

.ic_cancel:hover {
	background-position: -150px -650px
}

.ic_list_reorder {
	width: 19px;
	height: 19px;
	background-position: -100px -450px
}

.ic_list_reorder:hover {
	background-position: -100px -450px
}

.ic_list_trash {
	width: 16px;
	height: 18px;
	background-position: -100px -750px
}

.ic_list_trash:hover {
	background-position: -150px -750px
}

.ic_private {
	width: 13px;
	height: 19px;
	background-position: -103px -1851px
}

.ic_copy {
	width: 19px;
	height: 19px;
	background-position: -100px -2000px;
	cursor: pointer
}

.ic_copy:hover {
	background-position: -150px -2000px
}

.ic_setting {
	display: inline-block;
	width: 19px;
	height: 19px;
	background: url(../images/ic_side.png?v2.6.0.0) no-repeat -100px -250px;
	cursor: pointer;
}

.ic_comment {
	width: 18px;
	height: 16px;
	background-position: -180px -100px!impo> 
rtant;
}

.wrap_member .ic_member {
	width: 22px;
	height: 17px;
	background-position: -140px -100px !important;
}

.wrap_reply .ic_reply2 {
	width: 18px;
	height: 16px;
	background-position: -180px -100px !important;
}

/* button */
.btn_more {
	position: relative;
}

.btn_more .array_option {
	position: absolute;
	top: 0;
	right: 0
}

.btn_ic16 {
	display: inline-block;
	padding: 8px;
	border-radius: 4px;
	vertical-align: middle
}

.btn_ic16:hover {
	background-color: #eee;
	cursor: pointer;
	vertical-align: middle
}

.btn_ic16 .ic_side {
	margin: -1px 0 0 4px
}

.btn_ic24 {
	display: inline-block;
	padding: 8px;
	border-radius: 4px
}

.btn_ic24 .ic16 {
	
}

.btn_ic24:hover {
	background-color: #eee;
	cursor: pointer
}

.btn_ic16 .ic_side {
	
}

.btn_txt_s {
	display: inline-block;
	font-size: 12px;
	color: #999
}

.btn_txt_s:hover {
	text-decoration: underline;
}

.btn_caution_s {
	display: inline-block;
	cursor: pointer;
	padding: 0px 16px;
	height: 32px;
	line-height: 32px;
	border-radius: 4px;
	border: 1px solid #ddd;
	font-size: 13px;
	vertical-align: top
}

.btn_caution_s:hover {
	border-color: #888
}

a.btn_layer_x {
	position: absolute;
	top: 8px;
	right: 8px;
	border-radius: 4px;
	padding: 8px
}

a.btn_layer_x span.ic {
	display: inline-block;
	width: 16px;
	height: 16px;
	background: url(../images/ic_gnb.png?v3.1) no-repeat -100px -100px;
	vertical-align: middle
}

a.btn_layer_x span.txt {
	display: none
}

a.btn_layer_x:hover {
	background-color: #f0f0f0
}

span.btn_wrap, a.btn_wrap {
	cursor: pointer;
	display: inline-block
}

.btn_fn1 {
	cursor: pointer;
	display: inline-block;
	padding: 2px;
	color: #fff;
	font-weight: bold;
	font-size: 12px;
	line-height: 12px
}

.btn_fn1:hover {
	border-radius: 2px;
	background: #bebebe;
	color: #fff
}

.btn_fn2 {
	cursor: pointer;
	display: inline-block;
	padding: 2px;
	color: #fff;
	font-weight: bold;
	font-size: 12px;
	line-height: 12px
}

.btn_fn2:hover {
	border-radius: 2px;
	background: #bebebe;
	color: #fff
}

.btn_fn3 {
	cursor: pointer;
	display: inline-block;
	padding: 3px 5px 1px;
	color: #fff;
	font-weight: normal;
	font-size: 11px;
	line-height: 12px;
	border-radius: 2px;
	background: #666;
	color: #fff
}

.btn_fn3:hover {
	background-color: #444;
	color: #fff
}

.btn_fn3_s {
	cursor: pointer;
	display: inline-block;
	padding: 2px 5px;
	color: #fff;
	font-weight: normal;
	font-size: 11px;
	line-height: 12px;
	border-radius: 2px;
	background: #999;
	color: #fff
}

.btn_fn3, .btn_fn3 span.txt, span.btn_fn3, .btn_fn6 span.txt, .btn_fn6 {
	vertical-align: middle
}

.btn_fn4 {
	cursor: pointer;
	display: inline-block;
	padding: 0 4px;
	font-size: 12px;
	height: 17px;
	line-height: 16px;
	background: #bbb
}

.btn_fn4 span.txt {
	height: 12px
}

:root .btn_fn4 span.txt {
	line-height: 1.3\9 !important;
}

.btn_fn4_b {
	cursor: pointer;
	display: inline-block;
	padding: 4px;
	color: #fff;
	font-size: 12px;
	line-height: 12px;
	background: #bebebe;
	border-radius: 2px
}

.btn_fn4_b:hover {
	background: #acacac
}

.btn_fn6 {
	cursor: pointer;
	display: inline-block;
	height: 19px;
	line-height: 17px;
	padding: 0px 4px;
	color: #fff;
	font-size: 12px;
	background: #a9a9a9;
	border-radius: 2px
}

.btn_fn6:hover {
	background: #999
}

.btn_fn6 span.txt {
	font-size: 11px !important
}

.btn_fn7 {
	display: inline-block;
	height: 19px;
	line-height: 18px;
	padding: 0 4px;
	border: 1px solid #ddd;
	border-radius: 2px;
	background: #fff;
	cursor: pointer;
	font-size: 12px;
	white-space: nowrap;
}

.btn_fn7:hover {
	background: #f3f3f3;
	border-color: #d9d9d9
}

.btn_fn9 {
	background: #F4F4F4;
	border: 1px solid #D9D9D9;
	border-radius: 2px;
	color: #656565;
	cursor: pointer;
	display: inline-block;
	line-height: 18px;
	padding: 3px 8px
}

.btn_fn10 {
	vertical-align: middle;
	letter-spacing: -1px;
	background: #e9e9e9;
	border: 1px solid #d9d9d9;
	border-radius: 2px;
	color: #656565;
	cursor: pointer;
	display: inline-block;
	line-height: 18px;
	padding: 4px 8px 2px 8px;
	font-size: 13px;
}

.btn_fn11 {
	display: inline-block;
	padding: 0 4px;
	color: #fff;
	font-weight: normal;
	font-size: 12px;
	height: 19px;
	line-height: 18px;
	background: #999;
	border: 1px solid #999;
	border-radius: 2px;
	cursor: pointer
}

.btn_fn11:hover {
	background: #777;
	border-color: #777
}

.btn_fn12 {
	display: inline-block;
	border: 1px solid #c9c9c9;
	border-radius: 3px;
	height: 21px;
	line-height: 15px;
	padding: 0 5px;
	cursor: pointer
}

.btn_fn12 span.ic_gnb {
	vertical-align: middle;
	margin: 0 3px 0 0
}

.btn_fn12 span.txt {
	vertical-align: middle;
	font: 12px
}

.btn_fn12:hover {
	background: #E9E9E9;
	border-color: #CECECE;
	opacity: 1;
	box-shadow: 0 0 2px rgba(100, 100, 100, 0.1);
}

.btn_fn13 {
	display: inline-block;
	height: 22px;
	line-height: 22px;
	padding: 0 5px;
	cursor: pointer
}

.btn_fn13 span.ic_gnb {
	vertical-align: top;
	margin: 4px 3px 0 0 !important
}

.btn_fn13 span.txt {
	vertical-align: top;
	font-size: 12px;
	letter-spacing: -1px;
	color: #888
}

.btn_fn13:hover {
	background: #E9E9E9;
	border-color: #CECECE;
	opacity: 1;
	box-shadow: 0 0 2px rgba(100, 100, 100, 0.1);
}

.btn_fn14 {
	border-top-left-radius: 3px;
	border-bottom-left-radius: 3px;
	border: 1px solid #ddd
}

.btn_fn15 {
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd
}

.btn_fn16 {
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
	border: 1px solid #ddd
}

.btn_fn7 .ic_share {
	vertical-align: top;
	margin: 2px 2px 0 0
}

.btn_function {
	position: relative;
	display: block;
	height: 44px;
	font-size: 14px;
	letter-spacing: -1px;
	line-height: 47px;
	padding: 0px;
	text-align: center;
	background: #00a1b9;
	border-radius: 4px;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
	transition: all .2s
}

.btn_function:hover {
	transform: translateY(-1px);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2)
}

.btn_function .txt {
	position: relative;
	color: #fff;
	font-size: 15px
}

.btn_minor_s2 {
	cursor: pointer;
	display: inline-block;
	padding: 0 8px;
	height: 30px;
	background: #ddd;
	border: 1px solid #ddd;
	font-size: 13px
}

.btn_minor_s2 .ic_toolbar {
	vertical-align: top;
	margin: 4px 0 0 0
}

.btn_ic_plus, .btn_ic_list_reorder, .btn_ic_side_setting {
	display: inline-block
}

.btn_tool {
	float: left;
	display: inline-block;
	height: 30px;
	line-height: 29px;
	padding: 0 8px;
	white-space: nowrap;
	border-radius: 2px;
	font-size: 13px
}

.btn_tool:hover {
	background: #eee
}

.btn_func_more {
	display: inline-block;
	height: 30px;
	line-height: 25px;
	padding: 0 4px;
	cursor: pointer;
	border-radius: 4px
}

.btn_func_more:hover {
	background: #E9E9E9;
	border-color: #CECECE
}

.btn_submenu {
	position: relative;
	display: inline-block;
}

.btn_submenu .array_option {
	position: absolute;
	left: 0;
	top: 27px
}

.btn_submenu .btn_func_more {
	vertical-align: middle;
	margin: 0 0 0 -1px
}

.btn_submenu .btn_tool span.ic_arrow_down_s {
	display: none;
	margin: 11px 0 0 8px
}

.btn_submenu .array_type li .sort {
	display: inline-block;
	width: 20px;
	height: 20px;
	margin: 0 0 0 8px
}

.btn_ic_plus:hover, .btn_ic_list_reorder:hover, .btn_ic_side_setting:hover
	{
	background: #eee;
	border-radius: 4px
}

.btn_ic_plus.small, .btn_ic_side_setting, .btn_ic_list_reorder,
	.btn_ic_side_setting {
	width: 32px;
	height: 32px;
	cursor: pointer
}

.btn_ic_plus.small .ic_side.plus.small, .btn_ic_side_setting .ic_side_setting
	{
	vertical-align: top;
	margin: 9px 0 0 9px
}

.btn_side_st {
	display: inline-block;
	cursor: pointer;
	border: 1px solid #ddd;
	padding: 8px;
	font-size: 13px
}

.btn_major_s {
	display: inline-block;
	cursor: pointer;
	padding: 0 8px;
	color: #fff;
	height: 26px;
	line-height: 26px;
	background: #00a1b9;
	border: 1px solid #00a1b9;
	border-radius: 2px;
	font-size: 13px;
	vertical-align: middle
}

.btn_major_s span.txt {
	padding: 0 !important
}

.btn_minor_s {
	display: inline-block;
	cursor: pointer;
	padding: 0 8px;
	height: 24px;
	line-height: 23px;
	background: #fff;
	border: 1px solid #ddd;
	border-radius: 2px;
	font-size: 13px
}

.btn_minor_s:hover {
	border: 1px solid #888
}

.btn_minor_s span.txt, .btn_minor_s span.txt_caution {
	padding: 0;
	font-size: 13px;
}

.btn_minor_s.nude {
	border: 0
}

.btn_minor_s.nude:hover {
	background: none
}

span.btn_minor_s_selected {
	background-color: #eee;
	border-color: #c0c0c0
}

.btn_minor_s+.selected span.txt {
	font-weight: bold
}

span.creat .ic_addlist {
	margin: -2px 4px 0 0
}

/* common */
.user_link {
	color: #3b73af;
}

.user_link:hover {
	text-decoration: underline
}

.wrap_alert {
	display: block;
	vertical-align: middle
}

.alert_box {
	display: inline-block;
	background: #eee;
	padding: 4px 8px
}

.alert_box .txt {
	font-size: 13px
}

.alert_box .wrap_btn {
	margin: -4px 0 0 8px;
	padding: 0 !important
}

.alert_box .ic16 {
	
}

.alert_box .ic16:hover {
	background-color: #ddd
}

.works_drag {
	padding: 16px;
	color: #fff;
	background: #333
}

.works_drag .subject {
	display: inline-block;
	margin-left: 5px;
	white-space: nowrap;
	vertical-align: middle;
	text-overflow: ellipsis;
	overflow: hidden;
	width: 130px;
}

.works_drag .ic_works {
	display: none
}

.dragging {
	display: inline-block;
	padding: 16px;
	cursor: move;
	background: #333;
	color: #fff;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.5);
	border-radius: 4px
}
/* table */
.type_normal {
	width: 100%;
	table-layout: auto
}

.type_normal td {
	padding: 8px 16px;
	line-height: 1.6;
	border-bottom: 1px solid #eee;
	vertical-align: top
}

.type_normal td .ck {
	vertical-align: middle
}

.type_normal td.many {
	cursor: default;
}

.type_normal thead th {
	height: 32px;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	text-align: left;
	padding: 0 16px;
	white-space: nowrap;
	font-weight: normal;
	font-size: 13px;
	ext-align: left
}

.type_normal th>input[type="checkbox"] {
	margin-top: -4px
}

.type_normal td>input[type="checkbox"] {
	margin-top: -4px
}

.type_normal select {
	padding: 0px;
	vertical-align: top
}

.type_normal .ic_exclamation {
	margin: 0 2px 0 0;
}

.type_normal .first {
	padding-left: 10px
}

.type_normal .right {
	padding-left: 10px
}

.type_normal tbody th {
	border-right: 1px solid #ededed;
	font-weight: normal
}

.type_normal tr.detail_info td {
	text-align: left;
	border-color: #ccdadb;
	box-shadow: inset -1px 1px 3px rgba(33, 33, 33, 0.1);
	background-color: #fcfcfc
}

.type_normal tr.detail_info td ul {
	margin: 0 10px
}

.type_normal tr.detail_info td ul li {
	position: relative;
	padding: 9px
}

.type_normal tr.detail_info td ul li {
	border-bottom: 1px dashed #ddd
}

.type_normal tr.detail_info td ul li.last {
	border-bottom: none;
	padding-bottom: 6px
}

.type_normal tr.detail_info td ul li span.manager {
	display: block;
	margin-left: 44px;
	margin-top: 3px;
	font-weight: bold
}

.type_normal tr.detail_info td ul li span.name {
	font-weight: bold;
	color: #444
}

.type_normal tr.detail_info td ul li span.photo {
	position: absolute;
	left: 10px;
	top: 10px;
	width: 32px;
	height: 32px
}

.type_normal tr.detail_info td ul li span.photo img {
	width: 100%;
	height: 100%;
	border-radius: 3px
}

.type_normal tr.detail_info td ul li span.name {
	margin-left: 44px;
	line-height: 1.3
}

.type_normal.comm_join_list tr.detail_info td ul li span.name {
	display: block
}

.type_normal tr.detail_info td ul li p.talk {
	display: inline-block;
	margin-left: 44px;
	margin-top: 3px;
	max-width: 500px;
	color: #888;
	font-size: 12px;
	line-height: 1.3;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis
}

.type_normal tr.detail_info td ul li p.talk:hover {
	cursor: pointer
}

.type_normal tr.detail_info td ul li p.info {
	margin-left: 44px;
	color: #666;
	margin-right: 20px;
	line-height: 1.3
}

.type_normal tr.detail_info td ul li span.date {
	position: absolute;
	right: 20px;
	top: 28px
}

.type_normal tr.detail_info td ul li.no_line {
	border: 0
}

.type_normal tr.detail_info td ul li.no_line span.date {
	top: 10px
}

.type_normal tr.detail_info p.data_null {
	color: #888;
	padding: 10px;
	text-align: left
}

.type_normal tr.detail_info p.data_null span.txt {
	text-align: left;
	font-size: 12px
}

.type_normal tr.detail_info p.data_null span.txt:hover {
	color: #888
}

.type_normal tr.detail_info p.data_null span.ic_no_result {
	margin-right: 5px;
	margin-left: 20px
}

.type_normal tr.detail_info p.data_null span {
	vertical-align: middle
}

.type_normal tbody td span.ic_now {
	vertical-align: middle
}

.type_normal tbody td span.btn_wrap>span {
	margin-right: 2px
}

.type_normal tbody td ins.ic_folder:hover {
	background-position: -100px -50px
}

.type_normal thead tr th.first, .type_normal tbody tr td.first {
	padding-left: 24px !important
}

.type_normal tbody tr.ui-sortable-helper td:first-child {
	padding-right: 24px;
}

.type_normal.tb_admin_myCalendar tbody tr.ui-sortable-helper td:first-child
	{
	padding-right: 0;
}

.type_normal thead tr th:first-child, .type_normal tbody tr td:first-child
	{
	padding-right: 0;
	padding-left: 24px
}

.type_normal thead th:first-child.sorting_desc span.selected,
	.type_normal thead th:first-child.sorting_asc span.selected {
	left: -10px;
	padding-left: 10px
}

.type_normal thead th.sorting ins {
	background-position: 0 0;
	cursor: pointer;
	width: 14px;
	height: 14px;
	margin: 2px 0 0 8px
}

.type_normal thead th.sorting:hover span.title_sort ins.ic {
	background-position: 0 -20px
}

.type_normal thead th.sorting_disabled, table.type_normal thead th.sorting_disabled span.title_sort
	{
	text-indent: 0
}

.type_normal thead th.sorting_disabled ins, table.type_normal thead th.sorting_disable ins
	{
	display: none
}

.type_normal thead th.sorting_desc ins {
	width: 14px;
	height: 14px;
	vertical-align: middle;
	margin-left: 4px
}

.type_normal thead th.sorting_asc ins {
	width: 14px;
	height: 14px;
	vertical-align: middle;
	margin-left: 4px
}

.type_normal tbody td span.btn_wrap span.ic_classic {
	vertical-align: top
}

.type_normal tbody tr:hover, table.type_normal tbody tr.active {
	background: #f4f4f4
}

.type_normal tbody td span.btn_wrap span.ic_blank {
	vertical-align: middle
}

.type_normal tbody tr.tb_option {
	backgrounAd: #00a1b9
}

.type_normal tbody tr:hover td, table.type_normal tbody tr.active td {
	background: #f4f4f4
}

.type_normal tbody tr:hover td span.title_depart {
	background: #e9f5f6
}

.type_normal tbody tr.ui-sortable-helper, table.type_normal tbody tr.ui-sortable-helper:hover
	{
	background: #FFFFAF url(../images/bg_move.png?v3.2.0.0) no-repeat 4px
		10px;
	border: 1px solid #E3DC86;
	box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.1)
}

.type_normal tbody tr.ui-sortable-helper.active {
	background: none;
	border: 0
}

.type_normal tbody tr.ui-sortable-helper>td {
	display: none;
}

.type_normal.tb_admin_myCalendar tbody tr.ui-sortable-helper>td {
	display: table-cell !important;
	padding-top: 8px !important;
}

.type_normal.tb_admin_myCalendar tbody tr.ui-sortable-helper>td.tit {
	width: 100%;
}

.type_normal tbody tr.ui-sortable-helper>td, table.type_normal tbody tr.ui-sortable-helper:hover>td:first-child
	{
	border: 0;
	background: none
}

.type_normal tbody tr.ui-sortable-helper>td:first-child {
	display: block;
	padding-top: 5px;
}

.type_normal tbody tr.ui-sortable-placeholder {
	height: 25px;
	overflow: hidden
}

.type_normal tbody tr.ui-sortable-placeholder>td {
	background: #FFFFAF;
	height: 21px;
	border: 2px dotted #E3DC86;
	opacity: 0.7;
	filter: Alpha(Opacity = 70);
	padding: 0;
	line-height: 0
}

.type_normal.tb_admin_myCalendar tbody tr.ui-sortable-placeholder td.tit
	{
	width: 100%;
}

.type_normal td .ic_reply {
	margin: 0 0 0 8px
}

.type_normal td span.txt_form a {
	display: inline-block;
	vertical-align: top;
	margin-top: 2px
}

.type_normal td span.ic_file_s {
	margin-left: 4px
}

.type_normal td span:first-child>span.ic_file_s {
	margin-left: 0px
}

.type_normal td span.btn_wrap {
	line-height: 1;
	vertical-align: middle;
	margin: -1px 0 0 8px
}

.type_normal td span.btn_wrap span.num {
	margin-left: 0
}

.type_normal td.first_indent {
	padding-left: 15px
}

.type_normal td.first_indent span {
	padding-left: 0
}

.type_normal tr.noti td {
	background: #f4f4f4;
	border-color: #f4f4f4
}

.type_normal tr.noti td a span.btn_wrap>span.ic_notice {
	margin-left: -4px
}

.type_normal td.depart_bg:hover {
	background: #e9f5f6 url(../images/bg_dotline.png?v2.6.0.0) repeat-x 0
		50%
}

.type_normal td.depart_bg:hover, table.type_normal td.depart_bg:hover span.icon_modify,
	table.type_normal td.depart_bg:hover span.icon_del {
	background-color: #e9f5f6
}

.type_normal td.depart_bg {
	background: url(../images/bg_dotline.png?v2.6.0.0) repeat-x 0 50%
}

.type_normal td.depart_bg span.title_depart {
	background-color: #fff;
	color: #b1b1b1;
	font-weight: bold;
	font-weight: 500
}

.type_normal tr td span.comm {
	display: inline-block;
	font-weight: bold;
	font-weight: 500;
}

.type_normal tr td span.comm:hover {
	cursor: pointer
}

.type_normal td.action {
	vertical-align: middle
}

.type_normal td.list_subject span.txt {
	vertical-align: top;
	margin-top: 2px
}

div.dataTables_length select {
	border: 1px solid #ddd;
	margin-top: 0;
	font-weight: normal
}

div.dataTables_paginate {
	display: block;
	width: 100%;
	text-align: center;
	padding: 8px 0 0
}

div.dataTables_paginate a {
	color: black;
	border: 1px solid white;
	padding: 3px 10px 3px 10px;
    font-size: 1rem;
}

div.dataTables_paginate a:hover {
	border-color: #888;
}

div.dataTables_paginate a.paginate_active {
	background-color: #efefef;

}

div.dataTables_paginate a.first, div.dataTables_paginate a.last, div.dataTables_paginate a.previous,
	div.dataTables_paginate a.next {
	display: inline-block;
	width: 20px;
	height: 21px;

	padding: 0
}

div.dataTables_paginate a.first {
	background-position: -32px -14px
}

div.dataTables_paginate a.last {
	background-position: -52px -14px
}

div.dataTables_paginate a.previous {
	background-position: -34px 6px
}

div.dataTables_paginate a.next {
	background-position: -51px 6px
}

div.dataTables_paginate {
	display: block;
	width: 100%;
	text-align: center;
	padding: 24px 0 0
}

div.dataTables_paginate a:hover {
	border-color: #ccc
}

div.dataTables_paginate a.first, div.dataTables_paginate a.last, div.dataTables_paginate a.previous,
	div.dataTables_paginate a.next {
	display: inline-block;
	width: 20px;
	height: 21px;
	padding: 0
}

div.dataTables_paginate a.first {
	background-position: -32px -14px
}

div.dataTables_paginate a.last {
	background-position: -52px -14px
}

div.dataTables_paginate a.previous {
	background-position: -34px 6px
}

div.dataTables_paginate a.next {
	background-position: -50px 6px
}

div.dataTables_paginate a.paginate_button_disabled {
	cursor: default;
	opacity: 0.4
}

div.dataTables_paginate a.paginate_button_disabled:hover {
	border-color: #ddd
}

/* tab */
.aside_wrapper.article_reply .tab_nav {
	padding: 0 24px;
	border-bottom: 1px solid #dfdfdf;
}

.aside_wrapper.article_reply .tab_btn_prev+.swipe .tab_nav {
	padding: 0;
}

.tab_nav {
	display: block;
	height: 41px
}

.tab_nav:after {
	display: block;
	contents: "";
	clear: left;
}

.tab_nav li {
	float: left;
	margin: 0 0 -1px 24px;
	padding: 0;
	cursor: pointer;
	height: 40px;
	line-height: 40px;
	font-size: 13px;
	color: #999
}

.tab_nav li:first-child {
	margin: 0
}

.tab_nav li:hover {
	color: #000
}

.tab_nav li.on {
	border-bottom: 2px solid #000;
	color: #000;
	font-weight: bold;
	font-weight: 500;
}

.tab_nav li .ic_classic {
	display: none
}

.tab_nav.small li {
	margin: 0 0 -1px 16px;
	height: 40px;
	line-height: 40px
}

.tab_nav.small li:first-child {
	margin: 0
}

/* search */
.combine_search .c_search_wrap .btn_c_search {
	float: right
}

.combine_search .c_search_wrap .c_search {
	width: 130px
}
/* í†µí•©ê²€ìƒ‰ ê²€ìƒ‰ì°½ */
.combine_search {
	display: inline-block
}

.combine_search .c_search_wrap {
	position: relative;
	background: #fff;
	border: 1px solid #ddd;
	height: 32px;
	padding-right: 32px
}

.combine_search .c_search_wrap:hover, .combine_search .c_search_wrap:focus
	{
	border: 1px solid #2eacb3
}

.combine_search .c_search_wrap input.c_search {
	padding: 4px;
	height: 10px;
	border: 0;
	border: 0;
	background: #fff;
	width: 110px;
	height: 32px
}

.combine_search .c_search_wrap input.btn_c_search {
	position: absolute;
	top: 0;
	right: 0;
	display: inline-block;
	padding: 16px;
	vertical-align: top;
	cursor: pointer;
	border: 0;
	background: url(../images/ic_gnb.png?v2.6.0.0) no-repeat -483px -661px;
	width: 27px;
	height: 12px
}

.combine_search .c_search_wrap input.btn_c_search[value] {
	color: #fff;
	text-indent: -10000px;
}

.combine_search .c_search_wrap select.search_op {
	border: 0;
	border-right: 1px solid #ddd;
	line-height: 32px;
	height: 32px
}

.combine_search .c_search_wrap a.c_btn_detail {
	display: inline-block;
	vertical-align: top;
	margin-top: 8px;
	line-height: 1
}

.combine_search .c_search_wrap a.c_btn_detail:hover span.txt {
	color: #7d7d7d;
}

.combine_search .c_search_wrap a.c_btn_detail .txt {
	color: #a0a0a0;
	font-size: 11px;
	letter-spacing: -1px;
	vertical-align: top;
	padding-top: 2px;
}

.combine_search .c_search_wrap a.c_btn_detail .ic_cs_detail_arrow {
	vertical-align: top;
	margin: 6px 6px 0 5px;
}

div.combine_search_page h1.cs_s_title {
	margin-top: 10px;
	padding: 10px 12px 5px 20px;
	font-weight: bold;
	font-size: 16px
}

div.combine_search_page .s_result {
	margin: 15px 12px 0 20px;
	position: relative;
}

div.combine_search_page .s_result .name {
	color: #333;
}

div.combine_search_page .s_result .subject {
	vertical-align: top;
	max-width: 85%;
	display: inline-block;
	color: #2eacb3;
	text-decoration: underline;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
/* list */
.layer_read_authority .wrap_list {
	overflow-y: auto;
	min-height: 160px;
	max-height: 160px
}

.layer_read_authority .wrap_list .list>li {
	padding: 8px 0
}
/* layer */
.layer_welcome {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 9999
}

.layer_welcome .wrap_step {
	position: relative;
	height: 100%
}

.layer_welcome .step {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0
}

.layer_welcome .step_intro {
	display: block;
	background: #000;
	opacity: 0.8
}

.layer_welcome .step_intro .ment {
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -100px 0 0 -350px;
	width: 700px;
	height: 200px;
	text-align: center
}

.layer_welcome .step_intro .ment .tit {
	font-size: 50px;
	color: #fff;
	font-weight: normal;
	letter-spacing: -2px;
	margin-bottom: 20px
}

.layer_welcome .step_intro .ment .btn_major {
	font-size: 16px;
	color: #fff;
	font-weight: normal;
	border-radius: 50px;
	padding: 16px 24px
}

.layer_welcome .step1 {
	background: url(../images/welcome_step1.png) repeat top left
}

.layer_welcome .step2 {
	background: url(../images/welcome_step2.png) repeat bottom left
}

.layer_welcome .step3 {
	background: url(../images/welcome_step3.png) no-repeat top right
}

.layer_welcome .step1 .ment {
	position: absolute;
	top: 130px;
	left: 120px
}

.layer_welcome .step1 .ment .tit {
	color: #fff;
	text-align: left;
	font-weight: normal;
	font-size: 24px;
	margin: 0 0 8px 0
}

.layer_welcome .step1 .ment .info {
	color: #fff;
	text-align: left;
	margin-bottom: 16px;
	opacity: 0.7;
	line-height: 1.6
}

.layer_welcome .step1 .ment .btn_major {
	border-radius: 40px;
	padding: 14px 24px;
	font-size: 15px;
	font-weight: normal
}

.layer_welcome .step2 .ment {
	position: absolute;
	bottom: 40px;
	left: 190px
}

.layer_welcome .step2 .ment .tit {
	color: #fff;
	text-align: left;
	font-weight: normal;
	font-size: 24px;
	margin: 0 0 8px 0
}

.layer_welcome .step2 .ment .info {
	color: #fff;
	text-align: left;
	margin-bottom: 16px;
	opacity: 0.7;
	line-height: 1.6
}

.layer_welcome .step2 .ment .btn_major {
	border-radius: 40px;
	padding: 14px 24px;
	font-size: 15px;
	font-weight: normal
}

.layer_welcome .step3 .ment {
	position: absolute;
	top: 40px;
	right: 190px
}

.layer_welcome .step3 .ment .tit {
	color: #fff;
	text-align: left;
	font-weight: normal;
	font-size: 24px;
	margin: 0 0 8px 0
}

.layer_welcome .step3 .ment .info {
	color: #fff;
	text-align: left;
	margin-bottom: 16px;
	opacity: 0.7;
	line-height: 1.6
}

.layer_welcome .step3 .ment .btn_major {
	border-radius: 40px;
	padding: 14px 24px;
	font-size: 15px;
	font-weight: normal
}

.layer_welcome .welcome_nav {
	position: absolute;
	bottom: 50px;
	left: 50%;
	margin-left: -130px
}

.layer_welcome .welcome_nav a {
	display: inline-block;
	color: #fff;
	font-size: 18px;
	vertical-align: middle
}

.layer_welcome .welcome_nav .welcome_next .ic {
	width: 20px;
	height: 20px;
	background-position: -50px -400px;
	margin: 3px 0 0 8px;
	vertcia-align: middle
}

.layer_welcome .welcome_nav .welcome_list {
	display: inline-block;
	margin: 0 32px
}

.layer_welcome .welcome_nav .welcome_list li {
	display: inline-block;
	width: 12px;
	height: 12px;
	border-radius: 8px;
	background: #fff;
	margin: 0 8px;
	vertical-align: middle;
	opacity: 0.2
}

.layer_welcome .welcome_nav .welcome_list li.on {
	opacity: 1
}
/* layer_card_profile_type_1*/
div.layer_card {
	position: absolute;
	width: 220px;
	padding: 12px;
	border: 2px solid #c1c9d2;
	border-radius: 10px;
	background: #fff;
}

div.layer_card .content {
	width: 100%
}

div.layer_card header {
	position: relative;
}

div.layer_card .member_wrap {
	margin: 10px 0 0 10px;
}

div.layer_card .member_wrap .info span.name {
	display: block;
	font-size: 16px;
	font-weight: bold;
}

div.layer_card .member_wrap .info_meta {
	margin-top: 5px;
	text-align: left;
	border-left: 3px solid #909299;
}

div.layer_card .member_wrap .info_meta span {
	display: block;
	font-family: tahoma;
	font-size: 12px;
	padding-left: 5px;
	line-height: 1.5;
	font-size: 11px;
	color: #464646;
}

div.layer_card ul.menber_menu li a {
	padding: 0 8px
}

div.layer_card ul.menber_menu {
	margin: 12px 8px 5px;
}

div.layer_card ul.menber_menu li {
	display: block;
	height: 35px;
	line-height: 35px;
	margin-top: 2px;
	padding: 0 0 0 7px;
	border-radius: 5px;
	border: 1px solid #bbb;
}

div.layer_card ul.menber_menu li.mail a span.ic {
	background-position: 0 0;
}

div.layer_card ul.menber_menu li a span.ic {
	display: inline-block;
	width: 28px;
	height: 25px;
	background: url(../images/ic_card.png?v2.6.0.0) no-repeat 0 0;
	display: none
}
/*layer_confirm  :component style*/
div.layer_confim {
	zoom: 1;
	position: absolute;
	width: 400px;
	border-radius: 4px;
	background: #fff;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
	border: 1px solid #eee
}

div.layer_confim header {
	position: relative
}

div.layer_confim div.content {
	padding: 24px;
	min-height: 30px
}

div.layer_confim p.q {
	margin: 0 0 8px 0;
	font-size: 18px;
	font-weight: bold;
	font-weight: 500
}

div.layer_confim p.noti {
	margin: 0 0 5px 0;
	font-size: 12px;
	font-weight: normal
}

div.layer_confim footer.btn_layer_wrap {
	padding: 16px 24px 24px;
	text-align: right
}

div.layer_confim footer.btn_layer_wrap a:first-child {
	margin-left: 0
}

.layer_confim .btn_layer_wrap a {
	margin: 0 0 0 4px
}

div.layer_confim textarea {
	height: 200px
}

div.layer_confim div.content span.ic_error_page {
	margin-left: 180px
}

.simple_info {
	overflow: hidden position:relative;
	margin-right: 25px
}

.simple_info>li {
	display: block;
	margin-right: 15px;
	min-height: 22px;
	line-height: 1.5;
	padding-top: 1px;
	background: url(../images/bullet_gray_square.png?v2.6.0.0) no-repeat
		-1px 10px;
	padding: 2px 0 4px 10px
}

.simple_info li .btn_fn7 {
	margin: 0 0 0 8px
}

.simple_info li span.date {
	position: absolute;
	right: 0;
	top: 2px
}

.simple_info li:last-child {
	line-height: 1.5
}

.simple_info li a:hover {
	text-decoration: underline
}

.simple_info span.txt {
	vertical-align: baseline;
	letter-spacing: 0
}

.simple_info span.data {
	display: inline-block;
	padding-left: 5px;
	font: bold 12px arial, verdana, dotum;
	color: #333
}

.simple_info strong {
	font-weight: normal
}

.detail_info {
	border-top: 1px solid #eee;
	padding: 8px 0 0 0;
	margin: 8px 0 0 0
}

.detail_info li strong {
	font-weight: normal
}

.ic_info .layer_tail {
	top: 0;
	left: 0;
	right: 0
}

/* go_skin_advanced */
.go_skin_advanced .type_normal td {
	border-bottom: 0
}

/*tool_bar_button_remarkable*/
.btn_tool:first-child .ic_toolbar.approval+.txt, .btn_tool .ic_toolbar.write+.txt,
	.btn_tool .ic_toolbar.fast+.txt, .btn_major_s .ic_toolbar.write+.txt {
	font-weight: bold;
	font-weight: 500;
	color: #000;
}
/* .btn_tool .ic_toolbar.approval+.txt::after {content: ''; margin: 0 0 0 16px; border-right: 1px solid #ddd;} */
/* .btn_tool:first-child .txt {font-weight:bold; font-weight: 500; color: #000;} */
.go_skin_advanced #site-viewer {
	margin-top: 70px;
}

.card_item .form .form_tr .form_th {
	width: 60px;
	padding: 2px 0;
	font-size: 13px;
	color: #888
}

.card_item .form .form_tr .form_td {
	padding: 2px 0;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	max-width: 100%;
	font-size: 13px;
	color: #888;
}

.card_item .card_opt {
	padding: 4px 0 0 0
}

.card_item .card_opt .ic_file_s {
	width: 14px;
	height: 14px;
	background-position: -80px -120px
}

.wrap_ic+.space {
	width: 4px
}

.card_flex {
	display: table !important;
	table-layout: fixed
}

.card_flex .card_item {
	display: table-cell;
	width: auto;
	float: none
}

.card_flex .card_item .card_wrapper {
	margin: 0 16px 0 0
}

.card_flex .card_item:last-child .card_wrapper {
	margin: 0 0 0 0
}

.card_flex .approval_home_card .card_wrapper .t_card {
	white-space: normal;
	height: 28px;
	max-width: 80% !important
}

.card_flex .approval_home_card .card_wrapper .t_card+.pop_card {
	vertical-align: top;
	margin: 8px 0 0 -2px
}

.card_flex .approval_home_card {
	width: 25%;
	margin: 0 0 0 0;
}

.card_flex .card_item .card_wrapper {
	position: relative;
	border: 1px solid #ddd;
	border-radius: 8px;
	background: #fff;
	overflow: hidden
}

.card_flex .dataTables_paginate {
	padding-top: 16px
}

/* component */
/* mail_attachment */
.dd_attach table.mail_write .option_wrap {
	margin: 0 10px 0 8px;
}

.dd_attach table.mail_write span.priority {
	margin-left: 33px;
}

.dd_attach table.form_type p.desc, .dd_attach table.form_type p.desc span,
	.dd_attach table.form_type p.desc strong {
	color: #afafaf !important;
	font-weight: normal;
	letter-spacing: -1px;
}

.ic_attach {
	display: inline-block;
	background: url(../images/ic_attach.png?v2.6.0.0) no-repeat 0 0;
}

.ic_attach.ic_gear {
	width: 14px;
	height: 14px;
	background-position: 0 0;
}

.ic_attach.ic_del {
	width: 11px;
	height: 11px;
	background-position: -100px 0;
}

.dd_attach span.ic_upload {
	width: 18px;
	height: 18px;
	background-position: -50px 0;
	margin: 0 5px 0 0;
	vertical-align: middle
}

.dd_attach span.ic_download {
	width: 12px;
	height: 17px;
	background-position: -150px 0;
}

.dd_attach span.ic_setting:hover {
	background-position: 0 0;
}

.dd_attach span.ic_upload:hover {
	background-position: -50px 0;
}

.dd_attach span.ic_download:hover {
	background-position: -150px 0;
}

.dd_attach .btn_area {
	margin: 0 0 0 20px
}

.dd_attach table.mail_write .tool_bar {
	border-bottom: 0;
}

.dd_attach .tool_bar .btn_minor_s {
	border-radius: 0;
	background: #fff;
	border: 1px solid #cbcbcb;
}

.dd_attach .tool_bar .btn_minor_s:hover {
	border-radius: 0;
	background: #f5f5f5;
	border: 1px solid #cbcbcb;
}

.dd_attach .tool_bar .btn_minor_s .txt {
	font-weight: normal;
	color: #6c6c6c;
}

.dd_attach {
	position: relative;
	overflow-y: auto;
	padding: 8px 0;
	border: 2px dashed #ddd;
	box-sizing: border-box;
	max-height: 300px;
	font-size: 13px
}

.dd_attach .drag_txt {
	display: none;
	position: absolute;
	margin: -14px 0 0 -100px;
	font-size: 17px;
	top: 50%;
	left: 50%;
	font-weight: 600;
	color: #00a1b9
}

.dd_attach .area_txt {
	padding: 8px 0;
	text-align: center
}

.dd_attach .area_txt .msg {
	display: inline-block;
	color: #999;
	letter-spacing: -1px;
	font-size: 13px
}

.dd_attach .area_txt .msg .btn_file {
	position: relative;
	display: inline-block;
	width: 48px;
	cursor: pointer;
	text-align: left;
	overflow: hidden;
	vertical-align: middle;
	margin: -4px 0 0 2px
}

.dd_attach .area_txt .msg .size {
	margin: 0
}

.dd_attach .area_txt .msg .btn_file:hover .txt {
	text-decoration: underline
}

.dd_attach .attach_list .wrap_file {
	display: table;
	table-layout: fixed;
	box-sizing: border-box;
	width: 100%;
	height: 25px
}

.dd_attach .attach_list .wrap_file:hover {
	background: #f5f5f5
}

.dd_attach .attach_list .wrap_file .file {
	display: table-cell;
	padding: 0 10px;
	width: 100%;
	box-sizing: border-box;
}

.dd_attach .attach_list .wrap_file .file .attach_opt {
	display: inline-block;
	vertical-align: top;
	margin: 2px 0 0 8px
}

.dd_attach .attach_list .wrap_file .info {
	display: table-cell;
	width: 340px
}

.dd_attach .attach_list .wrap_file .info .status {
	display: inline-block;
	width: 40px;
	text-align: center;
	color: #999;
	font-size: 12px;
	margin: 0 0 0 0;
	height: 16px
}

.dd_attach .attach_list .wrap_file .info .status span {
	vertical-align: middle
}

.dd_attach .attach_list .wrap_file .info .status .rate {
	color: #25cad6
}

.dd_attach .attach_list .wrap_file .info .etc {
	display: inline-block;
	width: 140px;
	text-align: center;
	color: #999;
	font-size: 12px;
	height: 16px
}

.dd_attach .attach_list .wrap_file .info .etc .txt {
	padding: 0
}

.dd_attach .attach_list .wrap_file .info .kind {
	display: inline-block;
	width: 75px;
	text-align: center;
	color: #999;
	font-size: 12px;
	margin: -2px 0 0 0
}

.dd_attach .attach_list .wrap_file .info .kind .txt {
	display: inline-block;
	padding: 0;
	letter-spacing: -1px;
	height: 16px
}

.dd_attach .attach_list .wrap_file .info .kind .state {
	font-size: 12px;
	letter-spacing: 0;
	vertical-align: middle;
	padding: 2px 3px !important
}

.dd_attach .attach_list .wrap_file .info .size {
	display: inline-block;
	width: 55px;
	text-align: right;
	height: 16px;
	margin: -2px 0 0 0
}

.dd_attach .attach_list .wrap_file .info>span {
	vertical-align: middle
}

.dd_attach .wrap_file .gage {
	height: 5px;
	border: 0;
	top: 0;
	left: 0;
}

.dd_attach .wrap_file .gage_wrap {
	width: 100px;
	height: 5px;
	background: #e8e8e8;
	border: 0
}

.dd_attach .wrap_file .btn_fn4 {
	padding: 0px 4px;
	margin-right: 4px;
	background: #fff;
	border: 1px solid #d9d9d9;
}

.drag_file {
	border-color: #fff;
	outline: 2px dashed #00a1b9
}

.drag_file .area_txt, .drag_file .dd_attach_list, .drag_file .attach_list,
	.drag_file .progress, .drag_file .img_wrap, .drag_file .file_wrap {
	opacity: 0.2
}

.feed_write_b .drag_txt {
	display: none;
	position: absolute;
	margin: -14px 0 0 -100px;
	font-size: 17px;
	top: 50%;
	left: 50%;
	color: #00a1b9;
}

::-webkit-file-upload-button {
	cursor: pointer;
}

.drag_file .action_wrap, .drag_file textarea, .drag_file .dd_attach {
	opacity: 0.2
}

.drag_file .drag_txt {
	display: block !important
}

.dd_attach .area_txt .msg .btn_file .txt {
	display: inline-block;
	color: #666;
	cursor: pointer;
	text-decoration: underline
}

.dd_attach .area_txt .msg a:hover {
	text-decoration: underline
}

.dd_attach .area_txt .msg .btn_file input[type="file"] {
	display: inline-block;
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	cursor: pointer
}

.dd_attach .attach_list li>img {
	display: inline-block;
	position: absolute;
	top: 15px;
	left: 10px
}

.dd_attach .wrap_file .btn_fn4 {
	padding: 2px 4px;
	margin-right: 4px;
	background: #fff;
	border: 1px solid #d9d9d9;
}

.dd_attach .wrap_file .btn_fn4 span.txt {
	margin-left: 0;
	letter-spacing: -1px;
	height: 11px;
	line-height: 1;
	font-size: 11px;
	color: #999 !important;
}

.dd_attach .attach_list .wrap_file .name {
	cursor: default
}

.dd_attach .attach_list .wrap_file .size {
	color: #999;
	margin-left: 3px;
	vertical-align: middle;
	font-size: 13px;
	margin-top: 3px;
	display: inline-block;
}

.dd_attach .img_wrap {
	margin: 0 16px
}

.dd_attach .progress {
	padding: 5px 16px
}

.dd_attach .progress>img {
	display: inline-block;
	width: 100px !important;
	height: 8px !important;
	vertical-align: middle;
	padding: 0;
	margin: -3px 4px 0 4px;
}

.dd_attach .progress>img+span {
	font-size: 12px
}

.dd_attach.attached .area_txt {
	padding-bottom: 16px
}

.dd_attach.attached .ic_upload {
	display: none
}

.dd_attach.attached .area_txt .msg {
	opacity: 0.7
}
.table_search {
	padding : 20px;
	text-align: center;
}
.searchSelect {display: inline-flex; width: 8%;}
.searchKeyword {display: inline-flex; width: 20%;}
.searchSelect select, .searchKeyword input {font-size: 0.9rem;}
</style>
<script>
	function fn_move(word){
		location.href = "/EA/documentDept?drftProgrsNm="+word+"&currentPage=1&selSearch=${param.selSearch}&keyword=${param.keyword}"
	}
</script>
<div id="body">
	<div class="lefr-menu-list-content">
		<div class="go_content go_renew" id="content">
			<header class="content_top">
				<h4>부서 수신함</h4>
			</header>
			<!--목록-->
			<div class="content_page">
				<div class="dataTables_wrapper">
					<!-- 툴바  -->
					<div class="tool_bar tool_bar_second">
						<!-- 탭 -->
						<div class="critical_bottom">
							<ul class="tab_nav">
								<li onclick="fn_move('')" id="tab_all" class="<c:if test="${param.drftProgrsNm eq ''}">first on</c:if>"><span>전체</span></li>
								<li onclick="fn_move('진행')" id="tab_inprogress" class="<c:if test="${param.drftProgrsNm eq '진행'}">first on</c:if>"><span>진행</span></li>
								<li onclick="fn_move('완료')" id="tab_complete" class="<c:if test="${param.drftProgrsNm eq '완료'}">first on</c:if>"><span>완료</span></li>
								<li onclick="fn_move('반려')" id="tab_return" class="<c:if test="${param.drftProgrsNm eq '반려'}">first on</c:if> last"><span>반려</span></li>
							</ul>
						</div>
						<!-- 리스트 갯수 선택 select box (마크업 유지) -->
					</div>
					<!-- 테이블 -->
					<table class="type_normal list_approval">
						<thead id="doclist_field_header">
							<tr>
								<th id="header_drafted_at" sort-id="draftedAt"
									class="date first sorting_desc"><span class="title_sort">기안일<ins
											class="ic"></ins><span class="selected"></span></span></th>


								<th id="header_end_at" sort-id="completedAt"
									class="deadline sorting"><span class="title_sort">완료일<ins
											class="ic"></ins><span class="selected"></span></span></th>


								<th id="header_form_name" sort-id="formName" class="doc sorting"><span
									class="title_sort">결재양식<ins class="ic"></ins><span
										class="selected"></span></span></th>
								<!-- <th id="header_emergency" sort-id="isEmergency"
									class="doc_emergency sorting"><span class="title_sort">긴급<ins
											class="ic"></ins><span class="selected"></span></span></th> -->
								<th id="header_title" sort-id="title" class="subject sorting"><span
									class="title_sort">제목<ins class="ic"></ins><span
										class="selected"></span></span></th>
								<th id="header_attach" class="attach sorting_disabled"><span
									class="title_sort">첨부</span></th>
								<th id="header_drafter_name" sort-id="drafterName"
									class="writer sorting"><span class="title_sort">기안자<ins
											class="ic"></ins><span class="selected"></span></span></th>
								<!-- <th id="header_doc_no" sort-id="docNum" class="doc_num sorting"><span
									class="title_sort">문서번호<ins class="ic"></ins><span
										class="selected"></span></span></th> -->
								<th id="header_doc_status" sort-id="docStatus"
									class="state_wrap sorting"><span class="title_sort">결재상태<ins
											class="ic"></ins><span class="selected"></span></span></th>
							</tr>
						</thead>
						<tbody>
							<tr id="allSelectTr" class="tb_option" style="display: none;">
								<td colspan="7">
									<p id="allSelectMsg1" class="desc">현재 페이지에 있는 모든 문서들이
										선택되었습니다.</p>
									<p id="allSelectMsg2" class="desc">해당 문서함의 모든 문서 66개를
										선택하시려면 아래의 [모든 문서 선택]을 클릭하세요.</p>
									<p id="allSelectMsg3" class="desc" data-value="page">
										<a>[모든 문서 선택]</a>
									</p>
								</td>
							</tr>
							<c:forEach var="drft" items="${list}">
								<tr>
									<td class="date first">
										<span class="txt">${fn:substring(drft.writngTm,0,10)}</span>
									</td>
									<td class="date">
										<span class="txt">${fn:substring(drft.completeTm,0,10)}</span>
									</td>
									<td class="division">
										<span class="txt">${drft.formNm}</span>
									</td>
									<!-- <td class="doc_emergency">
									</td> -->
									<td class="subject">
										<a href="/EA/document/detail?drftNo=${drft.drftNo}" style="color:black;">
											<span class="txt">${drft.sj}</span>
										</a>
										<span class="btn_wrap">
											<a class="popup">
												<span class="ic_classic ic_blank" title="팝업보기"></span>
											</a>
										</span>
									</td>
									<td class="attach">
										<c:if test="${drft.fileNo > 0}">
											<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-paperclip" viewBox="0 0 16 16">
											  <path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z"/>
											</svg>
										</c:if>
									</td>
									<td class="writer">
										<a>
											<span class="txt">${drft.nm}</span>
										</a>
									</td>
									<%-- <td class="doc_num">
										<span class="txt">${drft.drftNo}</span>
									</td> --%>
									<td class="state_wrap">
										<c:if test="${drft.drftProgrsNm eq '진행중'}">
											<span class="green-span">진행 중</span>
										</c:if>
										<c:if test="${drft.drftProgrsNm eq '완료'}">
											<span class="blue-span">완료</span>
										</c:if>
										<c:if test="${drft.drftProgrsNm eq '반려'}">
											<span class="grey-span">반려</span>
										</c:if>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="tool_bar tool_absolute">
						<div class="dataTables_paginate paging_full_numbers">
							<c:if test="${param.currentPage  > 5}">
								<a id="first_page" tabindex="0" href="/EA/documentDept?drftProgrsNm=${param.drftProgrsNm}&currentPage=1&selSearch=${param.selSearch}&keyword=${param.keyword}"
									class="first paginate_button paginate_button_disabled"
									title="맨앞">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-left" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M8.354 1.646a.5.5 0 0 1 0 .708L2.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
									  <path fill-rule="evenodd" d="M12.354 1.646a.5.5 0 0 1 0 .708L6.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
									</svg>	
								</a>
								<a id="prev_page" tabindex="0" href="/EA/documentDept?drftProgrsNm=${param.drftProgrsNm}&currentPage=${paging.startPage - 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"
									class="previous paginate_button paginate_button_disabled"
									title="이전">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
									</svg>	
								</a>
							</c:if>
							<span id="pages"> 
								<c:forEach var="pageNo" begin="${paging.startPage }" end="${paging.endPage }" varStatus="stat">
							        <a class="paginate_button <c:if test="${pageNo == param.currentPage}">paginate_active</c:if>" href="/EA/documentDept?drftProgrsNm=${param.drftProgrsNm}&currentPage=${pageNo}&selSearch=${param.selSearch}&keyword=${param.keyword}" data-dt-idx="${pageNo }" tabindex="0">${pageNo }</a>
					           	</c:forEach>
							</span> 
							<c:if test="${param.currentPage  <= paging.totalPages - paging.totalPages%5}">
								<a id="next_page" tabindex="0" href="/EA/documentDept?drftProgrsNm=${param.drftProgrsNm}&currentPage=${paging.startPage + 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"
									class="next paginate_button "
									title="다음">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
									</svg>	
								</a> <a id="last_page" tabindex="0" href="/EA/documentDept?drftProgrsNm=${param.drftProgrsNm}&currentPage=${paging.totalPages}&selSearch=${param.selSearch}&keyword=${param.keyword}"
									class="last paginate_button" title="맨뒤">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
									  <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
									</svg>
								</a>
							</c:if>
						</div>
					</div>
				</div>
				<div class="table_search">
					<!-- <select id="duration">
						<option value="all">전체기간</option>
						<option value="1">1개월</option>
						<option value="6">6개월</option>
						<option value="12">1년</option>
					</select> -->
					<div id="durationPeriod" class="search_option"
						style="display: none">
						<input id="fromDate" class="txt_mini wfix_small hasDatepicker"
							type="text"> ~ <input id="toDate"
							class="txt_mini wfix_small hasDatepicker" type="text">
					</div>
					<div class="input-group searchSelect">
						<select id="searchType" class="form-control">
							<option value="">전체</option>
							<option value="sj">제목</option>
							<option value="nm">기안자</option>
							<option value="deptNm">기안부서</option>
							<!-- <option value="formName">결재양식</option>
							<option value="docNum">문서번호</option>
							<option value="activityUserName">결재선</option> -->
						</select>
					</div>
					<div class="input-group searchKeyword">
						<input onkeyup="fn_search()" id="keyword" class="search2 form-control" type="text" placeholder="검색">
						<div class="input-group-append">
				            <button type="submit" class="btn btn-default btn_search2"><i class="fa fa-search"></i></button>
		        		</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
function fn_search() { 
	if (window.event.keyCode == 13) {
		var searchType = $("#searchType").val();
		var keyword = $("#keyword").val();
		location.href = "/EA/documentDept?currentPage=1&selSearch=" + searchType + "&keyword=" + keyword;
	}
}	
</script>