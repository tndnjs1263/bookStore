<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<div><h3>책 정보 변경</h3></div>
		<div>
			<form method="post">
				<div>
					<div><label>책 이름</label></div>
					<input value="${book.title}" type="text" name="title">
				</div>
				
				<div>
					<div><label>책 출판사</label></div>
					<input value="${book.publisher}" type="text" name="publisher">
				</div>
				
				<div>
					<div><label>책 가격</label></div>
					<input value="${book.price}" type="text" name="price">
				</div>
				
				<div>
					<button>책 내용 변경</button>
					<a href="list"><button>취소</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>