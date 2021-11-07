<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.navbar-nav .dropdown-menu {width: 300px;}
	#detailSerach {top: 25px; left: 650px;}
	#detailSerach .modal-body td {font-size: 0.9rem; font-weight: bold;}
	#detailSerach .modal-body input {font-size: 0.8rem;}
	#detailSerach #btnSearch {background-color: lightskyblue; border-color: lightskyblue;}
	
	.imgHide {display: none;}
	
	.noneAlarm {font-size: 0.8rem; color: #888;}
	.alarmList a:hover {cursor: pointer;}
</style>
<script type="text/javascript">
	$(function(){
		$(".menu-open-close").on("click", function(){
			$("aside .brand-link").toggle(function(){
				$("aside .brand-link").addClass(".imgHide ");
			}, function(){
				$("aside .brand-link").removeClass(".imgHide ");
			});
		});
		
		$.ajax({
			url : "/alarm/getAlarmList"
			, type : "post"
			, data : {"empno" : "${sessionScope.empVo.empno}"}
			, success : function(alarmList){
				console.log(alarmList);
				
				if(alarmList.length > 0){
					var newCheck = '<span class="badge badge-warning navbar-badge" style="top: 4px; right: 1px; color: white; background-color: red;">NEW</span>';
					$(".newCheck").append(newCheck);
					
					for(var i=0; i<alarmList.length; i++){
						if(alarmList[i].docCategory == 'SURVEY'){
							
							var str =`
								<a onclick="fn_editNewAt(`+ alarmList[i].newNo +`, '`+alarmList[i].docCategory+`', `+ alarmList[i].docNo + `)" class="dropdown-item" style="font-size: 0.8rem; text-align: left; overflow: hidden;">
				            	 	<span style="float: left;"><i class="fas fa-chart-pie mr-2"></i></span><p style="margin-left: 20px;">'`+alarmList[i].newCn+`' 이(가) 완료되었습니다.</p>
				            	 	<span style="float: left; color: #888; padding-left: 20px;">`+ alarmList[i].wrtingDt +`</span>
				          		</a>`;
				          		
							$(".alarmList").append(str);  
						}
						if(alarmList[i].docCategory == 'EA'){
							var str =`
								<a onclick="fn_editNewAt(`+ alarmList[i].newNo +`, '`+alarmList[i].docCategory+`', `+ alarmList[i].docNo + `)" class="dropdown-item" style="font-size: 0.8rem; text-align: left; overflow: hidden;">
				            	 	<span style="float: left;"><i class="fab fa-accusoft"></i></span><p style="margin-left: 20px;">`+alarmList[i].newCn+`</p>
				            	 	<span style="float: left; color: #888; padding-left: 20px;">`+ alarmList[i].wrtingDt +`</span>
				          		</a>`;
				          		
							$(".alarmList").append(str);
						}
						if(alarmList[i].docCategory == 'EMAIL'){
							
							var str =`
								<a onclick="fn_editNewAt(`+ alarmList[i].newNo +`, '`+alarmList[i].docCategory+`', `+ alarmList[i].docNo + `)" class="dropdown-item" style="font-size: 0.8rem; text-align: left; overflow: hidden;">
				            	 	<span style="float: left;"><i class="fas fa-envelope mr-2"></i></span><p style="margin-left: 20px;">'`+alarmList[i].newCn+`' 이(가) 도착했습니다.</p>
				            	 	<span style="float: left; color: #888; padding-left: 20px;">`+ alarmList[i].wrtingDt +`</span>
				          		</a>`;
				          		
							$(".alarmList").append(str);  
						}
					}
				}else {
					var str = '<a href="#" class="dropdown-item">'
			            	+ 	'<p class="noneAlarm">새로운 알람이 없습니다.</p>'
			          		+ '</a>';
			        $(".alarmList").append(str);  		
			          		
				}
			}
		});
		
	});
	
	function fn_editNewAt(newNo, docCategory, docNo){
		$.ajax({
			url : "/alarm/editNewAt"
			, type : "post"
			, data : {"newNo" : newNo}
			, success : function(result){
				if(result > 0){
					if(docCategory == "SURVEY"){
						location.href = "/survey/detail/" + docNo;
					}
					if(docCategory == "EA"){
						location.href = "/EA/document/detail?drftNo=" + docNo;
					}
					if(docCategory == "EMAIL"){
						location.href = "/mail/mailDetail?emailNo=" + docNo;
					}
				}
			}
		});
	}
</script>
<div id="header">
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link menu-open-close" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    
      <!-- Navbar Search -->
<!--       <li class="nav-item"> -->
<!--       <div class="input-group"> -->
<!--         <input type="search" class="form-control" placeholder="통합검색"> -->
<!--         <div class="input-group-append"> -->
<!--             <button type="button" class="btn btn-default" data-toggle="modal" data-target="#detailSerach"><i class="fas fa-caret-down"></i></button> -->
<!--             <button type="submit" class="btn btn-default"> -->
<!--                 <i class="fa fa-search"></i> -->
<!--             </button> -->
<!--         </div> -->
<!--        </div> -->
<!--       </li> -->
      
      <!-- 알람 -->
      <li class="nav-item dropdown">
        <a class="nav-link newCheck" data-toggle="dropdown" href="#">
          <i class="far fa-bell" style="font-size: 1.5rem;"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">알람</span>
          <div class="dropdown-divider"></div>
          <div class="alarmList" style="text-align: center;">
          </div>
        </div>
      </li>

      <!-- 프로필  사진 -->
      <li class="nav-item dropdown">
        <a class="nav-link" href="#" data-toggle="dropdown" style="padding-left: 10px;">
          <img src="/reload?fileNo=${sessionScope.empVo.fileNo}" alt="프로필" style=" width: 40px; height: 40px; border-radius: 40px; margin-top: -10px;">
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="min-width: 0px;">
          <div class="dropdown-divider"></div>
          <a href="/mypage/${sessionScope.empVo.empno}" class="dropdown-item">
            <i class="fas fa-user mr-2"></i><span style="font-size: 0.8rem;">마이페이지</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="/logout" class="dropdown-item">
            <i class="fas fa-sign-out-alt mr-2"></i><span style="font-size: 0.8rem;">로그아웃</span>
          </a>
          <div class="dropdown-divider"></div>
        </div>
      </li>
    </ul>
  </nav>
  
  	<!-- 검색 모달창 -->
<!-- 	<div class="modal" id="detailSerach"> -->
<!-- 		<div class="modal-dialog"> -->
<!-- 			<div class="modal-content"> -->
<!-- 				Modal Header -->
<!-- 				<div class="modal-header"> -->
<!-- 					<h5 class="modal-title">상세검색</h5> -->
<!-- 					<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 				</div> -->
	
<!-- 				Modal body -->
<!-- 				<div class="modal-body"> -->
<!-- 					<form> -->
<!-- 						<table> -->
<%-- 							<colgroup> --%>
<%-- 								<col width="100px"> --%>
<%-- 								<col width="auto"> --%>
<%-- 							</colgroup> --%>
<!-- 							<tr> -->
<!-- 								<td>검색어</td> -->
<!-- 								<td><input name="keyword" class="form-control" type="text"></td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>기간</td> -->
<!-- 								<td style="display: flex;"><input name="searchStartDate" class="form-control" type="date" style="margin-right: 10px;"><span style="padding-top: 10px;">~</span><input name="searchEndDate" class="form-control" type="date" style="margin-left: 10px;"></td> -->
<!-- 							</tr> -->
<!-- 						</table> -->
<!-- 					</form> -->
<!-- 				</div> -->
	
<!-- 				Modal footer -->
<!-- 				<div class="modal-footer"> -->
<!-- 					<button id="btnSearch" type="button" class="btn btn-primary" data-dismiss="modal">검색</button> -->
<!-- 					<button id="btnCancel" type="button" class="btn btn-default" data-dismiss="modal">취소</button> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
</div>

