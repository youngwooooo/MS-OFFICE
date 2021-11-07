<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.left-menu .addType {color: #888; margin-top: 10px; margin-left: 15px; font-size: 0.9rem;}
	.left-menu .addType span:hover {cursor: pointer; color: black;}
	.left-menu .categoryNm {margin-left: 5px;}
	.left-menu .categoryNm:hover {cursor: pointer;}
	.left-menu .catergoryColor {float: right;}
	.left-menu .editCategory {color: #888; float: right;}
	.left-menu .cancelCategory, .deleteCategory {color: #cdcdcd; font-size: 0.8rem; display: none;}
	.left-menu .cancelCategory:hover, .deleteCategory:hover {cursor: pointer;} 
	
	.left-menu .editCategory:hover, .deleteCategory:hover {cursor: pointer;}
	.left-menu .editCategoryUl {list-style: none; padding: 0px;}
	.left-menu .editCategoryDiv {padding: 20px 20px 20px 20px; font-size: 0.9rem; background-color: #f7f7f7;}
	.left-menu .editCategoryDiv .menuTitle {font-weight: bold;}
	 

	#calendar {padding: 30px;}
	#calendar a {color: black;}
	#calendar .fc-header-toolbar {font-size: 0.9rem;}
	#calendar .fc-event-main:hover {cursor: pointer;}
	#calendar .fc-header-toolbar .fc-toolbar-title	{display: inline; font-size: 1.5rem;}
	#calendar .fc-header-toolbar .fc-today-button:disabled {background-color: white; border-color: #dddddd; color: black;}
	#calendar .fc-header-toolbar .fc-today-button {background-color: #009dff; color: white; border-color: #009dff; box-shadow: none;}
	#calendar .fc-header-toolbar .fc-prev-button {margin-bottom: 5px; margin-right: 25px; background-color: white; border-color: white; color: #888; box-shadow: none;}
	#calendar .fc-header-toolbar .fc-prev-button:hover {border-color: #dddddd;}
	#calendar .fc-header-toolbar .fc-next-button {margin-bottom: 5px; margin-left: 25px; background-color: white; border-color: white; color: #888; box-shadow: none;}
	#calendar .fc-header-toolbar .fc-next-button:hover {border-color: #dddddd;}
	#calendar .fc-button-group .fc-button-active {background-color: #009dff; border-color: #009dff; color: white;}
	#calendar .fc-button-group button {background: white; border: 1px solid #dddddd; color: black; box-shadow: none;}
	#calendar .fc-daygrid-day:hover {background-color: #f5f5f5;}
	#calendar .fc-daygrid-day-events:hover {cursor: pointer;}
	
	#selectedSchedule, #createSchedule {left: 100px; font-size: 0.9rem;}
	#selectedSchedule input, #createSchedule input, #createCategory input {height: 30px;}
	#selectedSchedule .modal-footer button {font-size: 0.9rem;}
	#selectedSchedule .modal-content, #createSchedule .modal-content {width: 650px;}
	.date, .scheduleStart, .scheduleEnd {display: flex;}
 	.spTerm {padding: 10px 5px 0px 5px;}
 	.table th {border: none; vertical-align: middle;}
 	.table td {border: none;}
	input[name='beginTime'], input[name='endTime'] {width: 80px;}
	.times {height: 150px; overflow-y: auto; padding: 0px; margin: 0px; min-width: 110px;}
	.startTimeList, .endTimeList {font-size: 0.9rem; font-weight: normal; padding: 0px; margin: 0px;}
	.startTimeList li, .endTimeList li {padding: 3px 0px 3px 10px; border-bottom: 1px solid #dddddd;}
	.startTimeList li:hover, .endTimeList li:hover {cursor: pointer; background-color: #dddddd;}
	#selectedSchedule select, #createSchedule select {width: 25%; height: 30px; font-size: 0.9rem;}
	#selectedSchedule .time, #createSchedule .time {margin-left: 5px;} 
	#createSchedule .modal-header span, #selectedSchedule .modal-header span, #createCategory .modal-header span {padding-left: 10px; font-size: 1rem; font-weight: bold;}
	#createSchedule .modal-footer button {font-size: 0.8rem;}
	#createCategory {left: 270px; top: 300px; font-size: 0.9rem; width: 450px;}
	#createCategory .modal-footer button {font-size: 0.8rem;}
	.colors, #createSchedule .colors {padding: 10px 5px 10px 10px;}
	.colors ul, #createSchedule .colors ul {list-style: none; padding: 0px; margin: 0px;}
	.colors ul li, #createSchedule .colors ul li {display: inline; padding: 3px; border: 1px solid white;}
	.colors ul li:hover, #createSchedule .colors ul li:hover {cursor: pointer; border-color: #dddddd;}
	#selectedColorEdit:hover, #createCategory #selectedColorCreate:hover  {cursor: pointer;}
	#createCategory #selectedColorBox {border: 1px solid #dddddd; padding: 5px;}
	#createCategory #selectedColorBox:hover {cursor: pointer;}
	#createCategory #selectedColorCreate {display: none;}
	#selectedColorEdit, #selectedColorCreate {border: 1px solid white; padding: 5px;}
	#selectedColorEdit:hover, #selectedColorCreate:hover {border-color: #dddddd;}
	input[type=date]::-webkit-calendar-picker-indicator {margin-left: 0px;}
	.catergoryColor:hover {cursor: pointer;}
</style>
<script type="text/javascript">
	$(function(){
		// 모든 일정을 가져오는 ajax
		$.ajax({
			url: '/calendar/allSchedule',
			type: 'GET',
			success: function(data){
				var allScheduleList = data;
				console.log(allScheduleList);
				
	 			var calendarEl = document.getElementById('calendar');
	 			
	 			// ajax로 넘어온 데이터를 map 형식으로 변경
				var schedule = allScheduleList.map(function(item) {
					return {
						title : item.sj
						, start : item.beginDt + "T" + item.beginTm
						, end : item.endDt + "T" + item.endTm
						, color : item.color
						/* modal에 가져갈 데이터(수정, 삭제를 위함) */
						, extendedProps : {
							schdulNo : item.schdulNo
							, empno : item.empno
							, beginDt : item.beginDt
							, endDt : item.endDt
							, beginTm : item.beginTm
							, endTm : item.endTm
							, cn : item.cn
							, sj : item.sj
							, categoryNo : item.categoryNo
							, categoryNm : item.categoryNm
							, color : item.color
							, othbcAt : item.othbcAt
						}
						/* modal에 가져갈 데이터 */
					}
					
					
				});
			    
	 			// 캘린더 생성
		        var calendar = new FullCalendar.Calendar(calendarEl, {
		          initialView: 'dayGridMonth'	// 첫 화면에 월 단위의 캘린더를 보여주기
		          , slotMinTime: '00:00' // Day 캘린더에서 시작 시간
		          , slotMaxTime: '24:00' // Day 캘린더에서 종료 시간
		          , locale : 'ko'				// 한글 인코딩
		          , expandRows: true			// 화면에 맞게 높이 재설정
		          , selectable: true			// 날짜을 드래그 할 수 있음
		          , headerToolbar: {			// 툴바 세팅(좌, 중앙, 우)
		        	  left: 'today',
		        	  center: 'prev,title,next',
		        	  right: 'dayGridMonth,timeGridWeek,timeGridDay'
		        	}
		          , dayMaxEvents: true			// 이벤트가 오버되면 높이 제한(+ 몇 개식으로 표현)
		          , events : schedule			// 이벤트
				  , eventTimeFormat: { // like '14:30:00'	// 시간 포맷
					    hour: '2-digit',
					    minute: '2-digit',
					    hour12: false,
					    
				   }
		      		// 등록된 이벤트를 클릭했을 때 실행되는 함수
		          , eventClick: function(info) {	
		        	  console.log(info);
		        	  // 해당 이벤트의 DB 컬럼 값 가져오기
					 var schdulNo = info.event.extendedProps.schdulNo;
 		        	 var empno = info.event.extendedProps.empno;
					 var beginDt = info.event.extendedProps.beginDt;
					 var endDt = info.event.extendedProps.endDt
					 var beginTm = info.event.extendedProps.beginTm;
					 var endTm = info.event.extendedProps.endTm;
					 var cn = info.event.extendedProps.cn;
					 var sj = info.event.extendedProps.sj;
					 var categoryNo = info.event.extendedProps.categoryNo;
					 var categoryNm = info.event.extendedProps.categoryNm;
					 var color = info.event.extendedProps.color;
					 var othbcAt = info.event.extendedProps.othbcAt;
					 
		        	 $("#selectedSchedule input[name='schdulNo']").val(schdulNo);
		        	 $("#selectedSchedule input[name='empno']").val(empno);
		        	 $("#selectedSchedule input[name='beginTm']").val(beginTm);
		        	 $("#selectedSchedule input[name='endTm']").val(endTm);
		        	 $("#selectedSchedule input[name='beginDt']").val(beginDt);
		        	 $("#selectedSchedule input[name='endDt']").val(endDt);
		        	 $("#selectedSchedule input[name='cn']").val(cn);
		        	 $("#selectedSchedule input[name='sj']").val(sj);
		        	 $("#selectedSchedule select option[value="+ categoryNo +"]").prop("selected", true);	// option의 value가 category와 같은 걸로 seleted 
 		        	 $("#selectedSchedule input[name='color']").val(color);
 		        	 $("#selectedColorEdit").css("color", color);	// 사용자가 선택한 색깔로 변함
		        	 
				    
		         	$("#selectedSchedule").modal("show");	// 해당 데이터를 넣은 모달 띄우기
		        	  
		       	   }
		          // 날짜 1일 선택 및 드래그 했을 때 실행되는 함수
		         , select: function(arg) {
		        	 console.log(arg);
		        	 // 월
					if(arg.view.type == "dayGridMonth"){
						// 드래그된 마지막 날짜를 세팅
			        	var endYear = arg.end.getFullYear();
			        	var endMonth = arg.end.getMonth() + 1;
			        	var endDay = arg.end.getDate() - 1;
			        	
						if(endMonth < 10){
						  endMonth = "0" + endMonth;
						}
						if(endDay < 10) {
						  endDay = "0" + endDay;	
						}
						
						// 선택한 날짜
						var beginDate = arg.startStr;
						var endDate = endYear + "-" + endMonth + "-" + endDay;
						
						// 일정 시간 세팅
						$("#createSchedule input[name='beginDt']").val(beginDate);
						$("#createSchedule input[name='endDt']").val(endDate);
						
						
						// 일정 등록 모달 띄우기
						$("#createSchedule").modal("show");

					}
					
		        	// 주/일
					if(arg.view.type == "timeGridWeek" || arg.view.type == "timeGridDay"){
						// 드래그된 시작 시간/분 값 가져오기
						var beginHour = arg.start.getHours();
						var beginMin = arg.start.getMinutes();
						// 드래그된 종료 시간/분 값 가져오기
						var endHour = arg.end.getHours();
						var endMin = arg.end.getMinutes();
						// 드래그된 시작 연/월/일 값 가져오기
						var beginYear = arg.start.getFullYear();
			        	var beginMonth = arg.start.getMonth() + 1;
			        	var beginDay = arg.start.getDate();
						// 드래그된 종료 연/월/일 값 가져오기
			        	var endYear = arg.end.getFullYear();
			        	var endMonth = arg.end.getMonth() + 1;
			        	var endDay = arg.end.getDate();
			        	
			        	//시작 시간, 종료 시간 포맷팅
			        	if(beginHour < 10){
			        		beginHour = "0" + beginHour;
			        	}
			        	if(beginMin < 10){
			        		beginMin = "0" + beginMin;
			        	}
			        	if(endHour < 10){
			        		endHour = "0" + endHour;
			        	}
			        	if(endMin < 10){
			        		endMin = "0" + endMin;
			        	}
			        	// 시작 일자, 종료 일자 포맷팅
			        	if(beginMonth < 10){
			        		beginMonth = "0" + beginMonth;
						}
						if(beginDay < 10) {
							beginDay = "0" + beginDay;	
						}
						if(endMonth < 10){
						  endMonth = "0" + endMonth;
						}
						if(endDay < 10) {
						  endDay = "0" + endDay;	
						}
						
						// 선택한 날짜
						var beginDt = beginYear + "-" + beginMonth + "-" + beginDay;
						console.log(beginDate);
						var endDt = endYear + "-" + endMonth + "-" + endDay;
						// 선택한 시간(드래그 별)
						var beginTm = beginHour + ":" + beginMin;
						var endTm = endHour + ":" + endMin;
						
						// 시간 세팅
						$("#createSchedule input[name='beginTm']").val(beginTm);
						$("#createSchedule input[name='endTm']").val(endTm);
						// 일자 세팅
						$("#createSchedule input[name='beginDt']").val(beginDt);
						$("#createSchedule input[name='endDt']").val(endDt);
						
						
						// 일정 등록 모달 띄우기
						$("#createSchedule").modal("show");
					}
		        						
		         }
				
		          
		         , eventDidMount : function(e){
		        	 console.log(e);
		        	 
		        	 var event = e.el;	// 이벤트 객체
		        	 var categoryNo = e.event._def.extendedProps.categoryNo;	// 이벤트 객체가 가지고 있는 카테고리 번호
		        	 var checkbox = $("input[name='checkCategory']");			// 체크박스 객체
		        	 
		        	// 체크박스를 통해 카테고리별로 조회하기
		        	 $(function(){
		        		 checkbox.on("click", function(){
		        			 // 체크가 안되있고
		        			 if($(this).prop("checked") == false){
		        				 // 체크박스의 value 와 이벤트 객체의 카테고리 번호가 같으면
		        				if($(this).val() == categoryNo){
		        					// 숨기기
		        					event.style.display = "none";
		        				}
		        			 // 체크가 되어있고
		        			 }else {
	        					 if($(this).val() == categoryNo){
	        						 // 보여주기
		        					event.style.display = "flex";
		        				}
		        			 }
		        		 });
		        	 });
		        	 
		        	 // 카테고리 삭제(해당 카테고리의 일정도 함께 삭제)
		        	 $(function(){
		        		 $(".deleteCategory").on("click", function(){
		        			 var inputCategoryNo = $(this).siblings("input[name='checkCategory']").val();
		        			 $.ajax({
		        				 url : "/calendar/deleteCategory"
		        				, type : "post"
		        				, data : {"categoryNo" : inputCategoryNo}
		        			 	, success : function(result){
		        			 		console.log(result);
		        			 		if(result > 0){
		   			        			location.reload();
		        			 		}
		        			 	}
		        			 });
		        			
		        		 });
		        		 
		        	 });
		        	 
		         } 
		          
			   });
		        
		        calendar.render();
			        
			}
		});
		
		// 카테고리 이름 클릭 시
		$(".categoryNm").on("click", function(e){
			$(this).siblings(".cancelCategory").css("display", "inline");
			$(this).siblings(".deleteCategory").css("display", "inline");
		});
		
		// 카테고리 이름 - 돌아가기 아이콘 클릭 시
		$(".cancelCategory").on("click", function(){
			$(this).css("display", "none");
			$(this).siblings(".deleteCategory").css("display", "none");
		});
		
		// 카테고리 추가 모달 열기
		$(".addCategory").on("click", function(){
			$("#createCategory").modal("show");
		});
		
		// 카테고리 색 변경
		$("#createCategory .colors span").on("click", function(){
			$("#selectedColorBox").css("display", "none");
			$("#selectedColorCreate").css("display", "inline");
			var color = $(this).css("color");
			color = rgbToCode(color);
			$("#selectedColorCreate").css("color", color);
			$("#createCategory input[name='color']").val(color);
		});
		

		// 일정 수정
		$("#btnSchedulEdit").on("click", function(){
			$("#frmEdit").attr("method", "post");
			$("#frmEdit").attr("action", "/calendar/edit");
			
			// 일정 시간 체크
			var beginTmObj = $("#selectedSchedule input[name='beginTm']");
			if(fn_isEmpty(beginTmObj.val())){
				alert("일정 시작일을 선택해주세요.");
				beginTmObj.focus();
				return false;
			}
			var endTmObj = $("#selectedSchedule input[name='endTm']");
			if(fn_isEmpty(endTmObj.val())){
				alert("일정 종료일을 선택해주세요.");
				endTmObj.focus();
				return false;
			}
			if(beginTmObj.val() > endTmObj.val()){
				alert("일정 시간을 다시 설정해주세요");
				return false;
			}
			
			var sjObj = $("#selectedSchedule input[name='sj']");
			if(fn_isEmpty(sjObj.val())){
				alert("일정명을 입력 해주세요.");
				sjObj.focus();
				return false;
			}
			var cnObj = $("#selectedSchedule input[name='cn']");
			if(fn_isEmpty(cnObj.val())){
				alert("내용을 입력 해주세요.");
				cnObj.focus();
				return false;
			}
			
			
 			$("#frmEdit").submit();
		});
		
		// 일정 삭제
		$("#btnSchedulDelete").on("click", function(){
			$("#frmDelete").attr("method", "post");
			$("#frmDelete").attr("action", "/calendar/delete");
			$("#frmDelete").submit();
		});
		
		// 좌측 메뉴 [일정 등록] 버튼 클릭 시
		$("#btnCreate").on("click", function(){
        	$("#createSchedule").modal("show");
        	
		});
		
		// 일정 기간 시간 30분 단위로 보이기
		for (var i = 0; i < 49; i++) {
            var hour = '';
            var min = ':00';

            if ((Math.ceil(i / 2)) < 13) {
            	hour = (Math.floor(i / 2));
            } else {
            	hour = (Math.floor(i / 2));
            }
            
            hour = (Math.floor(i / 2));
            if (hour < 10) {
            	hour = '0' + hour;
            }
            if (i % 2 != 0) {
            	min = ':30';
            }
           
           // 30분 단위 시간 세팅
           $("#createSchedule input[name='beginTm']").empty();
 	       $(".startTimeList").append("<li>" + hour + min + "</li>");
 	       $("#createSchedule input[name='endTm']").empty();
 	       $(".endTimeList").append("<li>" + hour + min + "</li>");
         }
		
		// 일정 등록의 시작시간 세팅
		$("#createSchedule .startTimeList li").on("click", function(){
 			var beginTime = $(this).text();
			$("#createSchedule input[name='beginTm']").val(beginTime);
		});
		// 일정 등록의 종료시간 세팅
		$("#createSchedule .endTimeList li").on("click", function(){
 			var endTime = $(this).text();
			$("#createSchedule input[name='endTm']").val(endTime);
		});
		// 일정 수정의 시작시간 세팅
		$("#selectedSchedule .startTimeList li").on("click", function(){
 			var beginTime = $(this).text();
			$("#selectedSchedule input[name='beginTm']").val(beginTime);
		});
		// 일정 수정의 종료시간 세팅
		$("#selectedSchedule .endTimeList li").on("click", function(){
 			var endTime = $(this).text();
			$("#selectedSchedule input[name='endTm']").val(endTime);
		});
		
		
		
	}); // jquery end
	
	// modal의 [일정 등록] 버튼 클릭 시, 일정을 등록하는 함수
	function fn_createSchedule(){
		$("#frmCreate").attr("method", "post");
		$("#frmCreate").attr("action", "/calendar/create");
		
		// 일정 시간 체크
		var beginTmObj = $("#createSchedule input[name='beginTm']");
		if(fn_isEmpty(beginTmObj.val())){
			alert("일정 시작일을 선택해주세요.");
			beginTmObj.focus();
			return false;
		}
		var endTmObj = $("#createSchedule input[name='endTm']");
		if(fn_isEmpty(endTmObj.val())){
			alert("일정 종료일을 선택해주세요.");
			endTmObj.focus();
			return false;
		}
		if(beginTmObj.val() > endTmObj.val()){
			alert("일정 시간을 다시 설정해주세요");
			return false;
		}
		
		var sjObj = $("#createSchedule input[name='sj']");
		if(fn_isEmpty(sjObj.val())){
			alert("일정명을 입력 해주세요.");
			sjObj.focus();
			return false;
		}
		var cnObj = $("#createSchedule input[name='cn']");
		if(fn_isEmpty(cnObj.val())){
			alert("내용을 입력 해주세요.");
			cnObj.focus();
			return false;
		}
		
 		$("#frmCreate").submit();
	}
	
	// 카테고리 등록
	function fn_createCategory(){
		$("#frmCreateCategory").attr("method", "post");
		$("#frmCreateCategory").attr("action", "/calendar/createCategory");
		
		var color = $("#createCategory input[name='color']").val();
		console.log(color);
		if(color == ""){
			alert("구분 색을 선택해주세요");
			return false;
		}
		
 		$("#frmCreateCategory").submit();
	}
	
	// rgb를 #코드로 바꾸는 함수
	function rgbToCode(rgb) {
	     if (  rgb.search("rgb") == -1 ) {
	          return rgb;
	     } else {
	          rgb = rgb.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+))?\)$/);
	          function hex(x) {
	               return ("0" + parseInt(x).toString(16)).slice(-2);
	          }
	          return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]); 
	     }
	}
	
	
	// 등록된 카테고리 색 변경
	function fn_editCategoryColor(categoryNo, obj){
		// 색깔이 변할 대상 
		var beforeColorObj = $("#catergoryColor"+ categoryNo +"");
		// 선택한 색깔
		var changeColor = $(obj).css("color");
		 // 코드 변경(#)
  		changeColor = rgbToCode(changeColor);
		  			
		$.ajax({
			url : "/calendar/editCategoryColor"
			, type : "post"
			, data : {"categoryNo" : categoryNo, "color" : changeColor}
			, success : function(result){
				console.log(result);
				if(result > 0){
					// 색 변경 
					beforeColorObj.css("color", ""+ changeColor +"");
					location.reload();
				}
			}
		});
		
	}
	
