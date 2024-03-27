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
				<h1 class="text-center mb-3">회원가입</h1>
				<div class="d-flex justify-content-between align-items-start">	
					<input type="text" class="form-control col-8 mb-3" placeholder="id" id="identifier">
					<button type="button" class="btn btn-info" id="checkDup">중복확인</button>
				</div>
				<input type="password" class="form-control mb-3" placeholder="password" id="password">
				<input type="password" class="form-control mb-3" placeholder="check-password" id="checkPassword">
				<input type="text" class="form-control mb-3" placeholder="name" id="name">
				<input type="text" class="form-control mb-3" placeholder="e-mail" id="email">
				<input type="text" class="form-control mb-3" placeholder="address" id="address">
				<input type="text" class="form-control mb-3" placeholder="phoneNumber" id="phoneNumber">
				<button type="button" class="btn btn-success col-12" id="joinBtn">회원가입</button>
				<div class="text-center pt-5">
					또는 &nbsp;<a href="#"> 메인 페이지로</a>
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
		
		let checkDup;
		let checkIdBtn = 0; // 중복확인 판단 여부 확인
		
		$("#identifier").on("input",function(){
			checkIdBtn = 0;
		});
		
		
		$("#checkDup").on("click",function(){
			let id = $("#identifier").val();
			
			if(id ==""){
				alert("Id를 입력하세요");
				return;
			}
			$.ajax({
				type:"get"
				, url:"/user/duplicate-id"
				, data:{"loginId":id}
				, success:function(data){
						checkIdBtn = 1;
						if(data.isDuplicateId){
							checkDup = false; // 아래 회원가입에서 못 넘어가도록
							alert("중복된 아이디.");
						} else {
							checkDup = true; // 아래 회원가입에서 넘어가도록
							alert("사용 가능한 아이디.");
						}
					}
			});
			
		});
		
		$("#joinBtn").on("click",function(){
			let id = $("#identifier").val();
			let pw = $("#password").val();
			let checkPw = $("#checkPassword").val();
			let name = $("#name").val();
			let email = $("#email").val();
			let address = $("#address").val();
			let phoneNumber = $("#phoneNumber").val();
			
			
			// 공백이 없도록 유효성 검사
			if(id ==""){
				alert("Id를 입력하세요");
				return;
			}
			if(pw ==""){
				alert("password를 입력하세요");
				return;
			}
			if(pw != checkPw){
				alert("비밀번호를 확인하세요");
				return;
			}
			if(name ==""){
				alert("이름을 입력하세요");
				return;
			}
			if(email ==""){
				alert("email을 입력하세요");
				return;
			}
			if(address ==""){
				alert("주소를 입력하세요");
				return;
			}
			if(phoneNumber ==""){
				alert("핸드폰 번호를 입력하세요");
				return;
			}

			$.ajax({
					type:"post"
					, url:"/user/join"
					, data:{"loginId":id, "password":pw, "name":name, "email":email, "phoneNumber":phoneNumber, "address":address }
					, success:function(data){
						if(checkIdBtn !=0 ){
							if(data.result == "success" && (checkDup)){
								alert("회원가입 성공 메인 페이지로 이동합니다");
								location.reload();
							} else {
								alert("회원가입 실패! 아이디를 확인하세요.");
							}
						} else {
							alert("id 중복을 확인하세요");
						}
					}
					,error:function(){
						alert("회원가입 에러");
					}
				
			});
			
			
			
			
			
		});
		
		
		
	});

</script>
	

</body>
</html>