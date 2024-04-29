<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Cart</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
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
				<button type="button" class="btn"><a href="/user/save/payment">결제 정보 추가</a></button>
				<button type="button" class="btn"><a href="/basket/list-view">장바구니</a></button>
			</nav>
			<article>
				<table class="table text-center" id="basketList">
					<thead>
						<tr>
							<th>선택</th>
							<th>제품명</th>
							<th>사이즈</th>
							<th>가격</th>
							<th>수량</th>
							<th>주문상태</th>
							<th>주문</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="basket" items="${basketList }">
							<tr>
								<td><input type="checkbox" id="${basket.id }"></td>
								<td>${basket.clothName }</td>
								<td>${basket.clothSize }</td>
								<td>${basket.clothPrice }</td>
								<td>${basket.clothCount }</td>
								<td>${basket.clothStatus }</td>								
								<td><button type="button" class="btn btn-sm btn-success orderBtn" data-basket-id="${basket.id }">주문</button></td>
								<td><button type="button" class="btn btn-sm btn-warning deleteBtn" data-basket-id="${basket.id }">취소</button></td>
							</tr>	
						</c:forEach>
					</tbody>
				</table>
				<div class="d-flex justify-content-between mx-3">
					<button type="button" class="btn btn-outline-info"><a href="/main/home">돌아가기</a></button>
					<button type="button" class="btn btn-outline-success" id="orderBtn">주문하기</button>
				</div>
			</article>
			
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
			
	</div>
	
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	
	<script>
		$(document).ready(function(){
			
			$(".orderBtn").on("click",function(){
				let basketId = $(this).data("basket-id");
				
				$.ajax({
					type:"put"
					, url:"/basket/update"
					, data:{"id" : basketId}
					, success:function(data){
						if(data.result == "success"){
							location.reload();							
						} else {
							alert("주문 실패");
						}
					}
					, error:function(){
						alert("주문 에러");
					}
				});
				
				
			});
			
			$(".deleteBtn").on("click",function(){
								
				let basketId = $(this).data("basket-id");
				
				$.ajax({
					type:"delete"
					, url:"/basket/delete"
					, data:{"id" : basketId}
					, success:function(data){
						if(data.result == "success"){
							location.reload();
						} else {
							alert("삭제 실패");
						}
					}
					, error:function(){
						alert("삭제 에러");
					}
				});
				
				
				
			});
			
			
			
		});
	
	
	</script>
</body>


</html>



