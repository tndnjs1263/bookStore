<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<div><h3>도서 책 추가</h3></div>
		
		<div>
			<form method="post">
				<div>
					<label for="책이름">책이름</label>
					<input type="text" name="title">
				</div>
				
				<div>
					<label for="책출판사">책 출판사</label>
					<input type="text" name="publisher">
				</div>
				
				<div>
					<label for="책가격">책 가격</label>
					<input type="text" name="price">
				</div>
				
				<div>
					<label for="출판일">출판일</label>
					<input type="date" name="pubDate"/>
				</div>
				
				<div>
					<button>추가</button>
					<a href="list"><button type="button">취소</button></a>
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>