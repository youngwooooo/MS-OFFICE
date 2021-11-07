<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


#btCreateBoard {
	width: 100%;
	height: 60px;
	border-color: black;
	background-color: white;
}

#btCreateBoard:hover {
	box-shadow: 0px 5px 15px #dddddd;
}

#btCreateBoard>span {
	font-size: 1rem;
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


#table td {
	border-color: white;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum, AppleGothic, Helvetica, sans-serif;
	padding: 10px;
	border: 1px solid #dddddd;
}

.ehr_stat_data {font-size: 0.9rem;}


#change {
	font-size: 14px;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	letter-spacing: -0.5px;
	word-break: break-all;
	display: inline-block;
	font-weight: 500;
}

#info {
	font-size: 14px;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	letter-spacing: -0.5px;
	font-weight: normal;
	word-break: break-all;
}

#day_area {
	font-size: 14px;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	letter-spacing: -0.5px;
	font-weight: normal;
	word-break: break-all;
	margin: 0;
	padding: 0;
	margin-top: -1px;
}

#table {
	text-align: center;
	width: 100%;
	border-bottom: 1px solid #dddddd;
	border-top: 1px solid #dddddd;
}

#table thead tr {border-bottom: 1px solid #dddddd; font-size: 0.9rem; font-weight: bold}

.workTable {font-size: 0.9rem;}

header {padding: 20px;}

#weekToggle:hover {cursor: pointer;}

section {border-bottom: 1px solid #dddddd; padding-top: 20px; padding-bottom: 15px;}

section p {margin: 0px;}

.tb_optional {font-size: 0.9rem; padding-top: 10px; color: #888; font-weight: bold;}

.total {font-weight: bold;}

#profile {width: 60px; height: 50px; border-radius: 50%;}

</style>

<body>
	<div id="body">
		<div class="left-menu">
			<div class="lefr-menu-list-content">
				<!-- 메뉴에 따른 내용 -->
				<header>
					<h4>내 연차내역</h4>
				</header>
				<div style="text-align: center">
					<h2>
						<span id="time" style="font-size: 1.3em"> </span>
					</h2>
				</div>
				<div style="padding: 20px 20px 20px 20px;"> 
					<table class="type_list_box" id="table">
						<colgroup>
							<col width="250px">
							<col width="auto">
							<col width="auto">
							<col width="auto">
						</colgroup>
						<tbody>
							<tr class="ehr_stat_data">
								<td rowspan="2">
									<img id="profile" src="/reload?fileNo=${sessionScope.empVo.fileNo}">
									<span class="empNm" style="font-weight: bold;">${empVo.nm}&nbsp;${sessionScope.empVo.ofcpsNm}</span>
								</td>
								<td class="stat_tit">총 연차</td>
								<td class="stat_tit">사용 연차</td>
								<td class="stat_tit">잔여 연차</td>
							</tr>
							<tr class="ehr_stat_data month_data">
								<td class="stat_txt" id="totalVacation"><c:if test="${ve[0].totalVacation eq null}"> - </c:if>${ve[0].totalVacation}</td>
								<td class="stat_txt" id="vcatnDe">
									${vv[0].vcatnDe}
								</td>
								<td class="stat_txt" id="Remaining"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<header style="margin-top: 100px;">
					<h4>사용 내역</h4>
				</header>
				<div style="padding: 0px 20px 20px 20px;">
					<table id="table" style="text-align: center; width: 100%;">
						<thead>
							<tr id="tr">
								<td id="td">이름</td>
								<td id="td">부서명</td>
								<td id="td">휴가 종류</td>
								<td id="td">연차 사용기간</td>
								<td id="td">사용 연차</td>
								<td id="td">비고</td>
							</tr>
						</thead>
						<tbody>
							<c:if test="${vs[0].vcatnNm eq null}">
								<tr>
									<td colspan="6">
										&nbsp;&nbsp;
									</td>
								</tr>
							</c:if>
							<c:forEach var="vacation" items="${vs}">
								<tr id="tr">
									<td id="td">${empVo.nm}</td>
									<td id="td">MS그룹</td>
									<td id="td">${vacation.vcatnNm}</td>
									<c:set var="beginDe" value="${vacation.beginDe}" />
									<c:set var="endDe" value="${vacation.endDe}" />
									<td id="td">${fn:substring(beginDe,0,10)}~${fn:substring(endDe,0,10)}</td>
									<td id="td">${vacation.vcatnDe}</td>
									<td id="td">${vacation.rm}</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
				</div>
				<header style="margin-top: 100px;">
					<h4>승인 대기</h4>
				</header>
				<div style="padding: 0px 20px 20px 20px;">
					<table id="table" style="text-align: center; width: 100%;">
						<thead>
							<tr id="tr">
								<td id="td">이름</td>
								<td id="td">부서명</td>
								<td id="td">휴가 종류</td>
								<td id="td">연차 사용기간</td>
								<td id="td">사용 연차</td>
								<td id="td">비고</td>
							</tr>
						</thead>
						<tbody>
							<c:if test="${vsing[0].vcatnNm eq null}">
								<tr>
									<td colspan="6">
										&nbsp;&nbsp;
									</td>
								</tr>
							</c:if>
							<c:forEach var="vacationing" items="${vsing}">
								<tr id="tr">
									<td id="td">${empVo.nm}</td>
									<td id="td">MS그룹</td>
									<td id="td">${vacationing.vcatnNm}</td>
									<c:set var="beginDeing" value="${vacationing.beginDe}" />
									<c:set var="endDeing" value="${vacationing.endDe}" />
									<td id="td">${fn:substring(beginDeing,0,10)}~${fn:substring(endDeing,0,10)}</td>
									<td id="td">${vacationing.vcatnDe}</td>
									<td id="td">${vacationing.rm}</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	if($("#vcatnDe").text() == "\n\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t"){
		$("#vcatnDe").text(0);
	}
	
	$("#Remaining").text($("#totalVacation").text() - $("#vcatnDe").text())
	
	if($("#Remaining").text() == 'NaN'){
		$("#Remaining").text(0);
	}

	var now = new Date();

		// 년/월/일/요일
		var Time = (now.getFullYear()) + "." + (now.getMonth() + 1) + "." + (now.getDate());
		$("#time").text(Time);
		
</script>
</html>