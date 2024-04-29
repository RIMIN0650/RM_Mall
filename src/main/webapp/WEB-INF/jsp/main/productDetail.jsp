<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품별 상세정보</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.18/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	
	<div id="wrap">
	<c:import url="/WEB-INF/jsp/include/header.jsp" />
	
	
	<div>
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
				<button type="button" class="btn"><a href="/basket/list-view">나의 장바구니</a></button>
			</nav>
			<article>
				<div class="d-flex justify-content-between">
					<div class="ml-3">
						<div>
							<img src="${clothInfo.clothImagePath }" width="500">
						</div>
						<div id="clothDetailDetail" class="mt-3">
							<div>
								${clothInfo.clothInfo }
							</div>
						</div>
					</div>
					<!-- 상품 상세정보 -->
					<div class="ml-5">
						<div>
							<h2>${clothInfo.clothName }</h2>
							<h5>${clothInfo.clothPrice }</h5>
							
							<hr>
							<select class="selectpicker" data-width="200px" id="selectSize">
								  <option value="0" selected>사이즈 선택</option>
								  <option value="XS">XS</option>
								  <option value="S">S</option>
								  <option value="M">M</option>
								  <option value="L">L</option>
								  <option value="XL">XL</option>
							</select>
						<div>
							<input type="text" class="form-control mt-3" value="1" id="productCnt">
						<div class="d-flex justify-content-between mt-1">
							<button type="button" class="btn btn-info col-6" id="incCntBtn">+</button>
							<button type="button" class="btn btn-danger col-6" id="decCntBtn">-</button>
						</div>
						</div>
						</div>
						<div>
							<button type="button" class="btn btn-secondary col-12 mt-3" id="addCartBtn">장바구니에 담기</button>
						</div>
						<div>
							<button type="button" class="btn btn-danger col-12 mt-3"><a href="/main/home" class="text-white">돌아가기</a></button>
						</div>
					</div>
					<!-- 상품 상세정보 -->
				</div>
			</article>
		</section>
	</div>
	
	
	
	<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
	
	
	<script>
	
	$(document).ready(function(){
		let chooseSize = 0;
		let cnt = 1;
		
		$("#productCnt").on("input",function(){
			cnt = $("#productCnt").val();
		});
		
		
		$("#incCntBtn").on("click",function(){
			cnt = $("#productCnt").val();
			cnt++;
			$("#productCnt").val(cnt);
		});
		
		
		$("#decCntBtn").on("click",function(){
			if(cnt>1){
				cnt = $("#productCnt").val();
				cnt--;
				$("#productCnt").val(cnt);
			} else {
				alert("0 이하의 숫자는 입력할 수 없습니다.");
				$("#productCnt").val(1); // 0 이하로 입력한 후 버튼 눌렀을 때 기본 숫자 1로 만들어주기
			}
		});
		
		$("#selectSize").change(function(){
			let selectSize = document.getElementById("selectSize");
			let size = selectSize.options[selectSize.selectedIndex].value;				
			chooseSize = size;
		});
		
	
		
		$("#addCartBtn").on("click",function(){
			
			var clothName = "${clothInfo.clothName }"
			
			if(chooseSize == 0){
				alert("사이즈를 선택하세요");
				return;
			}
			
			$.ajax({
				type:"post"
				, url:"/user/add-basket"
				, data:{"clothName" : "${clothInfo.clothName }"
						, "clothSize" : chooseSize
						, "clothCount" : cnt}
				, success:function(data){
					if(data.result == "success"){
						alert("장바구니에 담겼습니다!");
					} else {
						alert("실패");
					}
				}
				, error:function(){
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