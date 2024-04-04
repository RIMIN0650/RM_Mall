<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add Product</title>


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
			
			<article class="main-contents ml-3">
				
				<div class="d-flex justify-content-between mx-3 mt-5">
					<div>
						<img src="https://cdn.pixabay.com/photo/2020/06/05/06/26/fashion-5261649_640.jpg">
						<input type="file">
					</div>
					<div class="mr-3 mt-2">
						<div class="d-flex align-items-center justify-content-between">
							<label>XS</label>
							<input type="text" class="form-control input-size" id="countXS">
						</div>
						<div class="d-flex align-items-center justify-content-between">
							<label>S</label>
							<input type="text" class="form-control input-size" id="countS">
						</div>
						<div class="d-flex align-items-center justify-content-between">
							<label>M</label>
							<input type="text" class="form-control input-size" id="countM">
						</div>
						<div class="d-flex align-items-center justify-content-between">
							<label>L</label>
							<input type="text" class="form-control input-size" id="countL">
						</div>
						<div class="d-flex align-items-center justify-content-between">
							<label>XL</label>
							<input type="text" class="form-control input-size" id="countXL">
						</div>
					</div>
				</div>
				
				<div class="input-product-info mt-5">
					<div>
						<div class="d-flex jusfify-content-center align-items-center my-3">
							<input type="text" class="form-control mx-3" placeholder="상품명" id="product-name">		
							<input type="text" class="form-control mx-3" placeholder="가격" id="productPrice">					
							<div>
							<select class="selectpicker" data-width="200px" id="selectCategory">
							  <option value="0" selected>분류 선택</option>
							  <option value="1">아우터</option>
							  <option value="2">셔츠/블라우스</option>
							  <option value="3">스커트</option>
							  <option value="4">팬츠</option>
							  <option value="5">데님</option>
							  <option value="6">니트/가디건</option>
							  <option value="7">드레스</option>
							  <option>악세서리</option>
							</select>
							</div>
						</div>
						<div>
							<input type="text" class="form-control ml-3 mb-3" placeholder="상품 이미지 주소 // 나중에 파일 업로드로 대체" id="imagePath">
							<input type="text" class="form-control ml-3" placeholder="상품 상세 정보" id="productDetail">
						</div>
					</div>
					<div class="d-flex justify-content-end">
						<button type="button" class="btn btn-danger btn-lg mr-5" id="goBackBtn"><a href="/main/home" class="text-white">돌아가기</a></button>
						<button type="button" class="btn btn-info btn-lg" id="addProductBtn">상품 추가</button>
					</div>
				</div>
			</article>
			
			
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>


	




	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
	
	
	<script>
		$(document).ready(function(){
			let selectCat = 0;
			
			
			
			$("#goBackBtn").on("click",function(){
				alert("goBackBtn");
			});
			$("#selectCategory").change(function(){
				let selectCategory = document.getElementById("selectCategory");
				let category = selectCategory.options[selectCategory.selectedIndex].value;				
				selectCat = category;
			});
			$("#addProductBtn").on("click",function(){
				
				let productName = $("#product-name").val();
				let imagePath = $("#imagePath").val();
				let productDetail = $("#productDetail").val();
				let countXS = $("#countXS").val();
				let countS = $("#countS").val();
				let countM = $("#countM").val();
				let countL = $("#countL").val();
				let countXL = $("#countXL").val();
				
				
				
				if(productName == ""){
					alert("제품명을 입력하세요");
					return;
				}
				
				if(selectCat == 0){
					alert("제품 카테고리를 선택하세요");
					return;
				}
				
				if(imagePath == ""){
					alert("이미지파일을 선택하세요");
					return;
				}
				
				if(productDetail == ""){
					alert("제품 상세 정보를 입력하세요");
					return;
				}
				
				
				if(countXS == ""){
					countXS = 0;
				}
				if(countS == ""){
					countS = 0;
				}
				if(countM == ""){
					countM = 0;
				}
				if(countL == ""){
					countL = 0;
				}
				if(countXL == ""){
					countXL = 0;
				}
				
				
				
				alert(countXS+countS+countM+countL+countXL);
				
				
				
				
				
					
				
			});
			
		});
	
	
	
	
		$(".selectpicker").selectpicker({
		});
		
		
		
	</script>
</body>
</html>