</script>
<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h4><a href="/calendar/home">캘린더</a></h4></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default"><span>일정 등록</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>내 캘린더</strong></a>
				<ul class="menu-list-ul">
					<c:forEach var="category" items="${selectCategoryList}">
					<li>
						<c:if test="${category.categoryNm != '내 일정' }">
						<span class="cancelCategory"><i class="fas fa-undo-alt mr-2"></i></span>
						<span class="deleteCategory"><i class="fas fa-times mr-2"></i></span>
						</c:if>
						<input type="checkbox" name="checkCategory" value="${category.categoryNo}" checked="checked">
						<span class="categoryNm">${category.categoryNm}</span>
						<span id="catergoryColor${category.categoryNo}" class="catergoryColor" style="color : ${category.color}" data-toggle="dropdown" ><i class="fas fa-circle"></i></span>
						<div class="dropdown-menu colors">
							<ul>
								<li><span style="color : #000" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
								<li><span style="color : #D25565" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
								<li><span style="color : #9775fa" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
								<li><span style="color : #ffa94d" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
								<li><span style="color : #74c0fc" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
								<li><span style="color : #f06595" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
								<li><span style="color : #63e6be" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
								<li><span style="color : #a9e34b" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
								<li><span style="color : #4d638c" onclick="fn_editCategoryColor(${category.categoryNo}, this)"><i class="fas fa-circle"></i></span></li>
							</ul>
						</div>
					</li>
					</c:forEach>
				</ul>
				<div class="addType">
					<span class="addCategory"><i class="fas fa-plus mr-2"></i>내 캘린더 추가</span>
				</div>
			</div>
		</div>
	</div>
	<div class="lefr-menu-list-content">
		<div id="calendar"></div>
	</div>
	
	<!-- 일정 수정, 삭제를 위한 modal -->
	<div class="modal" id="selectedSchedule">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<span class="modal-title">일정 조회</span>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<form id="frmEdit">
					<input name="schdulNo" type="hidden">
					<input name="empno" type="hidden">
					<table class="table">
						<colgroup>
							<col width="100px">
							<col width="auto">
						</colgroup>
						<tbody>
							<tr>
								<th>일정 기간</th>
								<td class="date">
								<div class="scheduleEnd">
				                 	<input type="date" name="beginDt" class="form-control">
				                 	<input type="text" name="beginTm" class="form-control time" data-toggle="dropdown">
									<div class="dropdown-menu times">
										<ul class="startTimeList">
										</ul>
									</div>
								</div>	
								<span class="spTerm">~</span>
								<div class="scheduleEnd">
				                 	<input type="date" name="endDt" class="form-control">
				                 	<input type="text" name="endTm" class="form-control time" data-toggle="dropdown">
									<div class="dropdown-menu times">
										<ul class="endTimeList">
										</ul>
									</div>
								</div>	
								</td>
							</tr>
							<tr>
								<th>일정 명</th>
								<td><input type="text" class="form-control" name="sj"></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><input type="text" class="form-control" name="cn"></td>
							</tr>
							<tr>
								<th>카테고리</th>
								<td>
									<select name="categoryNo" class="form-control">
									<c:forEach var="category" items="${selectCategoryList}">
										<option value="${category.categoryNo}">${category.categoryNm}</option>
									</c:forEach>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
				<form id="frmDelete">
					<input type="hidden" name="schdulNo">
				</form>
				
				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnSchedulEdit" type="button" class="btn btn-primary">일정 수정</button>
					<button id="btnSchedulDelete" type="button" class="btn btn-primary">일정 삭제</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 일정 등록을 위한 modal -->
	<div class="modal" id="createSchedule">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<span class="modal-title">일정 등록 </span>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<form id="frmCreate">
