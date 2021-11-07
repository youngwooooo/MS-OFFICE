 <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
.left-menu-list {
	position: absolute;
	border-right: 1px solid #dee2e6;
	height: 100%;
	width: 260px;
	float: left;
}

.lefr-menu-list-content {
	margin-left: 260px;
	padding-left: 10px;
	padding-right: 10px;
}

.left-menu-list a {
	color: black;
}

.left-menu-list a:hover {
	color: black;
}

.menu-name {
	padding: 20px 20px 10px 20px;
}

.menu-create {
	padding: 0px 20px 20px 20px;
}

.menu-list {
	padding: 0px 20px 20px 20px;
}

.menu-list .menu-list-ul {
	list-style: none;
	padding-left: 0px;
	margin-bottom: 0px;
}

.menu-list li {
	padding-left: 40px;
	margin-top: 3px;
}

.menu-list li:hover {
	background-color: #f7f8f9;
}

.menu-list span {
	font-size: 0.9rem;
}

.type_list_box, #tr, #td {
	border: 1px solid #dddddd;
	width: 100px;
	font-size: 0.9rem;
}

#td {padding: 10px; text-align: center;}

.type_list_box {
	width: 100%;
	height: 20%;
}

.active {
	font-size: 1.3em;
	list-style-type: none;
	float: left;
	margin-left: 20px;
}

#title {
	text-align: center;
	background-color: #f9f9f9;
}

a {
	color: black;
}

#info1, #info2, #info3, #info4, #info5, #info6, #info7, #info8, #info9,
	#info10, #info11, #info12, #info13, #info14, #info15 {
	width: 100%;
}


#table {
	text-align: center;
	width: 100%;
	border-bottom: 1px solid #dddddd;
	border-top: 1px solid #dddddd;
}

#table thead tr {border-bottom: 1px solid #dddddd; font-size: 0.9rem; font-weight: bold}

.workTable {font-size: 0.9rem;}

header {padding: 30px 20px 20px 10px;}

p {margin: 0px;}

