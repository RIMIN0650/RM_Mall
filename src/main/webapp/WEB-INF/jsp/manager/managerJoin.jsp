<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Us</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<section class="d-flex justify-content-center">
			<!-- input form -->
			<div class="input-form my-5">
				<h1 class="text-center mb-3">관리자 회원가입</h1>
				<div class="d-flex justify-content-between align-items-start">	
					<input type="text" class="form-control col-8 mb-3" placeholder="id" id="identifier">
					<button type="button" class="btn btn-info" id="checkDup">중복확인</button>
				</div>
				<input type="password" class="form-control mb-3" placeholder="관리자 인증번호" id="managerPw"> 
				<input type="password" class="form-control mb-3" placeholder="password" id="password">
				<input type="password" class="form-control mb-3" placeholder="check-password" id="checkPassword">
				<input type="text" class="form-control mb-3" placeholder="name" id="name">
				<button type="button" class="btn btn-success col-12" id="joinBtn">회원가입</button>
				
				<div class="text-center pt-5">
					<a href="/user/login">로그인</a>&nbsp;또는&nbsp;<a href="/main/home">메인 페이지로</a>
				</div>
			</div>
			<!-- /input form -->
		</section>	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	
<script>
	$(document).ready(function(){
		
		
		$("#checkDup").on("click",function(){
			alert("checkeDup");
		});

		$("#joinBtn").on("click",function(){
			alert("qwerqwer");
		});
		
		
	});

</script>
	

</body>
</html>