<!-- 					<input name="schdulNo" type="hidden"> -->
					<input name="empno" type="hidden" value="${sessionScope.empVo.empno}">
					<input type="hidden" name="othbcAt" value="Y">
					<table class="table">
						<colgroup>
							<col width="100px">
							<col width="auto">
						</colgroup>
						<tbody>
							<tr>
								<th>일정 기간</th>
								<td class="date">
								<div class="scheduleEnd">
				                 	<input type="date" name="beginDt" class="form-control">
				                 	<input type="text" name="beginTm" class="form-control time" data-toggle="dropdown" autocomplete="off">
									<div class="dropdown-menu times">
										<ul class="startTimeList">
										</ul>
									</div>
								</div>	
								<span class="spTerm">~</span>
								<div class="scheduleEnd">
				                 	<input type="date" name="endDt" class="form-control">
				                 	<input type="text" name="endTm" class="form-control time" data-toggle="dropdown" autocomplete="off">
									<div class="dropdown-menu times">
										<ul class="endTimeList">
										</ul>
									</div>
								</div>	
								</td>
							</tr>
							<tr>
								<th>일정 명</th>
								<td><input type="text" class="form-control" name="sj"></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><input type="text" class="form-control" name="cn"></td>
							</tr>
							<tr>
								<th>카테고리</th>
								<td>
									<select name="categoryNo" class="form-control">
									<c:forEach var="category" items="${selectCategoryList}">
										<option value="${category.categoryNo}">${category.categoryNm}</option>
									</c:forEach>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
				
				
				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnSchedulCreate" type="button" class="btn btn-primary" onclick="fn_createSchedule()">일정 등록</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 카테고리 등록 모달 -->
	<div class="modal" id="createCategory">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<span class="modal-title">카테고리 등록</span>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<form id="frmCreateCategory">
					<input name="empno" type="hidden" value="${sessionScope.empVo.empno}">
					<table class="table">
						<colgroup>
							<col width="100px">
							<col width="auto">
						</colgroup>
						<tbody>
							<tr>
								<th>카테고리 명</th>
								<td><input type="text" class="form-control" name="categoryNm"></td>
							</tr>
							<tr>
								<th>색 구분</th>
								<td>
									<input type="hidden" name="color">
									<span id="selectedColorBox" data-toggle="dropdown">선택</span>
									<div class="dropdown-menu colors">
										<ul>
											<li><span style="color : #000"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #D25565"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #9775fa"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #ffa94d"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #74c0fc"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #f06595"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #63e6be"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #a9e34b"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #4d638c"><i class="fas fa-circle"></i></span></li>
										</ul>
									</div>
									<span id="selectedColorCreate" data-toggle="dropdown"><i class="fas fa-circle"></i></span>
									<div class="dropdown-menu colors">
										<ul>
											<li><span style="color : #000"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #D25565"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #9775fa"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #ffa94d"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #74c0fc"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #f06595"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #63e6be"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #a9e34b"><i class="fas fa-circle"></i></span></li>
											<li><span style="color : #4d638c"><i class="fas fa-circle"></i></span></li>
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
				
				
				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnCategoryCreate" type="button" class="btn btn-primary" onclick="fn_createCategory()">등록</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
</div>