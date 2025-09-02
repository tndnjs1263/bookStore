<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<div><h3>도서 책 등록</h3></div>
				<form method="post">
					<div class="row mb-2"></div>
					<div class="row mb-2">
						<div class="col-3"><label for="책제목">책제목</label></div>
						<input type="text" name="title" class="form-control form-control-sm">
					</div>
					
					<div class="row mb-2">
						<div class="col-3"><label for="출판사">출판사</label></div>
						<input type="text" name="publisher" class="form-control form-control-sm">
					</div>
					
					<div class="row mb-2">
						<div class="col-3"><label for="책가격">책 가격</label></div>
						<input type="text" name="price" class="form-control form-control-sm">
					</div>
					
					<div class="row mb-2">
						<div class="col-3"><label for="출판일">출판일</label></div>
						<input type="date" name="pubDate" class="form-control form-control-sm"/>
					</div>
					
					<div class="row mb-2">
						<div class="col-4"></div>
						<div class="col d-gred"><button class="btn btn-primary btn-sm">등록</button></div>
						<div class="col d-grid"><a href="list" class="btn btn-secondary btn-sm">취소</a></div>
						<div class="col-4"></div>
					</div>
				</form>
			</div>
			<div class="col-4"></div>
		</div>
		
	</div>
</body>
</html>
