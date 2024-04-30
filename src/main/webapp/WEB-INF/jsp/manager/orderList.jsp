<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
	
	<table class="table text-center">
		<thead>
			<tr>
				<th>번호</th>
				<th>사용자 이름</th>
				<th>제품 이름</th>
				<th>사이즈</th>
				<th>제품 수량</th>
				<th>사용자 주소</th>
				<th>상태</th>
				<th>배송중</th>
				<th>배송완료</th>
			</tr>
		</thead>
			
		<tbody>
			<c:forEach var="list" items="${orderList }" varStatus="status">
			<tr>
				<td>${status.count +1 }</td>
				<td>${list.userName }</td>
				<td>${list.clothName }</td>
				<td>${list.clothSize }</td>
				<td>${list.clothCount }</td>
				<td>${list.userAddress }</td>
				<td>${list.clothStatus }</td>
				<td><button type="button" class="btn btn-warning">배송중</button></td>
				<td><button type="button" class="btn btn-success">배송 완료</button></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

	</div>





	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>