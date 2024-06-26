<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RM Mall</title>


<link rel="stylesheet" href="/static/css/slick.css" type="text/css">
<link rel="stylesheet" href="/static/css/slick-theme.css" type="text/css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
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
				<c:choose>
					<c:when test="${userName eq null }">
						<button type="button" class="btn"><a href="/user/login" class="text-white">결제 정보 추가</a></button>
						<button type="button" class="btn" id="goCart"><a href="/user/login" class="text-white">장바구니</a></button>
					</c:when>
					<c:otherwise>
						<button type="button" class="btn"><a href="/user/save/payment" class="text-white">결제 정보 추가</a></button>
						<button type="button" class="btn" id="goCart"><a href="/basket/list-view" class="text-white">장바구니</a></button>
					</c:otherwise>
				</c:choose>
			</nav>
			
			<article class="main-contents ml-3">
				<!-- popular box -->
				<div id="popular-product">
					<h2 class="text-center my-3">Popular products</h2>
					<div class="autoplay my-3">
						<c:forEach var="cloth" items="${clothList }">
							<div class="hot-product mt-3 mx-3"><a href="/main/clothes-detail?id=${cloth.clothId }"><img src="${cloth.clothImageUrl }" width="100%"></a></div>
						</c:forEach>
					</div>
				</div>
				<!-- /popular box -->
				
				<!-- product list -->
				<div>

					<div class="d-flex justify-content-center align-items-end product-text mt-2">
					<h4>our products</h4>
					</div>
					<div class="product-list d-flex flex-wrap justify-content-between">
					
					
						<c:forEach var="cloth" items="${clothList }">
						<a href="/main/clothes-detail?id=${cloth.clothId }" class="text-dark">
						<div class="products mt-3 mx-2" style=" cursor: pointer;">
							<img src="${cloth.clothImageUrl }" width="100%">	
							<div class="my-1 ml-1">${cloth.clothName }</div>
							<div style="font-size:12px" class="ml-1">₩${cloth.clothPrice }</div>
						</div>
						</a>
						</c:forEach>
						
									
					</div>					
				</div>
				<!-- /product list -->
			</article>
			
			
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	<script type="text/javascript" src="/static/js/slick.min.js"></script>
	
	
	<script>
	$(document).ready(function(){
			

		$("#searchInput").removeClass("d-none");
		$("#searchBtn").removeClass("d-none");
	
		
	});
	</script>
	
	
	
	
	
	<script type="text/javascript">
	$(document).ready(function(){
		

		$('.autoplay').slick({
			  slidesToShow: 5,
			  slidesToScroll: 1,
			  autoplay: true,
			  autoplaySpeed: 2000,
		});
		
		
	});
	</script>
	

</body>
</html>