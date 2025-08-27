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
		<div><h3>사용자 정보 변경</h3></div>
		
		<div>
			<form method="post">
				<div>
					<div><label>아이디:</label></div>
					<div><input type="text" name="id" value="${item.id}" readonly="readonly"></div>
				</div>
				
				<div>
					<div><label>비밀번호:</label></div>
					<div><input type="password" name="password" value="${item.password}"></div>
				</div>
				
				<div>
					<div><label>성명:</label></div>
					<div><input type="text" name="name" value="${item.name}"></div>
				</div>
				
				<div>
					<div><label>전화번호</label></div>
					<div><input type="text" name="tell" value="${item.tell}"></div>
				</div>
				
				<div>
					<div><button>등록</button></div>
					<div><a href="list"><button type="button">취소</button></a></div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>