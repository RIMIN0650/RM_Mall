<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Cart</title>
</head>
<body>
	<div id="wrap">
		사용자 장바구니 목록 보여주는 페이지
		
		사용자 id : ${userName }
		
		
		
		
		제품 아이디 : ${basket.clothId }
		제품 사이즈 : ${basket.clothSize }
		제품 개수 : ${basket.clothCount }
		<hr>
			
	</div>
</body>
</html>