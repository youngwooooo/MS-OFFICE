<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- 공통 css -->
<style>
   .left-menu-list {position: absolute; border-right: 1px solid #dee2e6; height: 100%; width: 260px; float: left;}
   .lefr-menu-list-content{margin-left: 260px; padding-left: 10px; padding-right: 10px; display: flex;}
   .left-menu-list a {color : black;}
   .left-menu-list a:hover {color: black;}
   
   .menu-name {padding: 20px 20px 10px 20px;}
   .menu-create {padding: 0px 20px 20px 20px;}
   .menu-list {padding: 0px 20px 20px 20px;}
   #btCreateBoard {width: 100%; height: 60px; border-color: black; background-color: white;}
   #btCreateBoard:hover {box-shadow: 0px 5px 15px #dddddd;}
   #btCreateBoard > span {font-size: 1rem;}
   
   .menu-list .menu-list-ul {list-style: none; padding-left: 0px; margin-bottom: 0px;}
   .menu-list li {padding-left: 40px; margin-top: 3px;}
   .menu-list li:hover {background-color: #f7f8f9;}
   .menu-list span {font-size: 0.9rem;}
   
   .card{
      margin-right: 10px; 
      width: 500px;
       height: 235px;
   }
   
   .fontsz{font-size: 1.5em;}   
   .float-right{padding-top: 5px;}
   
   .statusIng {
       border: 1px solid #ff616b;
       background-color: #ff616b;
       color: white;
       font-size: 0.7rem;
       padding: 3px;
       font-weight: bold;
       border-radius: 3px;
    }
    
    .statusEnd {
       border: 1px solid #c2c4c8;
       background-color: #c2c4c8;
       color: white;
       font-size: 0.7rem;
       padding: 3px;
       font-weight: bold;
       border-radius: 3px;
    }
    .card-header {
    	border-bottom: none;
    }
</style>
<script type="text/javascript">
   // ' > 메뉴 ' 클릭 시, 아이콘 변경 및 ul 토글
   $(function(){
      $(".toggle-menu-list").click(function(e){
         e.preventDefault();
         $(this).find("i").toggleClass("fas fa-angle-down mr-2 fas fa-angle-right mr-2");
         $(this).next().slideToggle();
      });
      
   });
</script>
<div id="body">
   <div class="left-menu">
      <div class="left-menu-list">
         <div class="menu-name"><h2><a href="/bogo/home">보고</a></h2></div>
         <div class="menu-create">
            <a href="/bogo/add"><button id="btCreateBoard" type="button" class="btn btn-default" >+보고서 추가</button></a>
         </div>
         <div class="menu-list">
            <a href="" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>MS그룹 보고서</strong></a>
            <ul class="menu-list-ul">
         <c:forEach var="item" items="${select}" end="9">
               <li>
                  <a href="/bogo/list"><span>${item.sj}</span></a>
               </li>
         </c:forEach>
            </ul>
         </div>
         <div class="menu-list">
            <a href="" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>완료된 보고서</strong></a>
            <ul class="menu-list-ul">
         <c:forEach var="list" items="${complete}" end="9" >
               <li>
                  <a href="/bogo/ApproveMenu"><span>${list.sj}</span></a>
               </li>
         </c:forEach>
            </ul>
         </div>
         <div class="menu-list">
            <a href="" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>보고중인 보고서</strong></a>
            <ul class="menu-list-ul">
         <c:forEach var="list" items="${nobogo}" end="9" >
               <li>
                  <a href="/bogo/bogoing"><span>${list.sj}</span></a>
               </li>
         </c:forEach>
            </ul>
         </div>
      </div>
   </div>
         </div>
   <div class="right-menu" >
      <div class="lefr-menu-list-content">
            <div class="menu-name"><h2>보고 홈</h2></div>
      </div>
    <c:set var="i" value="0" />
					
						
						 
	<div class="lefr-menu-list-content">
		<div style="width:100%;word-break:break-all;word-wrap:break-word;">
		<c:forEach var="list" items="${select}" varStatus="stat" end="9">	
				<div class="card-header" style="width:40%;float:left;">
							<div class="card">
								<div>
									<b class="fontsz">${list.sj} </b> <a class="float-right">${list.writngTm2}</a>
								</div>
								<i class="fas fa-users">${list.department}</i>
								<hr>
								<div class="card-body">
									<div class="cen">
										<h6 class="card-title">부서 &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp;${list.department}</h6>
										<span class="float-right"></span>
									</div>
									<c:set var="bogozaChk" value="false"/>
									<p class="card-text">보고자 &nbsp; &nbsp; &nbsp;
									<c:set var="count" value="0" />
									<c:forEach var="bogoza" items="${bogozaList}">
										<c:set var="listNo" value="${bogoza.reprtListNo}" />
										<c:if test="${listNo eq list.reprtListNo}">
											 <c:if test="${count eq 0}">
											 	<c:out value="${bogoza.reportrNm}" />
											 </c:if>
											 <c:if test="${count ne 0}">
											 	<c:out value=", ${bogoza.reportrNm}" />
											 </c:if>
											 <c:if test="${empVo.empno eq bogoza.reportrEmpno}">
											 	<c:set var="bogozaChk" value="true"/>
											 </c:if>
											 <c:set var="count" value="${count + 1}" />
										</c:if>
									</c:forEach>
									</p>
									
									<c:if test="${bogozaChk eq true }">
										<a href="/bogo/insert?reprtListNo=${list.reprtListNo}"
											class="btn btn-primary">보고하기</a>
										<c:set var="bogozaChk" value="false"/>
									</c:if>
								</div>
							</div>
				</div>
	</c:forEach>
<%-- 	${stat.count mod 2} --%>
<%-- 		<c:if test="${stat.count mod 2 ==0}">  --%>
<!-- 			<br /> -->
<%-- 		</c:if> --%>
	</div>
</div><!-- 오른쪽 네비 -->
</div>
<div class="lefr-menu-list-content">
	<br>
	<div class="menu-name">
	<hr>
		<h2 style="position: relative; left: 450px;">최근 생성된 보고서</h2>
		<br>
		<div class="dataTables_wrapper" id="recent_list" >
			<!-- 테이블 -->
			<br>
			<div id="recentList_wrapper" class="dataTables_wrapper" role="grid">
				<div id="recentList_processing" class="dataTables_processing"
					style="visibility: hidden;">Loading...</div>
				<table class="type_normal tb_lately_report dataTable"
					id="recentList" style="width: 100%; margin-bottom: 0px;" border="1">
				
					<thead>
						<tr role="row">
							<th class="part sorting_disabled" role="columnheader" rowspan="1"
								colspan="1" aria-label="부서" style="width: 325px;"><span
								class="title_sort">부서</span></th>
							<th class="folder_type sorting_disabled" role="columnheader"
								rowspan="1" colspan="1" aria-label="보고서" style="width: 371px;"><span
								class="title_sort">제목</span></th>
							<th class="subject sorting_disabled" role="columnheader"
								rowspan="1" colspan="1" aria-label="제목" style="width: 466px;"><span
								class="title_sort">보고일</span></th>
							
						</tr>
					</thead>
						<c:forEach var="list" items="${select}" end="9">
					<tbody role="alert" aria-live="polite" aria-relevant="all">
						<tr class="odd">
							<td class="part">${list.department}</td>
							<td class="folder_type"><span data-id="228"
								style="cursor: pointer;"> ${list.sj}</span></td>
							<td class="subject"><span class="detail" data-id="9416"
								data-series-id="1800" data-type="PERIODIC"
								style="cursor: pointer;">${list.writngTm2}</span></td>
							
						</tr>
					</tbody>
					</c:forEach>
				</table>
			</div>
			<!-- //테이블 -->
		</div>
	</div>
</div>