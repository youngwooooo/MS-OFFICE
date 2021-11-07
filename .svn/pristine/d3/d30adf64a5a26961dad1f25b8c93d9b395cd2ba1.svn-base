<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="\resources\js\jquery.min.js"></script>
<style>
#title {
	font-size: large;
	font-weight: bolder;
	position: relative;
	top: 5px;
}

#modDate, #memId {
	font-size: small;
	font-weight: bolder;
}

th {
	font-size: small;
	margin-left: 30px;
}




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
	display: flex;
}

.left-menu-list a {
	color: black;
}

.left-menu-list a:hover {
	color: black;
}

.uploadDiv {
	padding-top: 10px;
	padding-bottom: 10px;
}

.
.uploadDiv label {
	margin: 0px;
}

.uploadDiv span {
	border: 1px solid #55beff;
	background-color: #55beff;
	color: white;
	padding: 5px;
}

.uploadDiv span:hover {
	border-color: #009dff;
	background-color: #009dff;
	cursor: pointer;
}

.uploadResult {
	border: 1px dashed #dddddd;
	min-height: 60px;
	font-size: 0.9rem;
	margin-top: 100px;
}

.uploadResult p {
	padding: 5px 10px 5px 10px;
	margin-bottom: 0px;
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

.menu-list .pad0 {
	padding-left: 10px;
}

.menu-list li:hover {
	background-color: #f7f8f9;
}

.menu-list span {
	font-size: 0.9rem;
}

.menu-list-ul {font-size: 0.9rem;}

.table tbody th {border-top: none; border-bottom: 1px solid #dddddd;}
.table tbody td {border-top: none; border-bottom: 1px solid #dddddd;}
.table {font-size: 0.9rem;}
</style>
<script type="text/javascript">
	// ' > 메뉴 ' 클릭 시, 아이콘 변경 및 ul 토글
	$(function() {
		$(".toggle-menu-list").click(
				function(e) {
					e.preventDefault();
					$(this).find("i").toggleClass(
							"fas fa-angle-down mr-2 fas fa-angle-right mr-2");
					$(this).next().slideToggle();
				});

		//처음 상세보기 화면일 경우 입력란을 읽기전용으로 처리
		$(".form-readOnly").prop("readonly", true);

		// 첨부파일 조회
		var fileNo = '<c:out value="${detail[0].fileNo}"/>';
		console.log(fileNo);
		$
				.getJSON(
						"/mail/getFileList",
						{
							fileNo : fileNo
						},
						function(arr) {
							console.log(arr);
							var str = "";

							$(arr)
									.each(
											function(i, fileVo) {
												var fileCallPath = encodeURIComponent(fileVo.fileCours
														+ "/"
														+ fileVo.fileNm
														+ "_"
														+ fileVo.fileOrginlNm);
												str += "<p data-cours='"+fileVo.fileCours+"'data-fileOrdr='"+fileVo.fileOrdr+"'data-fileNo='"+fileVo.fileNo+"'data-nm='"+fileVo.fileNm+"'data-orginNm='"+fileVo.fileOrginlNm+"'data-fileSize='"+fileVo.fileSize+ "'data-extsn='"+fileVo.extsn+ "'data-fileSize='"+fileVo.fileSize+ "'>";
												str += "<i class='fas fa-file mr-2'></i>"
														+ fileVo.fileOrginlNm
														+ "("
														+ fileSizePrint(fileVo.fileSize)
														+ ")";
												str += "</p>";
											});

							$(".uploadResult").append(str);

						}); //getJSON

		// 다운로드
		$(".uploadResult").on(
				"click",
				"p",
				function(e) {
					console.log("view image");

					var pObj = $(this);
					console.dir(pObj);
					console.dir(pObj.data("fileno"));
					console.dir(pObj.data("fileordr"));

					// 파일 다운로드
					location.href = "/download?fileNo=" + pObj.data("fileno")
							+ "&fileOrdr=" + pObj.data("fileordr");

				});

		var formObj = $("#frm");
		// 확인 버튼
		$("#btnSubmit").on(
				"click",
				function() {
					var sj = $("input[name='sj']");

					// 공지 제목 체크
					if (fn_isEmpty(sj.val())) {
						alert("공지제목을 입력하세요.");
						sj.focus();
						return false;
					}

					var str = "";

					$(".uploadResult p").each(
							function(i, obj) {
								var jobj = $(obj);
								console.dir(jobj);
								str += "<input type='hidden' name='fileList["
										+ i + "].fileOrdr' value='" + (i + 1)
										+ "'>";
								str += "<input type='hidden' name='fileList["
										+ i + "].fileOrginlNm' value='"
										+ jobj.data("orginnm") + "'>";
								str += "<input type='hidden' name='fileList["
										+ i + "].fileNm' value='"
										+ jobj.data("nm") + "'>";
								str += "<input type='hidden' name='fileList["
										+ i + "].fileCours' value='"
										+ jobj.data("cours") + "'>";
								str += "<input type='hidden' name='fileList["
										+ i + "].extsn' value='"
										+ jobj.data("extsn") + "'>";
								str += "<input type='hidden' name='fileList["
										+ i + "].fileSize' value='"
										+ jobj.data("filesize") + "'>";
								console.log(jobj.data("orginnm"));
							}); // 첨부파일 정보 삽입
					console.log(str);

					formObj.append(str).submit();

				}); // submit(btnNoticeCreate)

		// 공지 삭제
		$("#btnNoticeDelete").on("click", function() {
			var input = confirm("게시물을 삭제하시겠습니까?");

			if (input) {//true
				$("#frmDelete").attr("action", "/notice/delete").submit();
			} else {//false
				return;
			}
		});

	});

	// 파일 크기 포맷팅
	function fileSizePrint(fileSize) {
		var size = "";
		if (fileSize < 1024) {
			size = fileSize + "B";
		} else if (fileSize < 1024 * 1024) {
			size = parseInt(fileSize / 1024) + "KB";
		} else if (fileSize < 1024 * 1024 * 1024) {
			size = parseInt(fileSize / (1024 * 1024)) + "M";
		} else
			size = parseInt(fileSize / (1024 * 1024 * 1024)) + "G";

		return size;
	}
</script>


<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name">
				<h2>
					<a href="/mail/home">메일</a>
				</h2>
			</div>
			<div class="menu-create">
				<a href="/mail/mailSend"><button id="btCreateBoard" type="button" class="btn btn-default" style="width: 100%;
    height: 60px;
    border-color: black;
    background-color: white; position: relative;">
						<span>메일쓰기</span>
					</button></a>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>메일함</strong></a>
				<ul class="menu-list-ul">
					<li><a href="/mail/home">전체메일
					</a></li>
					<li><a href="/mail/home">받은 메일함
					</a></li>
					<li><a href="/mail/sendlist">보낸메일함
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div>
	<table class="table" id="dataTable" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="position: relative; left: 260px;">
		<colgroup>
			<col width="150px">
			<col width="auto">
		</colgroup>
		<tr>
			<th class="th"><span>제목</span></th>
			<td>${detail[0].sj}</td>
		</tr>
		<tr>
			<th class="th"><span>발신일</span></th>
			<td>${detail[0].recptnTm}</td>
		</tr>
		<tr style="border-bottom: 1px solid #dee2e6;">
			<th class="th"><span>발신자</span></th>
			<td>${detail[0].dsptchNm}</td>
		</tr>
		<tr>
			
	
			<td style="border: none;" colspan="2">
				<p>${detail[0].cn}</p>
				<c:if test="${detail[0].fileNo != -1}">
				<div class='uploadResult'></div>
				</c:if>
				<c:if test="${detail[0].fileNo == -1}">
				
				</c:if>
				<div id="updateInfo" style="color: blue; float: right;"></div>
			</td>
		</tr>
	</table>
</div>
</html>


