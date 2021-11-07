<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div class="menu-name"><h2><a href="#">메일</a></h2></div>
			<div class="menu-create">
				<button id="btCreateBoard" type="button" class="btn btn-default"><span>메일쓰기</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>메일함</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="#"><span>받은메일함</span></a>
					</li>
					<li>
						<a href="#"><span>보낸메일함</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>메뉴</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>메뉴</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>메뉴</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>메뉴</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
					<li>
						<a href="#"><span>상세메뉴</span></a>
					</li>
				</ul>
			</div>
		</div>
		<div class="lefr-menu-list-content">
			<!-- 메뉴에 따른 내용 -->
		</div>
	</div>
</div>