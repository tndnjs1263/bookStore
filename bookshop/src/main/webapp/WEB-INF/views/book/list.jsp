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

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
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
								<a href="update/${item.code}"><button type="button"  class="btn btn-warning btn-sm"><i class="bi bi-arrow-up-circle-fill"></i>변경</button></a>
								<a href="delete/${item.code}"><button type="button" class="btn btn-danger btn-sm"><i class="bi bi-trash"></i>삭제</button></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">
							<div class="pagination pagination-sm justify-content-center">
								<div class="page-item"><a href="?page=1${pager.query}" class="page-link">처음</a></div>
								<div class="page-item"><a href="?page=${pager.prev}${pager.query}" class="page-link">이전</a></div>									

								<c:forEach var="page" items="${pager.list}">
									<div class="page-item ${pager.page == page ? 'active' : ''}"><a href="?page=${page}${pager.query}" class="page-link">${page}</a></div>
								</c:forEach>
								
								<div class="page-item"><a href="?page=${pager.next}${pager.query}" class="page-link">다음</a></div>
								<div class="page-item"><a href="?page=${pager.last}${pager.query}" class="page-link">마지막</a></div>
							</div>
						</td>
					<tr>
				</tfoot>
			</table>
			
		</div>
		<div class="row">
			<a class="col" href="dummy" class="btn btn-info btn-sm">대량등록</a>
			<a class="col" href="init" class="btn btn-danger btn-sm">초기화</a>
			<a class="col" href="add" class="btn btn-primary btn-sm">등록</a>
			<a href=".."  href=".." class="btn btn-secondary btn-sm">이전</a>
		</div>
	</div>
</body>
</html>
