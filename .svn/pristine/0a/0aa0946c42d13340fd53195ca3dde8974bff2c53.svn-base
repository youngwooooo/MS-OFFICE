// jquery 시작
$(function(){

	/* ' > 메뉴 ' 클릭 시, 아이콘 변경 및 ul 토글 */
	$(".toggle-menu-list").click(function(e){
		e.preventDefault();
		$(this).find("i").toggleClass("fas fa-angle-down mr-2 fas fa-angle-right mr-2");
		$(this).next().slideToggle();
	});
	
	
});	// jquery 끝
	
/* 우편 번호 검색 (다음 cdn) */	
function openHomeSearch(){
	new daum.Postcode({
		oncomplete : function(data){
			$('[name=zipCode]').val(data.zonecode);
			$('[name=addr1]').val(data.address);
			$('[name=addr2]').val(data.buildingName);
		}
	}).open();
}

/* 파일 크기 포맷팅 */
function fileSizePrint(fileSize){
     var size = "";
     if (fileSize < 1024){
    	 size = fileSize + "B";
     }else if (fileSize < 1024 * 1024){
    	 size = parseInt (fileSize / 1024) + "KB";
     }else if (fileSize < 1024 * 1024 * 1024){
    	 size = parseInt (fileSize / (1024 * 1024)) + "M";
     }else size = parseInt (fileSize / (1024 * 1024 * 1024)) + "G";
     
     return size;
}

/* 년/월/일/요일/시/분/초 구하기 */
function fn_getFullTime(){
	// 현재 시각
	var now = new Date();
	
	// 년/월/일/요일
	var year = now.getFullYear();
	var month = now.getMonth() + 1;
	var date = now.getDate();
	var dayInt = now.getDay();
	
	// 요일(숫자)을 요일(한글)로 바꾸기
	var week = new Array("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일");
	var dayStr = week[dayInt]; // 일요일
	var day = dayStr.substring(0, 1); // 일
	
	// 시/분/초
	var hour = now.getHours();
	var min = now.getMinutes();
	var sec = now.getSeconds();
	
	if(month < 10){
		month = "0" + month;
	}
	if(date < 10){
		date = "0" + date;
	}
	if(hour < 10){
		hour = "0" + hour;
	}
	if(min < 10){
		min = "0" + min;	
	}
	if(sec < 10){
		sec = "0" + sec;
	}
	
	var currentTime = year + "년 " + month + "월 " + date + "일 " + "(" + day + ") " + hour + ":" + min + ":" + sec;
	
}

/* 시/분/초만 구하기 */
function fn_getTime(){
	var now = new Date();
	
	
	// 시/분/초
	var hour = now.getHours();
	var min = now.getMinutes();
	var sec = now.getSeconds();
	
	if(hour < 10){
		hour = "0" + hour;
	}
	if(min < 10){
		min = "0" + min;	
	}
	if(sec < 10){
		sec = "0" + sec;
	}
	
	var currentTime = hour + ":" + min + ":" + sec;
	
}

/* 빈 값 체크 */
function fn_isEmpty(value){
	if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length) ){ 
	    return true;
	} else { 
	    return false; 	
	}
}