.tb_optional {font-size: 0.9rem; padding-top: 10px; color: #888; font-weight: bold;}

.total {font-weight: bold;}

.nav-item, .active {font-size: 0.9rem;}

.active {margin: 0px;}

.openCreateInfo {margin-left: 10px; padding-top: 3px;}
.openCreateInfo:hover {cursor: pointer;}

input[type='Date'] {border: 0px solid black;}

.form-control {height: 30px; font-size: 0.8rem;}

.page_action_wrap button, .modal-footer button {font-size: 0.9rem;}

</style>
<script type="text/javascript">
</script>
<body>
	<div class="lefr-menu-list-content">
		<!-- 메뉴에 따른 내용 -->
		<div id="hello">
			<header class="content_top" style="padding-left: 20px; padding-top: 20px;">
				<!-- 인사카드 Title -->
				<h4>
					<span class="txt single_txt">인사정보</span>
				</h4>
			</header>
			<!-- content -->
			<div class="content_page" style="padding: 10px 20px 20px 20px;">
				<div class="ehr_basic_info">
					<table class="type_list_box">
						<tbody>
							<tr id="tr">
								<td id="td" rowspan="5">
									<img alt="${session.empVo.fileOrginlNm}" src="/reload?fileNo=${sessionScope.empVo.fileNo}" style="width: 100%; height: 100%">
								</td>
							</tr>
							<tr id="tr">
								<td id="td" class="name" style="text-align: center; background-color: f9f9f9;">이름</td>
								<td id="td" class="name" style="text-align: center; background-color: f9f9f9;">소속</td>
								<td id="td" class="last" colspan="3">Ms그룹</td>
							</tr>
							<tr id="tr">
								<td id="td" class="name_txt" rowspan="3" style="text-align: center">
									<p class="kor">${empVo.nm}</p>
									<p class="eng"></p>
								</td>
								<td id="td" class="number" style="text-align: center; background-color: f9f9f9;">사번</td>
								<td id="td" class="number_txt">${empVo.empno}</td>
								<td id="td" class="telephone" style="text-align: center; background-color: f9f9f9;">내선번호</td>
								<td id="td" class="telephone_txt last"></td>
							</tr>
							<tr id="tr">
								<td id="td" class="email" style="text-align: center; background-color: f9f9f9;">이메일</td>
								<td id="td" class="email_txt">${empVo.email}</td>
								<td id="td" class="mobile" style="text-align: center; background-color: f9f9f9;">휴대번호</td>
								<td id="td" class="mobile_txt last">${empVo.email}</td>
							</tr>
							<tr id="tr">
								<td id="td" class="rank" style="text-align: center; background-color: f9f9f9;">직위 / 직책</td>
								<td id="td" class="rank_txt">${si[0].position}</td>
								<td id="td" class="phone" style="text-align: center; background-color: f9f9f9;">대표전화</td>
								<td id="td" class="phone_txt last"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="divSimpleCommunity" style="padding: 20px;">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 1}'>active</c:if>" data-toggle="tab" href="#info1" id="infomation1">기본</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 2}'>active</c:if>" data-toggle="tab" href="#info2" id="infomation2">신상</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 3}'>active</c:if>" data-toggle="tab" href="#info3" id="infomation3">직무/담당</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 4}'>active</c:if>" data-toggle="tab" href="#info4" id="infomation4">발령</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 5}'>active</c:if>" data-toggle="tab" href="#info5" id="infomation5">경력</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 6}'>active</c:if>" data-toggle="tab" href="#info6" id="infomation6">포상/징계</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 7}'>active</c:if>" data-toggle="tab" href="#info7" id="infomation7">인사평가</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 8}'>active</c:if>" data-toggle="tab" href="#info8" id="infomation8">교육</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 9}'>active</c:if>" data-toggle="tab" href="#info9" id="infomation9">자격</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 10}'>active</c:if>" data-toggle="tab" href="#info10" id="infomation10">어학</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 11}'>active</c:if>" data-toggle="tab" href="#info11" id="infomation11">병역</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 12}'>active</c:if>" data-toggle="tab" href="#info12" id="infomation12">해외출장</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 13}'>active</c:if>" data-toggle="tab" href="#info13" id="infomation13">학력</a></li>
					<li class="nav-item"><a class="nav-link <c:if test='${param.tag eq 14}'>active</c:if>" data-toggle="tab" href="#info14" id="infomation14">가족</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#info15" id="all">전체</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade <c:if test='${param.tag eq 1}'>show active</c:if>" id="info1">
						<form action="/ehr/infoupdate" method="post" id="infoupdate">
							<header>
								<h4 class="tab_title" style="float: left;">기본 정보</h4>
								<span id="sample" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</span>
							</header>
							<table class="type_list_box" style="width: 100%; height: 200px;">
								<tbody>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9;">
											<span class="title_txt">입사일</span>
										</td>
										<td id="td" class="col2" style="text-align: left;">
											<input id="entry" style="border: 0 solid black;" class="txt wfix_small hasDatepicker" type="Date" name="entry" value="${si[0].entry2}">
										</td>
										<td id="td" class="col3" style="background-color: #f9f9f9">
											<span class="title_txt">직무</span>
										</td>
										<td id="td" class="col4">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt" id="Duty" name="Duty" value="${si[0].duty}">
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">직종</span>
										</td>
										<td id="td" class="col6">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt" id="occupation" name="occupation" value="${si[0].occupation}">
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">직군</span>
										</td>
										<td id="td" class="col8">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="jobgroup" name="jobgroup" value="${si[0].jobgroup}">
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">채용구분</span>
										</td>
										<td id="td" class="col2">
											<span class="wrap_select"> <select class="wfix_small form-control" name="recruitmentdiv" id="recruitmentdiv">
													<option value="NEW">신입</option>
													<option value="CAREER">경력</option>
												</select>
											</span>
										</td>
										<td id="td" class="col3" style="background-color: #f9f9f9">
											<span class="title_txt">직원구분</span>
										</td>
										<td id="td" class="col4">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="employeediv" name="employeediv" value="${si[0].employeediv}">
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">급여구분</span>
										</td>
										<td id="td" class="col6">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="paydiv" name="paydiv" value="${si[0].paydiv}">
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">추천자</span>
										</td>
										<td id="td" class="col8">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="recommender" name="recommender" value="${si[0].recommender}">
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">상태</span>
										</td>
										<td id="td" class="col2">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="state" name="state" value="${si[0].state}">
										</td>
										<td id="td" class="col3" style="background-color: #f9f9f9">
											<span class="title_txt">생년월일</span>
										</td>
										<td id="td" class="col4">
											<div class="birthday_wrap" style="display: flex;">
												<span class="wrap_date" style="padding-top: 5px;"> <input class="txt wfix_small hasDatepicker" type="Date" id="birthday" name=birthday value="${si[0].birthday2}"> 
													<span class="ic ic_calendar"></span>
												</span> 
												<span class="wrap_select" style="margin-left: 15px;">
													<select class="wfix_small form-control" id="lunarcalendar" name="lunarcalendar" class="lunarcalendar">
														<option value="SOLAR">양력</option>
														<option value="LUNAR">음력</option>
													</select>
												</span>
											</div>
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">성별</span>
										</td>
										<td id="td" class="col6">
											<span class="wrap_select"> <select class="wfix_small form-control" name="gender" id="gender">
													<option value="MALE">남자</option>
													<option value="FEMALE">여자</option>
												</select>
											</span>
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">결혼여부</span>
										</td>
										<td id="td" class="col8">
											<span class="wrap_select"> <select class="wfix_small form-control" name="marry" id="marryid">
													<option value="SINGLE">미혼</option>
													<option value="MARRIED">기혼</option>
												</select>
											</span>
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">장애여부</span>
										</td>
										<td id="td" class="col2">
											<span class="wrap_select"> <select class="wfix_small form-control" name="obstacle" id="obstacle">
													<option value="Y">Y</option>
													<option value="N">N</option>
												</select>
											</span>
										</td>
										<td id="td" class="col3" style="background-color: #f9f9f9">
											<span class="title_txt">보훈여부</span>
										</td>
										<td id="td" class="col4">
											<span class="wrap_select"> <select class="wfix_small form-control" name="veteran" id="veteran">
													<option value="Y">Y</option>
													<option value="N">N</option>
												</select>
											</span>
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">퇴사일</span>
										</td>
										<td id="td" class="col6"></td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">퇴직사유</span>
										</td>
										<td id="td" class="col8">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="work" name="work" value="">
										</td>
									</tr>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>

					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 2}'>show active</c:if>" id="info2">
						<form action="/ehr/bodyupdate" method="post" id="/ehr/bodyupdate">
							<header>
								<h4 class="tab_title">신상 정보</h4>
							</header>
							
							<table class="type_list_box" style="width: 100%; height: 200px;">
								<tbody>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">취미</span>
										</td>
										<td id="td" class="col2">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="hobby" name="hobby" value="${si[0].hobby}">
										</td>
										<td id="td" class="col3" style="background-color: #f9f9f9">
											<span class="title_txt">특기</span>
										</td>
										<td id="td" class="col4">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="specialty" name="specialty" value="${si[0].specialty}">
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">팩스</span>
										</td>
										<td id="td" class="col6">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="fax" name="fax" value="${si[0].fax}">
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">취업방법</span>
										</td>
										<td id="td" class="col8">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="employment" name="employment" value="${si[0].employment}">
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">주소</span>
										</td>
										<td colspan="5">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="addr" name="addr" value="${si[0].addr}">
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">자택번호</span>
										</td>
										<td id="td" class="col8">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="addrno" name="addrno" value="${si[0].addrno}">
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">보훈번호</span>
										</td>
										<td colspan="3">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="veteranno" name="veteranno" value="${si[0].veteranno}">
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">보훈가족</span>
										</td>
										<td id="td" class="col6">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="veteranfamliy" name="veteranfamliy" value="${si[0].veteranfamliy}">
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">보훈구분</span>
										</td>
										<td id="td" class="col8">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="veterandiv" name="veterandiv" value="${si[0].veterandiv}">
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">장애등록번호</span>
										</td>
										<td id="td" class="col2">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="obstacleno" name="obstacleno" value="${si[0].obstacleno}">
										</td>
										<td id="td" class="col3" style="background-color: #f9f9f9">
											<span class="title_txt">장애구분</span>
										</td>
										<td id="td" class="col4">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="obstaclediv" name="obstaclediv" value="${si[0].obstaclediv}">
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">장애등급</span>
										</td>
										<td id="td" class="col6">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id=obstaclegrade name="obstaclegrade" value="${si[0].obstaclegrade}">
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">장애인정구분</span>
										</td>
										<td id="td" class="col8">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="obstaclerecdiv" name="obstaclerecdiv" value="${si[0].obstaclerecdiv}">
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">계좌유형</span>
										</td>
										<td id="td" class="col2">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="account" name="account" value="${si[0].account}">
										</td>
										<td id="td" class="col3" style="background-color: #f9f9f9">
											<span class="title_txt">은행</span>
										</td>
										<td id="td" class="col4">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="bank" name="bank" value="${si[0].bank}">
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">예금주</span>
										</td>
										<td id="td" class="col6">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="accountholder " name="accountholder" value="${si[0].accountholder}">
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">비고</span>
										</td>
										<td id="td" class="col8">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="note" name="note" value="${si[0].note}">
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" style="background-color: #f9f9f9">
											<span class="title_txt">계좌번호</span>
										</td>
										<td colspan="3">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="accountnumber" name="accountnumber" value="${si[0].accountnumber}">
										</td>
										<td id="td" class="col5" style="background-color: #f9f9f9">
											<span class="title_txt">시작일자</span>
										</td>
										<td id="td" class="col6">
											<input type="Date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="startdate" name="startdate" value="${si[0].startdate}">
										</td>
										<td id="td" class="col7" style="background-color: #f9f9f9">
											<span class="title_txt">종료일자</span>
										</td>
										<td id="td" class="col6">
											<input type="Date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="enddate" name="enddate" value="${si[0].enddate}">
										</td>
									</tr>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>

					</div>
					<div class="tab-pane fade<c:if test='${param.tag eq 3}'>show active</c:if>" id="info3">
						<form action="/ehr/jobresponsibilitiesupdate" method="post" id="jobresponsibilitiesupdate">
							<header style="display: flex">
								<h4 class="tab_title">직무/담당</h4>
								<p data-toggle="modal" data-target="#myModal1" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="group">
											<span class="title_txt">직군</span>
										</td>
										<td id="td" class="category">
											<span class="title_txt">직종</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">직무</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="percent">
											<span class="title_txt">비중</span>
										</td>
										<td id="td" class="work">
											<span class="title_txt">담당업무</span>
										</td>
										<td id="td" class="work">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${jobresponsibilities[0].jrno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="jsb" items="${jobresponsibilities}" varStatus="status">
										<tr class="dataRow" style="text-align: center">
											<td id="td" class="num" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jrno" name="info2VoList[${status.index}].jrno" value="${jsb.jrno}">
											</td>
											<td id="td" class="jopgroup">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jopgroup" name="info2VoList[${status.index}].jopgroup" value="${jsb.jopgroup}">
											</td>
											<td id="td" class="occupation">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="occupation" name="info2VoList[${status.index}].occupation" value="${jsb.occupation}">
											</td>
											<td id="td" class="entry">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="entry" name="info2VoList[${status.index}].entry" value="${jsb.entry}">
											</td>
											<td id="td" class="jrstartdate">
												<c:set var="jsbjrstartdate" value="${jsb.jrstartdate}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jrstartdate" name="info2VoList[${status.index}].jrstartdate" value="${fn:substring(jsbjrstartdate,0,10)}">
											</td>
											<td id="td" class="jrenddate">
												<c:set var="jsbjrenddate" value="${jsb.jrenddate}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jrenddate" name="info2VoList[${status.index}].jrenddate" value="${fn:substring(jsbjrenddate,0,10)}">
											</td>
											<td id="td" class="importance">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="importance" name="info2VoList[${status.index}].importance" value="${jsb.importance}">
											</td>
											<td id="td" class="jrresponsibilities">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jrresponsibilities" name="info2VoList[${status.index}].jrresponsibilities" value="${jsb.jrresponsibilities}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete1" onclick="fn_delete1('${jsb.jrno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 4}'>show active</c:if>" id="info4">
						<form action="/ehr/issuedupdate" method="post" id="issuedupdate">
							<header style="display: flex"><h4 class="tab_title">발령</h4>
								<p data-toggle="modal" data-target="#myModal2" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">발령일</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="reason">
											<span class="title_txt">발령명</span>
										</td>
										<td id="td" class="state">
											<span class="title_txt">직원구분</span>
										</td>
										<td id="td" class="team">
											<span class="title_txt">소속</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">급여단계</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">직책</span>
										</td>
										<td id="td" class="work">
											<span class="title_txt">담당업무</span>
										</td>
										<td id="td" class="work">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${issued[0].issuedno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="issued" items="${issued}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="issuedno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="issuedno" name="info2VoList[${status.index}].issuedno" value="${issued.issuedno}">
											</td>
											<td id="td" class="date">
												<c:set var="issuedissueddate" value="${issued.issueddate}" />
												<input type="Date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="issuedate" name="info2VoList[${status.index}].issueddate" value="${fn:substring(issuedissueddate,0,10)}">
											</td>
											<td id="td" class="issueddivision">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="issueddivision" name="info2VoList[${status.index}].issueddivision" value="${issued.issueddivision}">
											</td>
											<td id="td" class="issuedname">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="issuedname" name="info2VoList[${status.index}].issuedname" value="${issued.issuedname}">
											</td>
											<td id="td" class="employeediv">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="employeediv" name="info2VoList[${status.index}].employeediv" value="${issued.employeediv}">
											</td>
											<td id="td" class="team">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="team" name="info2VoList[${status.index}].team" value="${issued.team}">
											</td>
											<td id="td" class="paystep">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="paystep" name="info2VoList[${status.index}].paystep" value="${issued.paystep}">
											</td>
											<td id="td" class="position">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="position" name="info2VoList[${status.index}].position" value="${issued.position}">
											</td>
											<td id="td" class="issuedresponsibilities">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="issuedresponsibilities" name="info2VoList[${status.index}].issuedresponsibilities" value="${issued.issuedresponsibilities}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete2" onclick="fn_delete2('${issued.issuedno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 5}'>show active</c:if>" id="info5">
						<form action="/ehr/careerupdate" method="post" id="careerupdate">
							<header style="display: flex"><h4 class="tab_title">경력</h4>
								<p data-toggle="modal" data-target="#myModal3" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="workplace">
											<span class="title_txt">근무처</span>
										</td>
										<td id="td" class="position">
											<span class="title_txt">직위</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">담당업무</span>
										</td>
										<td id="td" class="period">
											<span class="title_txt">근속기간</span>
										</td>
										<td id="td" class="cause">
											<span class="title_txt">퇴직사유</span>
										</td>
										<td id="td" class="cause">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${career[0].careerno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="career" items="${career}" varStatus="status">
										<tr class="dataRow" style="text-align: center">
											<td id="td" class="careerno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="careerno" name="info2VoList[${status.index}].careerno" value="${career.careerno}">
											</td>
											<td id="td" class="careerstartdate">
												<c:set var="careercareerstartdate" value="${career.careerstartdate}" />
												<input type="Date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="careerstartdate" name="info2VoList[${status.index}].careerstartdate" value="${fn:substring(careercareerstartdate,0,10)}">
											</td>
											<td id="td" class="careerenddate">
												<c:set var="careercareerenddate" value="${career.careerenddate}" />
												<input type="Date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="careerenddate" name="info2VoList[${status.index}].careerenddate" value="${fn:substring(careercareerenddate,0,10)}">
											</td>
											<td id="td" class="workplace">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="workplace" name="info2VoList[${status.index}].workplace" value="${career.workplace}">
											</td>
											<td id="td" class="jobposition">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="jobposition" name="info2VoList[${status.index}].jobposition" value="${career.jobposition}">
											</td>
											<td id="td" class="responsibilities">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="responsibilities" name="info2VoList[${status.index}].responsibilities" value="${career.responsibilities}">
											</td>
											<td id="td" class="csy">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="csy" name="info2VoList[${status.index}].csy" value="${career.csy}">
											</td>
											<td id="td" class="retirement">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="retirement" name="info2VoList[${status.index}].retirement" value="${career.retirement}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete3" onclick="fn_delete3('${career.careerno}')"><i class="fas fa-times"></i></button>
											</td>		
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>

					<div class="tab-pane fade <c:if test='${param.tag eq 6}'>show active</c:if>" id="info6">
						<form action="/ehr/rewardandpunishmentupdate" method="post" id="rewardandpunishmentupdate">
							<header style="display: flex"><h4 class="tab_title">포상/징계</h4>
								<p data-toggle="modal" data-target="#myModal4" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">일자</span>
										</td>
										<td id="td" class="reason">
											<span class="title_txt">내용</span>
										</td>
										<td id="td" class="cause">
											<span class="title_txt">사유</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${rewardandpunishment[0].rapno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="rap" items="${rewardandpunishment}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="rapno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="rapno" name="info2VoList[${status.index}].rapno" value="${rap.rapno}">
											</td>
											<td id="td" class="rapdivision">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="rapdivision" name="info2VoList[${status.index}].rapdivision" value="${rap.rapdivision}">
											</td>
											<td id="td" class="rapdate">
												<c:set var="raprapdate" value="${rap.rapdate}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="rapdate" name="info2VoList[${status.index}].rapdate" value="${fn:substring(raprapdate,0,10)}">
											</td>
											<td id="td" class="content">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="content" name="info2VoList[${status.index}].content" value="${rap.content}">
											</td>
											<td id="td" class="reason">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="reason" name="info2VoList[${status.index}].reason" value="${rap.reason}">
											</td>
											<td id="td" class="raprm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="raprm" name="info2VoList[${status.index}].raprm" value="${rap.raprm}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete4" onclick="fn_delete4('${rap.rapno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 7}'>show active</c:if>" id="info7">
						<form action="/ehr/performanceevaluationupdate" method="post" id="performanceevaluationupdate">
							<header style="display: flex"><h4 class="tab_title">인사평가</h4>
								<p data-toggle="modal" data-target="#myModal5" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<!--탭 전체 펼치기시 타이틀 나옴-->
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="year">
											<span class="title_txt">평가년도</span>
										</td>
										<td id="td" class="capability">
											<span class="title_txt">역량</span>
										</td>
										<td id="td" class="result">
											<span class="title_txt">성과</span>
										</td>
										<td id="td" class="evaluator">
											<span class="title_txt">평가자</span>
										</td>
										<td id="td" class="team">
											<span class="title_txt">조직</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${performanceevaluation[0].peno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="pe" items="${performanceevaluation}" varStatus="status">
										<tr class="dataRow" data-id="1" style="text-align: center">
											<td id="td" class="peno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="peno" name="info2VoList[${status.index}].peno" value="${pe.peno}">
											</td>
											<td id="td" class="evaluationyear">
												<c:set var="peevaluationyear" value="${pe.evaluationyear}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="evaluationyear" name="info2VoList[${status.index}].evaluationyear" value="${fn:substring(peevaluationyea,0,10)}">
											</td>
											<td id="td" class="ability">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="ability" name="info2VoList[${status.index}].ability" value="${pe.ability}">
											</td>
											<td id="td" class="achievement">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="achievement" name="info2VoList[${status.index}].achievement" value="${pe.achievement}">
											</td>
											<td id="td" class="rater">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="rater" name="info2VoList[${status.index}].rater" value="${pe.rater}">
											</td>
											<td id="td" class="organization">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="organization" name="info2VoList[${status.index}].organization" value="${pe.organization}">
											</td>
											<td id="td" class="perm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="perm" name="info2VoList[${status.index}].perm" value="${pe.perm}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete5" onclick="fn_delete5('${pe.peno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 8}'>show active</c:if>" id="info8">
						<form action="/ehr/educationupdate" method="post" id="educationupdate">
							<header style="display: flex"><h4 class="tab_title">교육</h4>
								<p data-toggle="modal" data-target="#myModal6" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="class">
											<span class="title_txt">교육과정</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">교육유형</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">교육기관</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${education[0].educationno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="education" items="${education}" varStatus="status">
										<tr class="dataRow" style="text-align: center">

											<td id="td" class="educationno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="educationno" name="info2VoList[${status.index}].educationno" value="${education.educationno}">
											</td>
											<td id="td" class="educationprocess">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="educationprocess" name="info2VoList[${status.index}].educationprocess" value="${education.educationprocess}">
											</td>
											<td id="td" class="educationtype">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="educationtype" name="info2VoList[${status.index}].educationtype" value="${education.educationtype}">
											</td>
											<td id="td" class="startdate">
												<c:set var="educationstartdate" value="${education.startdate}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="startdate" name="info2VoList[${status.index}].startdate" value="${fn:substring(educationstartdate,0,10)}">
												<!--  -->
											</td>
											<td id="td" class="enddate">
												<c:set var="educationenddate" value="${education.enddate}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="enddate" name="info2VoList[${status.index}].enddate" value="${fn:substring(educationenddate,0,10)}">
												<!--  -->
											</td>
											<td id="td" class="educationinstitutions">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="educationinstitutions" name="info2VoList[${status.index}].educationinstitutions" value="${education.educationinstitutions}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete6" onclick="fn_delete6('${education.educationno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 9}'>show active</c:if>" id="info9">
						<form action="/ehr/qualificationupdate" method="post" id="qualificationupdate">
							<header style="display: flex"><h4 class="tab_title">자격</h4>
								<p data-toggle="modal" data-target="#myModal7" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="name">
											<span class="title_txt">자격명</span>
										</td>
										<td id="td" class="number">
											<span class="title_txt">자격번호</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">자격등급</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">기관명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">취득일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">정지일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${qualification[0].qualificationno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="qualification" items="${qualification}" varStatus="status">
										<tr class="dataRow" style="text-align: center">
											<td id="td" class="qualificationno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="qualificationno" name="info2VoList[${status.index}].qualificationno" value="${qualification.qualificationno}">
											</td>
											<td id="td" class="qualificationdivision">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="qualificationdivision" name="info2VoList[${status.index}].qualificationdivision" value="${qualification.qualificationdivision}">
											</td>
											<td id="td" class="qualificationnm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="qualificationnm" name="info2VoList[${status.index}].qualificationnm" value="${qualification.qualificationnm}">
											</td>
											<td id="td" class="qualificationnum">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="qualificationnum" name="info2VoList[${status.index}].qualificationnum" value="${qualification.qualificationnum}">
											</td>
											<td id="td" class="qualificationgrade">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="qualificationgrade" name="info2VoList[${status.index}].qualificationgrade" value="${qualification.qualificationgrade}">
											</td>
											<td id="td" class="institutionsnm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="institutionsnm" name="info2VoList[${status.index}].institutionsnm" value="${qualification.institutionsnm}">
											</td>
											<td id="td" class="acquisitiondate">
												<c:set var="qualificationacquisitiondate" value="${qualification.acquisitiondate}" />
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="acquisitiondate" name="info2VoList[${status.index}].acquisitiondate" value="${fn:substring(qualificationacquisitiondate,0,10)}">
											</td>
											<td id="td" class="stopdate">
												<c:set var="qualificationstopdate" value="${qualification.stopdate}" />
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="stopdate" name="info2VoList[${status.index}].stopdate" value="${fn:substring(qualificationstopdate,0,10)}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete7" onclick="fn_delete7('${qualification.qualificationno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 10}'>show active</c:if>" id="info10">
						<form action="/ehr/languagestudyupdate" method="post" id="languagestudyupdate">
							<header style="display: flex"><h4 class="tab_title" style="">어학</h4>
								<p data-toggle="modal" data-target="#myModal8" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="name">
											<span class="title_txt">어학명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">평가일</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">평가기관</span>
										</td>
										<td id="td" class="score">
											<span class="title_txt">점수</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">등급</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${languagestudy[0].languagestudyno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="languagestudy" items="${languagestudy}" varStatus="status">
										<tr class="dataRow" style="text-align: center">
											<td id="td" class="languagestudyno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="languagestudyno" name="info2VoList[${status.index}].languagestudyno" value="${languagestudy.languagestudyno}">
											</td>
											<td id="td" class="languagestudydivision">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="languagestudydivision" name="info2VoList[${status.index}].languagestudydivision" value="${languagestudy.languagestudydivision}">
											</td>
											<td id="td" class="languagestudynm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="languagestudynm" name="info2VoList[${status.index}].languagestudynm" value="${languagestudy.languagestudynm}">
											</td>
											<td id="td" class="evaluatiodate">
												<c:set var="languagestudyevaluatiodate" value="${languagestudy.evaluatiodate}" />
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="evaluatiodate" name="info2VoList[${status.index}].evaluatiodate" value="${fn:substring(languagestudyevaluatiodate,0,10)}">
												<!--  -->
											</td>
											<td id="td" class="ei">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="ei" name="info2VoList[${status.index}].ei" value="${languagestudy.ei}">
											</td>
											<td id="td" class="score">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="score" name="info2VoList[${status.index}].score" value="${languagestudy.score}">
											</td>
											<td id="td" class="languagestudygrade">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="languagestudygrade" name="info2VoList[${status.index}].languagestudygrade" value="${languagestudy.languagestudygrade}">
											</td>
											<td id="td" class="languagestudyrm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="languagestudyrm" name="info2VoList[${status.index}].languagestudyrm" value="${languagestudy.languagestudyno}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete8" onclick="fn_delete8('${languagestudy.languagestudyno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 11}'>show active</c:if>" id="info11">
						<form action="/ehr/militaryserviceupdate" method="post" id="militaryserviceupdate">
							<header style="display: flex"><h4 class="tab_title">병역</h4>
								<p data-toggle="modal" data-target="#myModal9" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="class">
											<span class="title_txt">군벌</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">계급</span>
										</td>
										<td id="td" class="number">
											<span class="title_txt">군번</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">전역구분</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">입대일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">제대일</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타 사유</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${militaryservice[0].militaryno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="militaryservice" items="${militaryservice}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="militaryno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="militaryno" name="info2VoList[${status.index}].militaryno" value="${militaryservice.militaryno}">
											</td>
											<td id="td" class="warload">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="warload" name="info2VoList[${status.index}].warload" value="${militaryservice.warload}">
											</td>
											<td id="td" class="grade">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="grade" name="info2VoList[${status.index}].grade" value="${militaryservice.grade}">
											</td>
											<td id="td" class="dogno">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="dogno" name="info2VoList[${status.index}].dogno" value="${militaryservice.dogno}">
											</td>
											<td id="td" class="dischargediv">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="dischargediv" name="info2VoList[${status.index}].dischargediv" value="${militaryservice.dischargediv}">
											</td>
											<td id="td" class="enlistment">
												<c:set var="militaryserviceenlistment" value="${militaryservice.enlistment}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="enlistment" name="info2VoList[${status.index}].enlistment" value="${fn:substring(militaryserviceenlistment,0,10)}">
												<!--  -->
											</td>
											<td id="td" class="discharge">
												<c:set var="militaryservicedischarge" value="${militaryservice.discharge}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="discharge" name="info2VoList[${status.index}].discharge" value="${fn:substring(militaryservicedischarge,0,10)}">
												<!--  -->
											</td>
											<td id="td" class="militaryrm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="militaryrm" name="info2VoList[${status.index}].militaryrm" value="${militaryservice.militaryrm}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete9" onclick="fn_delete9('${militaryservice.militaryno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 12}'>show active</c:if>" id="info12">
						<form action="/ehr/businesstripupdate" method="post" id="businesstripupdate">
							<header style="display: flex"><h4 class="tab_title">해외출장</h4>
								<p data-toggle="modal" data-target="#myModal10" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 14px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="period">
											<span class="title_txt">기간</span>
										</td>
										<td id="td" class="country">
											<span class="title_txt">출장국가</span>
										</td>
										<td id="td" class="area">
											<span class="title_txt">출장지</span>
										</td>
										<td id="td" class="purpose">
											<span class="title_txt">출장목적</span>
										</td>
										<td id="td" class="purpose">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${businesstrip[0].btno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="businesstrip" items="${businesstrip}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center" style="text-align: center">
											<td id="td" class="btno" style="width: 14px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="btno" name="info2VoList[${status.index}].btno" value="${businesstrip.btno}">
											</td>
											<td id="td" class="period">
												<div class="date_wrap">
													<c:set var="businesstripterms" value="${businesstrip.terms}" />
													<input type="date" style="width: 40%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="terms" name="info2VoList[${status.index}].terms" value="${fn:substring(businesstripterms,0,10)}"> <span class="date_wave">~</span>
													<c:set var="businesstripterme" value="${businesstrip.terme}" />
													<input type="date" style="width: 40%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="terme" name="info2VoList[${status.index}].terme" value="${fn:substring(businesstripterme,0,10)}">
												</div>
											</td>
											<td id="td" class="country">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="country" name="info2VoList[${status.index}].country" value="${businesstrip.country}">
											</td>
											<td id="td" class="chuljangji">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="chuljangji" name="info2VoList[${status.index}].chuljangji" value="${businesstrip.chuljangji}">
											</td>
											<td id="td" class="destination">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="destination" name="info2VoList[${status.index}].destination" value="${businesstrip.destination}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete10" onclick="fn_delete10('${businesstrip.btno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 13}'>show active</c:if>" id="info13">
						<form action="/ehr/degreeupdate" method="post" id="degreeupdate">
							<header style="display: flex"><h4 class="tab_title">학력</h4>
								<p data-toggle="modal" data-target="#myModal11" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="class">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="school">
											<span class="title_txt">학교명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">입학년도</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">졸업년도</span>
										</td>
										<td id="td" class="department">
											<span class="title_txt">전공</span>
										</td>
										<td id="td" class="minor">
											<span class="title_txt">부전공</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${degree[0].degreeno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="degree" items="${degree}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="degreeno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="degreeno" name="info2VoList[${status.index}].degreeno" value="${degree.degreeno}">
											</td>
											<td id="td" class="division">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="division" name="info2VoList[${status.index}].division" value="${degree.division}">
											</td>
											<td id="td" class="school">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="school" name="info2VoList[${status.index}].school" value="${degree.school}">
											</td>
											<td id="td" class="enroll">
												<c:set var="degreeenroll" value="${degree.enroll}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="enroll" name="info2VoList[${status.index}].enroll" value="${fn:substring(degreeenroll,0,10)}">
											</td>
											<td id="td" class="graduated">
												<c:set var="degreegraduated" value="${degree.graduated}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="graduated" name="info2VoList[${status.index}].graduated" value="${fn:substring(degreegraduated,0,10)}">
											</td>
											<td id="td" class="major">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="major" name="info2VoList[${status.index}].major" value="${degree.major}">
											</td>
											<td id="td" class="minor">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="minor" name="info2VoList[${status.index}].minor" value="${degree.minor}">
											</td>
											<td id="td" class="degreerm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="degreerm" name="info2VoList[${status.index}].degreerm" value="${degree.degreerm}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete11" onclick="fn_delete11('${degree.degreeno}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade <c:if test='${param.tag eq 14}'>show active</c:if>" id="info14">
						<form action="/ehr/familyupdate" method="post" id="family">
							<header style="display: flex"><h4 class="tab_title">가족</h4>
								<p data-toggle="modal" data-target="#myModal12" class="openCreateInfo">
									<i class="fas fa-plus-circle"></i>
								</p>
							</header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="class">
											<span class="title_txt">가족성명</span>
										</td>
										<td id="td" class="school">
											<span class="title_txt">가족관계</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">성별</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">생년월일</span>
										</td>
										<td id="td" class="department">
											<span class="title_txt">학력</span>
										</td>
										<td id="td" class="minor">
											<span class="title_txt">직업</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">삭제</span>
										</td>
									</tr>
									
									<c:if test="${family[0].familyno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="family" items="${family}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="degreeno" style="width: 30px;">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="familyno" name="info2VoList[${status.index}].familyno" value="${family.familyno}">
											</td>
											<td id="td" class="division">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="familysname" name="info2VoList[${status.index}].familysname" value="${family.familysname}">
											</td>
											<td id="td" class="degreerm">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="familysrelationship" name="info2VoList[${status.index}].familysrelationship" value="${family.familysrelationship}">
											</td>
											<td id="td" class="school">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="gender" name="info2VoList[${status.index}].gender" value="${family.gender}">
											</td>
											<td id="td" class="enroll">
												<c:set var="fmbirthday" value="${family.birthday}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="birthday" name="info2VoList[${status.index}].birthday" value="${fn:substring(fmbirthday,0,10)}">
											</td>
											<td id="td" class="graduated">
												<c:set var="fmeducation" value="${family.education}" />
												<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="education" name="info2VoList[${status.index}].education" value="${fn:substring(fmeducation,0,10)}">
											</td>
											<td id="td" class="major">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="job" name="info2VoList[${status.index}].job" value="${family.job}">
											</td>
											<td id="td" class="minor">
												<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="familyrm" name="info2VoList[${status.index}].familyrm" value="${family.familyrm}">
											</td>
											<td id="td" class="jrresponsibilities">
												<button type="button" id="delete12" onclick="fn_delete12('${family.familysrelationship}')"><i class="fas fa-times"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="page_action_wrap" style="display: block; text-align: center;">
								<button type="submit" id="save" class="btn btn-block btn-primary" style="width: 65px; display: inline-block; margin-top: 8px;">저장</button>
								<button type="button" id="cancel" class="btn btn-block btn-default" style="width: 65px; display: inline-block; margin-top: 8px;">취소</button>
							</div>
						</form>
					</div>
					<div class="tab-pane fade" id="info15" style="min-height: 2300px;">
						<div>
							<header><h4 class="tab_title">기본 정보</h4></header>
							<table class="type_list_box" style="width: 100%; height: 200px;">
								<tbody>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">입사일</span>
										</td>
										<td id="td" class="col2">${si[0].entry2}</td>
										<td id="td" class="col3" id="title">
											<span class="title_txt">직무</span>
										</td>
										<td id="td" class="col4">${si[0].duty}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">직종</span>
										</td>
										<td id="td" class="col6">${si[0].occupation}</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">직군</span>
										</td>
										<td id="td" class="col8">${si[0].jobgroup}</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">채용구분</span>
										</td>
										<td id="td" class="col2">${si[0].recruitmentdiv}</td>
										<td id="td" class="col3" id="title">
											<span class="title_txt">직원구분</span>
										</td>
										<td id="td" class="col4">${si[0].employeediv}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">급여구분</span>
										</td>
										<td id="td" class="col6">${si[0].paydiv}</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">추천자</span>
										</td>
										<td id="td" class="col8">${si[0].recommender}</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">상태</span>
										</td>
										<td id="td" class="col2">${si[0].state}</td>
										<td id="td" class="col3" id="title">
											<span class="title_txt">생년월일</span>
										</td>
										<td id="td" class="col4">${si[0].birthday2}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">성별</span>
										</td>
										<td id="td" class="col6">
										<c:if test="${si[0].gender eq 'MALE'}">남자</c:if>
										<c:if test="${si[0].gender eq 'FEMALE'}">여자</c:if>
										</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">결혼여부</span>
										</td>
										<td id="td" class="col8">
											<c:if test="${si[0].marry eq 'SINGLE'}">미혼</c:if>
											<c:if test="${si[0].marry eq 'MARRIED'}">기혼</c:if>
										</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">장애여부</span>
										</td>
										<td id="td" class="col2">${si[0].obstacle}</td>
										<td id="td" class="col3" id="title">
											<span class="title_txt">보훈여부</span>
										</td>
										<td id="td" class="col4">${si[0].veteran}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">퇴사일</span>
										</td>
										<td id="td" class="col6"></td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">퇴직사유</span>
										</td>
										<td id="td" class="col8">
											<span id="work" name="work" value="">
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div>
						
							<header><h4 class="tab_title">신상 정보</h4></header>
							<table class="type_list_box" style="width: 100%; height: 200px;">
								<tbody>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">취미</span>
										</td>
										<td id="td" class="col2">${si[0].hobby}</td>
										<td id="td" class="col3" id="title">
											<span class="title_txt">특기</span>
										</td>
										<td id="td" class="col4">${si[0].specialty}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">팩스</span>
										</td>
										<td id="td" class="col6">${si[0].fax}</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">취업방법</span>
										</td>
										<td id="td" class="col8">${si[0].employment}</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">주소</span>
										</td>
										<td colspan="5">${si[0].addr}</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">자택번호</span>
										</td>
										<td id="td" class="col8">${si[0].addrno}</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">보훈번호</span>
										</td>
										<td colspan="3">${si[0].veteranno}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">보훈가족</span>
										</td>
										<td id="td" class="col6">${si[0].veteranfamliy}</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">보훈구분</span>
										</td>
										<td id="td" class="col8">${si[0].veterandiv}</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">장애등록번호</span>
										</td>
										<td id="td" class="col2">${si[0].obstacleno}</td>
										<td id="td" class="col3" id="title">
											<span class="title_txt">장애구분</span>
										</td>
										<td id="td" class="col4">${si[0].obstaclediv}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">장애등급</span>
										</td>
										<td id="td" class="col6">${si[0].obstaclegrade}</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">장애인정구분</span>
										</td>
										<td id="td" class="col8">${si[0].obstaclerecdiv}</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">계좌유형</span>
										</td>
										<td id="td" class="col2">${si[0].account}</td>
										<td id="td" class="col3" id="title">
											<span class="title_txt">은행</span>
										</td>
										<td id="td" class="col4">${si[0].bank}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">예금주</span>
										</td>
										<td id="td" class="col6">${si[0].accountholder}</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">비고</span>
										</td>
										<td id="td" class="col8">${si[0].note}</td>
									</tr>
									<tr id="tr">
										<td id="td" class="col1" id="title">
											<span class="title_txt">계좌번호</span>
										</td>
										<td colspan="3">${si[0].accountnumber}</td>
										<td id="td" class="col5" id="title">
											<span class="title_txt">시작일자</span>
										</td>
										<td id="td" class="col6">${si[0].startdate}</td>
										<td id="td" class="col7" id="title">
											<span class="title_txt">종료일자</span>
										</td>
										<td id="td" class="col6">${si[0].enddate}</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<div>
						
							<header><h4 class="tab_title">직무/담당</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="group">
											<span class="title_txt">직군</span>
										</td>
										<td id="td" class="category">
											<span class="title_txt">직종</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">직무</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="percent">
											<span class="title_txt">비중</span>
										</td>
										<td id="td" class="work">
											<span class="title_txt">담당업무</span>
										</td>
									</tr>
									
									<c:if test="${jobresponsibilities[0].jrno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="jsb" items="${jobresponsibilities}" varStatus="status">
										<tr class="dataRow" style="text-align: center">
											<td id="td" class="num" style="width: 30px;">${jsb.jrno}</td>
											<td id="td" class="jopgroup">${jsb.jopgroup}</td>
											<td id="td" class="occupation">${jsb.occupation}</td>
											<td id="td" class="entry">${jsb.jrno}</td>
											<td id="td" class="jrstartdate">
												<c:set var="jsbjrstartdate" value="${jsb.jrstartdate}" />
												 ${fn:substring(jsbjrstartdate,0,10)}
											</td>
											<td id="td" class="jrenddate">
												<c:set var="jsbjrenddate" value="${jsb.jrenddate}" />
												 ${fn:substring(jsbjrenddate,0,10)}
											</td>
											<td id="td" class="importance">${jsb.importance}</td>
											<td id="td" class="jrresponsibilities">${jsb.jrresponsibilities}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
						
						<div>
							<header><h4 class="tab_title">발령</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">발령일</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="reason">
											<span class="title_txt">발령명</span>
										</td>
										<td id="td" class="state">
											<span class="title_txt">직원구분</span>
										</td>
										<td id="td" class="team">
											<span class="title_txt">소속</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">급여단계</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">직책</span>
										</td>
										<td id="td" class="work">
											<span class="title_txt">담당업무</span>
										</td>
									</tr>
									
									<c:if test="${issued[0].issuedno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="issued" items="${issued}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="issuedno" style="width: 30px;">${issued.issuedno}</td>
											<td id="td" class="date">
												<c:set var="issuedissueddate" value="${issued.issueddate}" />
												 ${fn:substring(issuedissueddate,0,10)}
											</td>
											<td id="td" class="issueddivision">${issued.issueddivision}</td>
											<td id="td" class="issuedname">${issued.issuedname}</td>
											<td id="td" class="employeediv">${issued.employeediv}</td>
											<td id="td" class="team">${issued.team}</td>
											<td id="td" class="paystep">${issued.paystep}</td>
											<td id="td" class="position">${issued.position}</td>
											<td id="td" class="issuedresponsibilities">${issued.issuedresponsibilities}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title">경력</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="workplace">
											<span class="title_txt">근무처</span>
										</td>
										<td id="td" class="position">
											<span class="title_txt">직위</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">담당업무</span>
										</td>
										<td id="td" class="period">
											<span class="title_txt">근속기간</span>
										</td>
										<td id="td" class="cause">
											<span class="title_txt">퇴직사유</span>
										</td>
									</tr>
									
									<c:if test="${career[0].careerno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="career" items="${career}" varStatus="status">
										<tr class="dataRow" style="text-align: center">
											<td id="td" class="careerno" style="width: 30px;">${career.careerno}</td>
											<td id="td" class="careerstartdate">
												<c:set var="careercareerstartdate" value="${career.careerstartdate}" />
												 ${fn:substring(careercareerstartdate,0,10)}
											</td>
											<td id="td" class="careerenddate">
												<c:set var="careercareerenddate" value="${career.careerenddate}" />
												 ${fn:substring(careercareerenddate,0,10)}
											</td>
											<td id="td" class="workplace">${career.workplace}</td>
											<td id="td" class="jobposition">${career.jobposition}</td>
											<td id="td" class="responsibilities">${career.responsibilities}</td>
											<td id="td" class="csy">${career.csy}</td>
											<td id="td" class="retirement">${career.retirement}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title">포상/징계</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">일자</span>
										</td>
										<td id="td" class="reason">
											<span class="title_txt">내용</span>
										</td>
										<td id="td" class="cause">
											<span class="title_txt">사유</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									
									<c:if test="${rewardandpunishment[0].rapno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="rap" items="${rewardandpunishment}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="rapno" style="width: 30px;">${rap.rapno}</td>
											<td id="td" class="rapdivision">${rap.rapdivision}</td>
											<td id="td" class="rapdate">
												<c:set var="raprapdate" value="${rap.rapdate}" />
												 ${fn:substring(raprapdate,0,10)}
											</td>
											<td id="td" class="content">${rap.content}</td>
											<td id="td" class="reason">${rap.reason}</td>
											<td id="td" class="raprm">${rap.raprm}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title">인사평가</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="year">
											<span class="title_txt">평가년도</span>
										</td>
										<td id="td" class="capability">
											<span class="title_txt">역량</span>
										</td>
										<td id="td" class="result">
											<span class="title_txt">성과</span>
										</td>
										<td id="td" class="evaluator">
											<span class="title_txt">평가자</span>
										</td>
										<td id="td" class="team">
											<span class="title_txt">조직</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									
									<c:if test="${performanceevaluation[0].peno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="pe" items="${performanceevaluation}" varStatus="status">
										<tr class="dataRow" data-id="1" style="text-align: center">
											<td id="td" class="peno" style="width: 30px;">${pe.peno}</td>
											<td id="td" class="evaluationyear">
												<c:set var="peevaluationyear" value="${pe.evaluationyear}" />
												 ${fn:substring(peevaluationyear,0,10)}
											</td>
											<td id="td" class="ability">${pe.ability}</td>
											<td id="td" class="achievement">${pe.achievement}</td>
											<td id="td" class="rater">${pe.rater}</td>
											<td id="td" class="organization">${pe.organization}</td>
											<td id="td" class="perm">${pe.perm}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title">교육</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="class">
											<span class="title_txt">교육과정</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">교육유형</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">교육기관</span>
										</td>
									</tr>
									
									<c:if test="${education[0].educationno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="education" items="${education}" varStatus="status">
										<tr class="dataRow" style="text-align: center">

											<td id="td" class="educationno" style="width: 30px;">${education.educationno}</td>
											<td id="td" class="educationprocess">${education.educationprocess}</td>
											<td id="td" class="educationtype">${education.educationtype}</td>
											<td id="td" class="startdate">
												<c:set var="educationstartdate" value="${education.startdate}" />
												 ${fn:substring(educationstartdate,0,10)}
												<!--  -->
											</td>
											<td id="td" class="enddate">
												<c:set var="educationenddate" value="${education.enddate}" />
												 ${fn:substring(educationenddate,0,10)}
											</td>
											<td id="td" class="educationinstitutions">${education.educationinstitutions}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title">자격</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="name">
											<span class="title_txt">자격명</span>
										</td>
										<td id="td" class="number">
											<span class="title_txt">자격번호</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">자격등급</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">기관명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">취득일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">정지일</span>
										</td>
									</tr>
									
									<c:if test="${qualification[0].qualificationno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="qualification" items="${qualification}" varStatus="status">
										<tr class="dataRow" style="text-align: center">
											<td id="td" class="qualificationno" style="width: 30px;">${qualification.qualificationno}</td>
											<td id="td" class="qualificationdivision">${qualification.qualificationdivision}</td>
											<td id="td" class="qualificationnm">${qualification.qualificationnm}</td>
											<td id="td" class="qualificationnum">${qualification.qualificationnum}</td>
											<td id="td" class="qualificationgrade">${qualification.qualificationgrade}</td>
											<td id="td" class="institutionsnm">${qualification.institutionsnm}</td>
											<td id="td" class="acquisitiondate">
												<c:set var="qualificationacquisitiondate" value="${qualification.acquisitiondate}" />
												 ${fn:substring(qualificationacquisitiondate,0,10)}
												<!--  -->
											</td>
											<td id="td" class="stopdate">
												<c:set var="qualificationstopdate" value="${qualification.stopdate}" />
												 ${fn:substring(qualificationstopdate,0,10)}
												<!--  -->
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title" style="">어학</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="name">
											<span class="title_txt">어학명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">평가일</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">평가기관</span>
										</td>
										<td id="td" class="score">
											<span class="title_txt">점수</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">등급</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									
									<c:if test="${languagestudy[0].languagestudyno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="languagestudy" items="${languagestudy}" varStatus="status">
										<tr class="dataRow" style="text-align: center">
											<td id="td" class="languagestudyno" style="width: 30px;">${languagestudy.languagestudyno}</td>
											<td id="td" class="languagestudydivision">${languagestudy.languagestudydivision}</td>
											<td id="td" class="languagestudynm">${languagestudy.languagestudynm}</td>
											<td id="td" class="evaluatiodate">
												<c:set var="languagestudyevaluatiodate" value="${languagestudy.evaluatiodate}" />
												 ${fn:substring(languagestudyevaluatiodate,0,10)}
												<!--  -->
											</td>
											<td id="td" class="ei">${languagestudy.ei}</td>
											<td id="td" class="score">${languagestudy.score}</td>
											<td id="td" class="languagestudygrade">${languagestudy.languagestudygrade}</td>
											<td id="td" class="languagestudyrm">${languagestudy.languagestudyno}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title">병역</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="class">
											<span class="title_txt">군벌</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">계급</span>
										</td>
										<td id="td" class="number">
											<span class="title_txt">군번</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">전역구분</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">입대일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">제대일</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타 사유</span>
										</td>
									</tr>
									
									<c:if test="${militaryservice[0].militaryno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="militaryservice" items="${militaryservice}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="militaryno" style="width: 30px;">${militaryservice.militaryno}</td>
											<td id="td" class="warload">${militaryservice.warload}</td>
											<td id="td" class="grade">${militaryservice.grade}</td>
											<td id="td" class="dogno">${militaryservice.dogno}</td>
											<td id="td" class="dischargediv">${militaryservice.dischargediv}</td>
											<td id="td" class="enlistment">
												${fn:substring(militaryserviceenlistment,0,10)}
											</td>
											<td id="td" class="discharge">
												<c:set var="militaryservicedischarge" value="${militaryservice.discharge}" />
												 ${fn:substring(militaryservicedischarge,0,10)}
											</td>
											<td id="td" class="militaryrm">${militaryservice.militaryrm}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title">해외출장</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width:14px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="period">
											<span class="title_txt">기간</span>
										</td>
										<td id="td" class="country">
											<span class="title_txt">출장국가</span>
										</td>
										<td id="td" class="area">
											<span class="title_txt">출장지</span>
										</td>
										<td id="td" class="purpose">
											<span class="title_txt">출장목적</span>
										</td>
									</tr>
									
									<c:if test="${businesstrip[0].btno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="businesstrip" items="${businesstrip}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center" style="text-align: center">
											<td id="td" class="btno" style="width: 14px;">${businesstrip.btno}</td>
											<td id="td" class="period">
												<div class="date_wrap">
													<c:set var="businesstripterms" value="${businesstrip.terms}" />
													 ${fn:substring(businesstripterms,0,10)}<span class="date_wave">~</span>
													<c:set var="businesstripterme" value="${businesstrip.terme}" />
													 ${fn:substring(businesstripterme,0,10)}
												</div>
											</td>
											<td id="td" class="country">${businesstrip.country}</td>
											<td id="td" class="chuljangji">${businesstrip.chuljangji}</td>
											<td id="td" class="destination">${businesstrip.destination}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div>
							<header><h4 class="tab_title">학력</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="class">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="school">
											<span class="title_txt">학교명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">입학년도</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">졸업년도</span>
										</td>
										<td id="td" class="department">
											<span class="title_txt">전공</span>
										</td>
										<td id="td" class="minor">
											<span class="title_txt">부전공</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									
									<c:if test="${degree[0].degreeno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="degree" items="${degree}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="degreeno" style="width: 30px;">${degree.degreeno}</td>
											<td id="td" class="division">${degree.division}</td>
											<td id="td" class="school">${degree.school}</td>
											<td id="td" class="enroll">
												<c:set var="degreeenroll" value="${degree.enroll}" />
												 ${fn:substring(degreeenroll,0,10)}
											</td>
											<td id="td" class="graduated">
												<c:set var="degreegraduated" value="${degree.graduated}" />
												 ${fn:substring(degreegraduated,0,10)}
											</td>
											<td id="td" class="major">${degree.major}</td>
											<td id="td" class="minor">${degree.minor}</td>
											<td id="td" class="degreerm">${degree.degreerm}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
						<div style="margin-bottom: 100px;">
							<header><h4 class="tab_title">가족</h4></header>
							<table class="type_list_box">
								<tbody>
									<tr id="title">
										<td id="td" class="num" style="width: 30px;">
											<span class="title_txt">No</span>
										</td>
										<td id="td" class="name">
											<span class="title_txt"> 가족성명</span>
										</td>
										<td id="td" class="relation">
											<span class="title_txt">가족관계</span>
										</td>
										<td id="td" class="sex">
											<span class="title_txt">성별</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">생년월일</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">학력</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">직업</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									
									<c:if test="${family[0].familyno eq null}">
										<tr>
											<td colspan="9">&nbsp;&nbsp;</td>
										</tr>
									</c:if>
									
									<c:forEach var="family" items="${family}" varStatus="status">
										<tr class="dataRow" data-id="" style="text-align: center">
											<td id="td" class="familyno" style="width: 30px;">${family.familyno}</td>
											<td id="td" class="familysname">${family.familysname}</td>
											<td id="td" class="familysrelationship">${family.familysrelationship}</td>
											<td id="td" class="gender">${family.gender}</td>
											<td id="td" class="birthday">
												<c:set var="familybirthday" value="${family.birthday}" />
												${fn:substring(familybirthday,0,10)}
											</td>
											<td id="td" class="education">${family.education}</td>
											<td id="td" class="job">${family.job}</td>
											<td id="td" class="familyrm">${family.familyrm}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">

					<!-- Modal Header -->
					<form method="post" action="/ehr/jrinsert">
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>
						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="group">
											<span class="title_txt">직군</span>
										</td>
										<td id="td" class="category">
											<span class="title_txt">직종</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">직무</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="percent">
											<span class="title_txt">비중</span>
										</td>
										<td id="td" class="work">
											<span class="title_txt">담당업무</span>
										</td>
									</tr>
									<tr class="dataRow" style="text-align: center">
										<td id="td" class="jopgroup">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jopgroup1" name="jopgroup1" value="">
										</td>
										<td id="td" class="occupation">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="occupation1" name="occupation1" value="">
										</td>
										<td id="td" class="entry">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="entry1" name="entry1" value="">
										</td>
										<td id="td" class="jrstartdate">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jrstartdate1" name="jrstartdate1" value="">
										</td>
										<td id="td" class="jrenddate">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jrenddate1" name="jrenddate1" value="">
										</td>
										<td id="td" class="importance">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="importance1" name="importance1" value="">
										</td>
										<td id="td" class="jrresponsibilities">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasdatepicker" id="jrresponsibilities1" name="jrresponsibilities1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal2">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<!-- Modal Header -->
					<form id="frmJoin" method="post" action="/ehr/issuedinsert">
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="date">
											<span class="title_txt">발령일</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="reason">
											<span class="title_txt">발령명</span>
										</td>
										<td id="td" class="state">
											<span class="title_txt">직원구분</span>
										</td>
										<td id="td" class="team">
											<span class="title_txt">소속</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">급여단계</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">직책</span>
										</td>
										<td id="td" class="work">
											<span class="title_txt">담당업무</span>
										</td>

									</tr>
									<tr class="dataRow" style="text-align: center">
										<td id="td" class="date">
											<input type="Date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="issueddate1" name="issueddate1" value="">
										</td>
										<td id="td" class="issueddivision">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="issueddivision1" name="issueddivision1" value="">
										</td>
										<td id="td" class="issuedname">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="issuedname1" name="issuedname1" value="">
										</td>
										<td id="td" class="employeediv">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="employeediv1" name="employeediv1" value="">
										</td>
										<td id="td" class="team">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="team1" name="team1" value="">
										</td>
										<td id="td" class="paystep">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="paystep1" name="paystep1" value="">
										</td>
										<td id="td" class="position">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="position1" name="position1" value="">
										</td>
										<td id="td" class="issuedresponsibilities">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="issuedresponsibilities1" name="issuedresponsibilities1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<input type="hidden" name="cmmntyNo"> <input type="hidden" name="sbscrberEmpno" value="${empVo.empno}"> <input type="hidden" name="approveEmpno">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal3">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<!-- Modal Header -->
					<form id="frmJoin" method="post" action="/ehr/careerinsert">
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="workplace">
											<span class="title_txt">근무처</span>
										</td>
										<td id="td" class="position">
											<span class="title_txt">직위</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">담당업무</span>
										</td>
										<td id="td" class="period">
											<span class="title_txt">근속기간</span>
										</td>
										<td id="td" class="cause">
											<span class="title_txt">퇴직사유</span>
										</td>
									</tr>
									<tr class="dataRow" style="text-align: center">
										<td id="td" class="careerstartdate">
											<input type="Date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="careerstartdate1" name="careerstartdate1" value="">
										</td>
										<td id="td" class="careerenddate">
											<input type="Date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="careerenddate1" name="careerenddate1" value="">
										</td>
										<td id="td" class="workplace">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="workplace1" name="workplace1" value="">
										</td>
										<td id="td" class="jobposition">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="jobposition1" name="jobposition1" value="">
										</td>
										<td id="td" class="responsibilities">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="responsibilities1" name="responsibilities1" value="">
										</td>
										<td id="td" class="csy">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="csy1" name="csy1" value="">
										</td>
										<td id="td" class="retirement">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="retirement1" name="retirement1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<input type="hidden" name="cmmntyNo"> <input type="hidden" name="sbscrberEmpno" value="${empVo.empno}"> <input type="hidden" name="approveEmpno">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal4">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<!-- Modal Header -->
					<form id="frmJoin" method="post" action="/ehr/rapinsert">
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">일자</span>
										</td>
										<td id="td" class="reason">
											<span class="title_txt">내용</span>
										</td>
										<td id="td" class="cause">
											<span class="title_txt">사유</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									<tr class="dataRow" style="text-align: center">
										<td id="td" class="rapdivision">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="rapdivision1" name="rapdivision1" value="">
										</td>
										<td id="td" class="rapdate">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="rapdate1" name="rapdate1" value="">
										</td>
										<td id="td" class="content">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="content1" name="content1" value="">
										</td>
										<td id="td" class="reason">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="reason1" name="reason1" value="">
										</td>
										<td id="td" class="raprm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="raprm1" name="raprm1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<input type="hidden" name="cmmntyNo"> <input type="hidden" name="sbscrberEmpno" value="${empVo.empno}"> <input type="hidden" name="approveEmpno">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal5">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">

					<form id="frmJoin" method="post" action="/ehr/peinsert">
						<!-- Modal Header -->
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="year">
											<span class="title_txt">평가년도</span>
										</td>
										<td id="td" class="capability">
											<span class="title_txt">역량</span>
										</td>
										<td id="td" class="result">
											<span class="title_txt">성과</span>
										</td>
										<td id="td" class="evaluator">
											<span class="title_txt">평가자</span>
										</td>
										<td id="td" class="team">
											<span class="title_txt">조직</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									<tr class="dataRow" data-id="1" style="text-align: center">
										<td id="td" class="evaluationyear">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="evaluationyear1" name="evaluationyear1" value="">
										</td>
										<td id="td" class="ability">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="ability1" name="ability1" value="">
										</td>
										<td id="td" class="achievement">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="achievement1" name="achievement1" value="">
										</td>
										<td id="td" class="rater">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="rater1" name="rater1" value="">
										</td>
										<td id="td" class="organization">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="organization1" name="organization1" value="">
										</td>
										<td id="td" class="perm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="perm1" name="perm1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal6">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<form id="frmJoin" method="post" action="/ehr/educationinsert">
						<!-- Modal Header -->
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="class">
											<span class="title_txt">교육과정</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">교육유형</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">시작일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">종료일</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">교육기관</span>
										</td>
									</tr>
									<tr class="dataRow" style="text-align: center">
										<td id="td" class="educationprocess">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="educationprocess1" name="educationprocess1" value="">
										</td>
										<td id="td" class="educationtype">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="educationtype1" name="educationtype1" value="">
										</td>
										<td id="td" class="startdate">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="startdate1" name="startdate1" value="">
											<!--  -->
										</td>
										<td id="td" class="enddate">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="enddate1" name="enddate1" value="">
											<!--  -->
										</td>
										<td id="td" class="educationinstitutions">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="educationinstitutions1" name="educationinstitutions1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal7">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">

					<form id="frmJoin" method="post" action="/ehr/qualificationinsert">
						<!-- Modal Header -->
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="name">
											<span class="title_txt">자격명</span>
										</td>
										<td id="td" class="number">
											<span class="title_txt">자격번호</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">자격등급</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">기관명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">취득일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">정지일</span>
										</td>
									</tr>
									<tr class="dataRow" style="text-align: center">
										<td id="td" class="qualificationdivision">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="qualificationdivision1" name="qualificationdivision1" value="">
										</td>
										<td id="td" class="qualificationnm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="qualificationnm1" name="qualificationnm1" value="">
										</td>
										<td id="td" class="qualificationnum">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="qualificationnum1" name="qualificationnum1" value="">
										</td>
										<td id="td" class="qualificationgrade">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="qualificationgrade1" name="qualificationgrade1" value="">
										</td>
										<td id="td" class="institutionsnm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="institutionsnm1" name="institutionsnm1" value="">
										</td>
										<td id="td" class="acquisitiondate">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="acquisitiondate1" name="acquisitiondate1" value="">
											<!--  -->
										</td>
										<td id="td" class="stopdate">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="stopdate1" name="stopdate1" value="">
											<!--  -->
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal8">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<form id="frmJoin" method="post" action="/ehr/languagestudyinsert">
						<!-- Modal Header -->
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="division">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="name">
											<span class="title_txt">어학명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">평가일</span>
										</td>
										<td id="td" class="academy">
											<span class="title_txt">평가기관</span>
										</td>
										<td id="td" class="score">
											<span class="title_txt">점수</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">등급</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									<tr class="dataRow" style="text-align: center">
										<td id="td" class="languagestudydivision">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="languagestudydivision1" name="languagestudydivision1" value="">
										</td>
										<td id="td" class="languagestudynm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="languagestudynm1" name="languagestudynm1" value="">
										</td>
										<td id="td" class="evaluatiodate">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="evaluatiodate1" name="evaluatiodate1" value="">
											<!--  -->
										</td>
										<td id="td" class="ei">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="ei1" name="ei1" value="">
										</td>
										<td id="td" class="score">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="score1" name="score1" value="">
										</td>
										<td id="td" class="languagestudygrade">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="languagestudygrade1" name="languagestudygrade1" value="">
										</td>
										<td id="td" class="languagestudyrm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="languagestudyrm1" name="languagestudyrm1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal9">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<form id="frmJoin" method="post" action="/ehr/militaryinsert">
						<!-- Modal Header -->
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>
						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="class">
											<span class="title_txt">군벌</span>
										</td>
										<td id="td" class="level">
											<span class="title_txt">계급</span>
										</td>
										<td id="td" class="number">
											<span class="title_txt">군번</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">전역구분</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">입대일</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">제대일</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타 사유</span>
										</td>
									</tr>
									<tr class="dataRow" data-id="" style="text-align: center">
										<td id="td" class="warload">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="warload1" name="warload1" value="">
										</td>
										<td id="td" class="grade">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="grade1" name="grade1" value="">
										</td>
										<td id="td" class="dogno">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="dogno1" name="dogno1" value="">
										</td>
										<td id="td" class="dischargediv">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="dischargediv1" name="dischargediv1" value="">
										</td>
										<td id="td" class="enlistment">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="enlistment1" name="enlistment1" value="">
											<!--  -->
										</td>
										<td id="td" class="discharge">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="discharge1" name="discharge1" value="">
											<!--  -->
										</td>
										<td id="td" class="militaryrm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="militaryrm1" name="militaryrm1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal10">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<form method="post" action="/ehr/btinsert">
						<!-- Modal Header -->
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="period">
											<span class="title_txt">기간</span>
										</td>
										<td id="td" class="country">
											<span class="title_txt">출장국가</span>
										</td>
										<td id="td" class="area">
											<span class="title_txt">출장지</span>
										</td>
										<td id="td" class="purpose">
											<span class="title_txt">출장목적</span>
										</td>
									</tr>
									<tr class="dataRow" data-id="" style="text-align: center" style="text-align: center">
										<td id="td" class="period">
											<div class="date_wrap">
												<input type="date" style="width: 40%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="terms1" name="terms1" value=""> <span class="date_wave">~</span> <input type="date" style="width: 40%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="terme1" name="terme1" value="">
											</div>
										</td>
										<td id="td" class="country">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="country1" name="country1" value="">
										</td>
										<td id="td" class="chuljangji">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="chuljangji1" name="chuljangji1" value="">
										</td>
										<td id="td" class="destination">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="destination1" name="destination1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal11">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<!-- Modal Header -->
					<div class="modal-header">
						<div class="communitySubject">
							<h4 class="communityTitle" id="sjMd"></h4>
							<span class="surveyDate" id="dtMd"></span>
						</div>
						<div>
							<span class="status" id="staMd"></span>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
					</div>
					<!-- Modal body -->
					<form method="post" action="/ehr/degreeinsert">
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="class">
											<span class="title_txt">구분</span>
										</td>
										<td id="td" class="school">
											<span class="title_txt">학교명</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">입학년도</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">졸업년도</span>
										</td>
										<td id="td" class="department">
											<span class="title_txt">전공</span>
										</td>
										<td id="td" class="minor">
											<span class="title_txt">부전공</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									<tr class="dataRow" data-id="" style="text-align: center">
										<td id="td" class="division">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="division1" name="division1" value="">
										</td>
										<td id="td" class="school">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="school1" name="school1" value="">
										</td>
										<td id="td" class="enroll">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="enroll1" name="enroll1" value="">
										</td>
										<td id="td" class="graduated">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="graduated1" name="graduated1" value="">
										</td>
										<td id="td" class="major">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="major1" name="major1" value="">
										</td>
										<td id="td" class="minor">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="minor1" name="minor1" value="">
										</td>
										<td id="td" class="degreerm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="degreerm1" name="degreerm1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div class="container">
		<div class="modal fade" id="myModal12">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content" style="width: 1000px;">
					<form id="frmJoin" method="post" action="/ehr/familyinsert">
						<!-- Modal Header -->
						<div class="modal-header">
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
							<div>
								<span class="status" id="staMd"></span>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
						</div>

						<!-- Modal body -->
						<div class="modal-body" style="width: 1000px;">
							<div class="communityContent">
								<table class="table">
									<tr id="title">
										<td id="td" class="name">
											<span class="title_txt"> 가족성명</span>
										</td>
										<td id="td" class="relation">
											<span class="title_txt">가족관계</span>
										</td>
										<td id="td" class="sex">
											<span class="title_txt">성별</span>
										</td>
										<td id="td" class="date">
											<span class="title_txt">생년월일</span>
										</td>
										<td id="td" class="division">
											<span class="title_txt">학력</span>
										</td>
										<td id="td" class="jop">
											<span class="title_txt">직업</span>
										</td>
										<td id="td" class="etc">
											<span class="title_txt">기타</span>
										</td>
									</tr>
									<tr class="dataRow" data-id="" style="text-align: center">
										<td id="td" class="familysname">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="familysname1" name="familysname1" value="">
										</td>
										<td id="td" class="familysrelationship">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="familysrelationship1" name="familysrelationship1" value="">
										</td>
										<td id="td" class="gender">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="gender1" name="gender1" value="">
										</td>
										<td id="td" class="birthday">
											<input type="date" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="birthday1" name="birthday1" value="">
										</td>
										<td id="td" class="education">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="education1" name="education1" value="">
										</td>
										<td id="td" class="job">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="job1" name="job1" value="">
										</td>
										<td id="td" class="familyrm">
											<input type="text" style="width: 100%; border: 0 solid black;" class="txt wfix_small hasDatepicker" id="familyrm1" name="familyrm1" value="">
										</td>
									</tr>
								</table>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div class="divGoCom">
								<button type="submit" class="btn btn-block btn-default">생성</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function fn_delete1(jrno){
		location.href = "/ehr/jobresponsibilitiesdelete?jrno=" + jrno;
	}
	function fn_delete2(issuedno){
		location.href = "/ehr/issueddelete?issuedno=" + issuedno;
	}
	function fn_delete3(careerno){
		location.href = "/ehr/careerdelete?careerno=" + careerno;
	}
	function fn_delete4(rapno){
		location.href = "/ehr/rewardandpunishmentdelete?rapno=" + rapno;
	}
	function fn_delete5(peno){
		location.href = "/ehr/performanceevaluationdelete?peno=" + peno;
	}
	function fn_delete6(educationno){
		location.href = "/ehr/educationdelete?educationno=" + educationno;
	}
	function fn_delete7(qualificationno){
		location.href = "/ehr/qualificationdelete?qualificationno=" + qualificationno;
	}
	function fn_delete8(languagestudyno){
		location.href = "/ehr/languagestudydelete?languagestudyno=" + languagestudyno;
	}
	function fn_delete9(militaryno){
		location.href = "/ehr/militaryservicedelete?militaryno=" + militaryno;
	}
	function fn_delete10(btno){
		location.href = "/ehr/businesstripdelete?btno=" + btno;
	}
	function fn_delete11(degreeno){
		location.href = "/ehr/degreedelete?degreeno=" + degreeno;
	}
	function fn_delete12(familyno){
		location.href = "/ehr/familydelete?familyno=" + familyno;
	}

	$(function() {
		fn_getFullTime();
		fn_getTime();
		setInterval(fn_getFullTime, 1000);
		setInterval(fn_getTime, 1000);
	});

	//현재 시각
	var now = new Date();

	// 년/월/일/요일/시/분/초 구하기
	var year = now.getFullYear();
	var month = now.getMonth() + 1;
	var date = now.getDate();
	var date1 = year + "." + month + "." + date;
	var dayInt = now.getDay();

	function fn_getFullTime() {
		// 요일(숫자)을 요일(한글)로 바꾸기
		var week = new Array("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일");
		var dayStr = week[dayInt]; // 일요일
		var day = dayStr.substring(0, 1); // 일

		// 시/분/초
		var hour = now.getHours();
		var min = now.getMinutes();
		var sec = now.getSeconds();

		if (hour < 10) {
			hour = "0" + hour;
		}
		if (min < 10) {
			min = "0" + min;
		}
		if (sec < 10) {
			sec = "0" + sec;
		}

		var currentDay = year + "년 " + month + "월 " + date + "일 " + "(" + day
				+ ") ";

		$(".Today").text(currentDay);
	}

	// 시/분/초만 구하기
	function fn_getTime() {
		var now = new Date();

		// 시/분/초
		var hour = now.getHours();
		var min = now.getMinutes();
		var sec = now.getSeconds();

		if (hour < 10) {
			hour = "0" + hour;
		}
		if (min < 10) {
			min = "0" + min;
		}
		if (sec < 10) {
			sec = "0" + sec;
		}

		var currentTime = hour + ":" + min + ":" + sec;
		$("#sysdate").text(currentTime);
	}

	//시/분/초만 구하기
	var now = new Date();

	// 시/분/초
	var hour = now.getHours();
	var min = now.getMinutes();
	var sec = now.getSeconds();

	if (hour < 10) {
		hour = "0" + hour;
	}
	if (min < 10) {
		min = "0" + min;
	}
	if (sec < 10) {
		sec = "0" + sec;
	}

	var currentTime = hour + ":" + min + ":" + sec;

	//console.log(currentTime);

	$("#today").click(function() {
		$("#time").text(Time);
	});


	// 쿠키 설정
	var _rolling_interval = 10;
	$(document).ready(
			function() {
				////////////////////////////////////////

				function setCookie(cName, cValue, expiredays) {
					var today = new Date();
					today.setDate(today.getDate() + expiredays);
					document.cookie = cName + "=" + escape(cValue)
							+ "; path=/; expires=" + today.toGMTString() + ";"
				}

				function getCookie() {
					// userid 쿠키에서 id 값을 가져온다.
					var cook = document.cookie + ";";
					var key = 'hcn_total_dashbd';
					var idx = cook.indexOf(key, 0);
					var val = "";

					if (idx != -1) {
						cook = cook.substring(idx, cook.length);
						begin = cook.indexOf("=", 0) + 1;
						end = cook.indexOf(";", begin);
						val = unescape(cook.substring(begin, end));
					}

					// 가져온 쿠키값이 있으면
					if (val != "") {
						$("#select").val(val);
						_rolling_interval = val;
					} else {
						$("#select").val(_rolling_interval);
					}
				}
				getCookie();

				$("#select").change(function(e) {
					var _rolling_interval = $(this).val();
					setCookie("hcn_total_dashbd", _rolling_interval, 7);

					$("time").text(_rolling_interval);
				});

				$("time").text(_rolling_interval);

				////////////////////////////////////////

			});
// 	$("#all").click(function() {
// 		$("#tab-content").hide();
// 		$("#info15").show();
// 	});
// 	$("#infomation1").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation2").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation3").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation4").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#info5").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#info6").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation7").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation8").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation9").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation10").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation11").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation12").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation13").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
// 	$("#infomation14").click(function() {
// 		$("#tab-content").show();
// 		$("#info15").hide();
// 	});
	
	console.log($("#enlistment"))
	$('#marryid').val('${si[0].marry}').prop("selected",true);
	$('#gender').val('${si[0].gender}').prop("selected",true);
	$('#recruitmentdiv').val('${si[0].recruitmentdiv}').prop("selected",true);
	$('#obstacle').val('${si[0].obstacle}').prop("selected",true);
	$('#veteran').val('${si[0].veteran}').prop("selected",true);

	$("#sample").click(function() {
		$("#entry").val("2021-01-01");
		$("#Duty").val("SampleData");
		$("#occupation").val("SampleData");
		$("#jobgroup").val("SampleData");
		$("#recruitmentdiv").val("NEW").prop("selected",true);
		$("#employeediv").val("SampleData");
		$("#paydiv").val("SampleData");
		$("#recommender").val("SampleData");
		$("#state").val("SampleData");
		$("#birthday").val("2021-01-01");
		$("#lunarcalendar").val("SOLAR").prop("selected",true);
		$("#gender").val("MALE").prop("selected",true);
		$("#marryid").val("SINGLE").prop("selected",true);
		$("#obstacle").val("Y").prop("selected",true);
		$("#veteran").val("Y").prop("selected",true);
		$("#work").val("SampleData");
	});
	
</script>
</html>