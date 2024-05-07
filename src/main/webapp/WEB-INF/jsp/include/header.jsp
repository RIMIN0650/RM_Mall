<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  
	<header class="d-flex">
		<div class="logo d-flex justify-content-start align-items-center pl-1">
			<a href="/main/home" class="text-white"><img src="/static/images/RMmall.png" class="rounded-2 mt-1" height="150" alt="Logo Img"></a>
		</div>
		<div class="title">
			<div class="display-3" style="text-decoration: none;" id="rmMallMark"><a href="/main/home" class="text-dark" >RM Mall</a></div>
			<div id="banner" class="mt-4">
				<div class="d-flex searchClothes justify-content-end">
					<div class="d-flex">
					<input type="text" class="form-control mr-2 d-none" placeholder="Search" id="searchInput">
					<button type="button" class="btn btn-outline-primary btn-sm d-none" id="searchBtn">검색</button>
					</div>
					<c:choose>
						<c:when test="${userName eq null }">
							<div class="ml-5">
								<a href="/user/login" class="btn btn-outline-success">로그인</a>
								<a href="/user/join" class="btn btn-outline-success ml-3">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="d-flex ml-5">
								<div class="loginId mr-3 mt-1" id="loginId">${userName } &nbsp;님</div>
								<button type="button" class="btn btn-outline-info" id="logoutBtn"><a href="/user/logout" class="text-info">로그아웃</a></button>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>			
		</div>
	</header>
	
</body>
</html>