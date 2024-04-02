<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
	<header class="d-flex">
		<div class="logo d-flex justify-content-start align-items-center pl-1">
			<img src="/static/images/RMmall.png" class="rounded-2 mt-1" height="150">
		</div>
		<div class="title">
			<h1 class="display-3">RM Shop</h1>
			<div id="banner" class="mt-4">
				<div class="d-flex searchClothes justify-content-end">
					<div class="d-flex">
					<input type="text" class="form-control mr-2 d-none" placeholder="Search" id="searchInput">
					<button type="button" class="btn btn-outline-primary btn-sm d-none" id="searchBtn">검색</button>
					</div>
					<div class="ml-5">
						<button type="button" onclick="location.href='/user/login'" class="btn btn-outline-success" id="loginBtn">로그인</button>
						<button type="button" onclick="location.href='/user/join'" class="btn btn-outline-success mx-3" id="joinBtn">회원가입</button>
					</div>
					<div class="d-flex">
						<div class="loginId mr-1 mt-1 d-none" id="loginId">${userName }</div><p class="mr-4 mt-2">님</p>
						<button type="button" class="btn btn-outline-info d-none" id="logoutBtn">로그아웃</button>
					</div>
				</div>
			</div>			
			
		</div>
		
	</header>

	
</body>
</html>