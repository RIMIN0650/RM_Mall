<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 정보 저장</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.18/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	
	<div id="wrap" class="bg-warning">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<section class="d-flex">
			<nav class="main-menu bg-info">
				<ul class="nav flex-column">
					<li class="nav-item mt-3 pl-3"><h5 href="#" class="text-white">아우터</h5></li>
					<li class="nav-item mt-3 pl-3"><h5 href="#" class="text-white">셔츠/블라우스</h5></li>
					<li class="nav-item mt-3 pl-3"><h5 href="#" class="text-white">스커트</h5></li>
					<li class="nav-item mt-3 pl-3"><h5 href="#" class="text-white">팬츠</h5></li>
					<li class="nav-item mt-3 pl-3"><h5 href="#" class="text-white">데님</h5></li>
					<li class="nav-item mt-3 pl-3"><h5 href="#" class="text-white">니트/가디건</h5></li>
					<li class="nav-item mt-3 pl-3"><h5 href="#" class="text-white">드레스</h5></li>
					<li class="nav-item mt-3 pl-3"><h5 href="#" class="text-white">악세서리</h5></li>
				</ul>
			</nav>
			<div class="d-flex justify-content-center">
				<div class="my-3 ml-5">
					<select class="selectpicker" data-width="200px" id="selectCategory">
					  <option value="0" selected>분류 선택</option>
					  <option value="공민은행">공민은행</option>
					  <option value="농엽은행">농엽은행</option>
					  <option value="우니은행">우니은행</option>
					  <option value="기엽은행">기엽은행</option>
					</select>
				</div>
				<div class="mt-3 ml-5" id="card-info">
					<div id="card-input">
						<input type="text" class="form-control w-150" placeholder="카드 번호">
						<div class="d-flex justify-content-between mt-5">
							<input type="text" class="form-control col-5" placeholder="유효 기간">
							<input type="text" class="form-control col-5" placeholder="카드 비밀번호">
						</div>
					</div>
					<div class="d-flex justify-content-between">
							<button type="button" class="btn btn-danger btn-lg mt-5">돌아가기</button>
							<button type="button" class="btn btn-info btn-lg mt-5">저장하기</button>
					</div>
				</div>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

	
	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
	
	
	<script>
	$(document).ready(function(){
		
		
		
		
		
		
		
	});
	
	
	
	$(".selectpicker").selectpicker({
	});
	</script>
	
	
	
</body>
</html>