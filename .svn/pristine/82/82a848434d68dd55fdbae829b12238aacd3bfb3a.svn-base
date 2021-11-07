<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<script src="\resources\js\jquery.min.js"></script>


<body>
	<div class="card shadow mb-4" style="width: 55%; margin:150px 300px;">
		<img alt="승인" src="/resources/img/approve.PNG" style="width: 150px; position: relative; left: 750px; top:10px; height: 150px;" >
		<div class="card-body">
		<form action="/bogo/approveDetail" method="post" id="faqFrm">
					<div class="row">
						<div class="col-sm-12">
						<c:forEach var="list" items="${list}" varStatus="stat" >
							<table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
								<tr role="row">
									<th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 50px;">
										보고자
									</th>
									<td class="sorting_1">${list.reportrNm}</td>
								</tr>
								<tr>
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 100px;">
										제목
									</th>
									<td>${list.sj}</td>
								</tr>
								<tr class="even">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 60px;">
										내용
									</th>
									<td>${list.cn}</td>
								</tr>
								<tr class="even" hidden="hidden">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 60px;">
										보고서리스트번호
									</th>
									<td><input style="border:0 solid black;" name="reprtListNo" value="${list.reprtListNo}"></input></td>
								</tr>
								<tr class="odd">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										등록일
									</th>
									<td><input style="border:0 solid black;" name="writngTm" value="${list.writngTm}"></input></td>
								<tr class="odd">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										책임자
									</th>
									<td><input style="border:0 solid black;" name="rspnberEmpno" value="${list.respntrNm}"></input></td>
								<tr class="even">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 60px;">
										첨부파일
									</th>
									<td>
										<c:if test="${list.fileNo == -1}">
											<input style="border:0 solid black;" name="fileNo" value="첨부파일 없음" />
										</c:if>
										<c:if test="${list.fileNo != -1}">
											<input style="border:0 solid black;" name="fileNo" value="${list.fileNo}" />
										</c:if>
										
									</td>
								</tr>
								<tr class="odd" hidden="hidden">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										보고자
									</th>
									<td><input style="border:0 solid black;" name=reportrEmpno value="${list.reportrEmpno}" ></input></td>
								<tr class="odd" hidden="hidden">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										보고서번호
									</th>
									<td><input style="border:0 solid black;" name=reprtNo value="${list.reprtNo}" ></input></td>
								<tr class="even" hidden="hidden">
									<th hidden="hidden" class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										승인반려여부
									</th>
									
									<td hidden="hidden"><input  id="cnfirmAt" name="cnfirmAt" value="Y"></input></td>
							</table>
							</c:forEach>
							
						</div>
						
					</div>
		
					</form>	
		
	     
			</div>
	</div>
	
	<script type="text/javascript">
	$(function() {
		
		//삭제 버튼 클릭 후 고객 정보 삭제 처리
		$("#frmDelete").on("click",function(){
			var input = confirm("반려하시겠습니까?");
		
			if(input){//true
// 				document.getElementById("#cnfirm").setAttribute("value", "N");
				
					$("#cnfirmAt").val("N");
				}
// 				$("#frmDelete").submit();
			else{//false
				return;
			}
		});		
	});
		</script>

	

</body>
</html>