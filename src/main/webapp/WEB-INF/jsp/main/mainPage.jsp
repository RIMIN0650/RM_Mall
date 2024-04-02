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
				<!-- popular box -->
				<div id="popular-product">
					<h2 class="text-center my-3">Popular products</h2>
					<div class="autoplay my-3">
	
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2024/02/15/15/29/crocus-8575610_1280.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491_640.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2017/08/01/11/48/woman-2564660_640.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2013/11/14/12/34/neckties-210347_640.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2016/11/29/09/19/baby-1868683_640.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_640.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_640.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2020/02/05/11/06/woman-4820889_640.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2023/11/04/04/45/woman-8364265_640.jpg" height="100%"></div>
						<div class="hot-product bg-success mt-3 mx-3"><img src="https://cdn.pixabay.com/photo/2018/12/05/13/41/woman-3857758_640.jpg" height="100%"></div>
	
	
					</div>
				</div>
				<!-- /popular box -->
				
				<!-- product list -->
				<div>
					<div class="d-flex justify-content-center align-items-end product-text mt-2">
					<h4>our products</h4>
					</div>
					
					<div class="product-list d-flex flex-wrap justify-content-between">
						<div class="products mt-3 mx-2">
							<img src="https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_640.jpg" height="50%" class="mb-2">
							<div class="ml-1"><b>르코르 데님 와이드팬츠</b></div>
							<div class="cloth-info ml-2 mt-2">
								<div>잔여 사이즈 : S M L XL</div>
								<div><del>KRW 129,000 ₩</del>&nbsp;&nbsp;97,000 ₩</div>
							</div>
						</div>
						<div class="products mt-3 mx-2">
							<img src="https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_640.jpg" height="50%" class="mb-2">
							<div class="ml-1"><b>르코르 데님 와이드팬츠</b></div>
							<div class="cloth-info ml-2 mt-2">
								<div>잔여 사이즈 : S M L XL</div>
								<div><del>KRW 129,000 ₩</del>&nbsp;&nbsp;97,000 ₩</div>
							</div>
						</div>
						<div class="products mt-3 mx-2">
							<img src="https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_640.jpg" height="50%" class="mb-2">
							<div class="ml-1"><b>르코르 데님 와이드팬츠</b></div>
							<div class="cloth-info ml-2 mt-2">
								<div>잔여 사이즈 : S M L XL</div>
								<div><del>KRW 129,000 ₩</del>&nbsp;&nbsp;97,000 ₩</div>
							</div>
						</div>
						<div class="products mt-3 mx-2">
							<img src="https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_640.jpg" height="50%" class="mb-2">
							<div class="ml-1"><b>르코르 데님 와이드팬츠</b></div>
							<div class="cloth-info ml-2 mt-2">
								<div>잔여 사이즈 : S M L XL</div>
								<div><del>KRW 129,000 ₩</del>&nbsp;&nbsp;97,000 ₩</div>
							</div>
						</div>
	
					
						
						
						
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
		
		
		$("#viewPrev").on("click",function(){
			alert("prev");
		});
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