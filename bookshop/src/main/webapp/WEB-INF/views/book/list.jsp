<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container">
		<div>
			<h3>책 리스트</h3>
		</div>
		<div class="mb-2">
			<form class="row">
				<div class="col-6"></div>
				<div class="col-2">
					<select name="search" class="form-select form-select-sm">
						<option value="1">도서번호</option>
						<option value="2">도서명</option>
						<option value="3">출판사</option>
					</select>
				</div>
				<div class="col">
					<input type="text" name="keyword" class="form-control form-control-sm">
				</div>
				
				<div class="col-1 d-grid">
					<button class="btn btn-primary btn-sm">검색</button>
				</div>
			</form>
		</div>
		<div>
			<table border="1" class="table table-sm">
				<thead class="table-dark">
					<tr>
						<th><c:out value="도서번호"/></th>
						<th><c:out value="도서명"/></th>
						<th><c:out value="출판사"/></th>
						<th><c:out value="가격"/></th>
						<th><c:out value="출판일"/></th>
						<th><c:out value="관리"/></th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="1">책이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td><c:out value="${item.code}"/></td>
							<td><c:out value="${item.title}"/></td>
							<td><c:out value="${item.publisher}"/></td>
							<td><c:out value="${item.price}"/></td>
							<td><c:out value="${item.pubDate}"/></td>
							<td>
								<a href="update/${item.code}"><button type="button">변경</button></a>
								<a href="delete/${item.code}"><button type="button">삭제</button></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">
							<div>
								<div><a href="?page=1${pager.query}">처음</a></div>
								<div><a href="?page=${pager.prev}${pager.query}">이전</a></div>									

								<c:forEach var="page" items="${pager.list}">
									<div><a href="?page=${page}${pager.query}">${page}</a></div>
								</c:forEach>
								
								<div><a href="?page=${pager.next}${pager.query}">이후</a></div>
								<div><a href="?page=${pager.last}${pager.query}">마지막</a></div>
							</div>
						</td>
					<tr>
				</tfoot>
			</table>
			
		</div>
		<div>
			<a href="dummy">대량등록</a>
			<a href="init">초기화</a>
			<a href="add"><button>추가</button></a>
			<a href=".."><button type="button">이전</button></a>
		</div>
	</div>
</body>
</html>