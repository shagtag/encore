<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

${id==null?"로그인":"로그아웃"}

<c:if test="${sessionScope.emp==null}">
	<a href="${pageContext.request.contextPath}/login/sign.go">로그인</a>
</c:if>

<c:if test="${sessionScope.emp!=null}">
<strong>${sessionScope.emp.first_name}${sessionScope.emp.last_name} 고객냄</strong><br>
	<a href="${pageContext.request.contextPath}/login/signOut.go"> 로그아웃</a>
</c:if>

<p>

	<%
		String id = (String) session.getAttribute("id");
		if (session.getAttribute("id") != null) {
	%>

	<a href="/education/login/logProc">로그아웃</a>
	<%
		} else {
	%>
	<a href="/education/login/logInOut.jsp">로그인</a>
	<%
		}
	%>

<p>