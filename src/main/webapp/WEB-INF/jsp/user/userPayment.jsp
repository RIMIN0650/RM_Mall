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
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<section class="d-flex">
			<nav class="main-menu bg-info">
				<ul class="nav flex-column">
					<li class="nav-item mt-3 pl-3"><a href="/main/clothes/classify?clothCategory=1" class="text-white">아우터</a></li>
					<li class="nav-item mt-3 pl-3"><a href="/main/clothes/classify?clothCategory=2" class="text-white">셔츠/블라우스</a></li>
					<li class="nav-item mt-3 pl-3"><a href="/main/clothes/classify?clothCategory=3" class="text-white">스커트</a></li>
					<li class="nav-item mt-3 pl-3"><a href="/main/clothes/classify?clothCategory=4" class="text-white">팬츠</a></li>
					<li class="nav-item mt-3 pl-3"><a href="/main/clothes/classify?clothCategory=5" class="text-white">데님</a></li>
					<li class="nav-item mt-3 pl-3"><a href="/main/clothes/classify?clothCategory=6" class="text-white">니트/가디건</a></li>
					<li class="nav-item mt-3 pl-3"><a href="/main/clothes/classify?clothCategory=7" class="text-white">드레스</a></li>
					<li class="nav-item mt-3 pl-3"><a href="/main/clothes/classify?clothCategory=8" class="text-white">악세서리</a></li>
				</ul>
				<br><br><br>
				<button type="button" class="btn"><a href="/basket/list-view" class="text-white">장바구니</a></button>
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
						<div>카드번호</div>
						<input type="text" class="form-control" placeholder="XXXX-XXXX-XXXX-XXXX" id="cardNumber" maxlength="16">
						<div class="mt-3">
							<div>유효기간</div>	
							<div class="d-flex">
								<input type="password" class="form-control col-3" placeholder="MM" id="validMonth" maxlength="2">
								<input type="password" class="form-control col-3 ml-1" placeholder="YY" id="validYear" maxlength="2">
								<button type="button" class="btn btn-success ml-4" id="checkValidDate">확인</button>
							</div>
							<div>카드 비밀번호</div>
							<div class="d-flex">
								<input type="password" class="form-control col-5 mt-3" placeholder="****" id="cardPassword" maxlength="4">
								<button type="button" class="btn btn-success ml-4 mt-3" id="checkCardPw">확인</button>
							</div>
						</div>
					</div>
					<div class="d-flex justify-content-between">
							<button type="button" class="btn btn-danger btn-lg mt-5" id="backBtn"><a href="/main/home" class="text-white">돌아가기</a></button>
							<button type="button" class="btn btn-info btn-lg mt-5" id="saveBtn">저장하기</button>
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
		let bankType = 0;
		
		$("#selectCategory").change(function(){
			let selectCategory = document.getElementById("selectCategory");
			let category = selectCategory.options[selectCategory.selectedIndex].value;				
			bankType = category;
		});
		
		$("#checkValidDate").on("click",function(){
			$("#validYear").prop("type","text");
			$("#validMonth").prop("type","text");
		});
		
		$("#checkCardPw").on("click",function(){
			$("#cardPassword").prop("type","text");
			
		});
		
		
		
		$("#saveBtn").on("click",function(){
			
			let cardNumber = $("#cardNumber").val();
			let valMonth = $("#validMonth").val();
			let valYear = $("#validYear").val();
			let cardPw = $("#cardPassword").val();
			
			alert(cardNumber);
			
			if(bankType==0){
				alert("은행을 선택해주세요");
				return;
			}
			if(cardNumber == ""){
				alert("카드 번호를 입력해주세요");
				return;
			}
			if(cardNumber.length!=16){
				alert("카드 번호 16자리를 모두 입력해 주세요");
				return;
			}
			if(valMonth == ""){
				alert("카드 유효 달을 입력하세요");
				return;
			}
			if(valYear == ""){
				alert("카드 유효 년을 입력하세요")
				return;
			}
			if(cardPw == ""){
				alert("카드 비밀번호를 입력하세요");
				return;
			}
			
			
			$.ajax({
				type:"post"
				, url:"/user/payment"
				, data:{"bankType" : bankType
						, "cardNumber" : cardNumber
						, "validMonth" : valMonth
						, "validYear" : valYear
						, "cardPassword" : cardPw}
				, success:function(data){
					if(data.result == "success"){
						alert("성공");
					} else {
						alert("실패");
					}
				}
				,error:function(){
					alert("에러");
				}
			});
		});
	});
	
	
	
	$(".selectpicker").selectpicker({
	});
	</script>
	
	
	
</body>
</html>