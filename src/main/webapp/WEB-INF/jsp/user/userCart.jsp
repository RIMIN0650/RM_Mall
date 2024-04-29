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
							<th>제품명</th>
							<th>사이즈</th>
							<th>수량</th>
							<th>주문상태</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="basket" items="${basketList }">
							<tr>
								<td>${basket.clothName }</td>
								<td>${basket.clothSize }</td>
								<td>${basket.clothCount }</td>
								<td>${basket.clothStatus }</td>
								<td><button type="button" class="btn btn-sm btn-warning">삭제</button></td>
							</tr>	
						</c:forEach>
					</tbody>
				</table>
				<div class="d-flex justify-content-end">
					<button type="button" class="btn btn-outline-info"><a href="/main/home">돌아가기</a></button>
				</div>
			</article>
			
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
			
	</div>
</body>
</html>