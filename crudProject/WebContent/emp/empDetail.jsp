<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<hr>
<h1>직원정보 수정</h1>
<form action="empById.go" method="post">
직원번호: <input type="number" value="${emp.employee_id}" name="employee_id"><br>
이름: <input type="text" value="${emp.first_name}" name="first_name"><br>
성: <input type="text" value="${emp.last_name}" name="last_name"><br>
이메일: <input type="email" value="${emp.email}" name="email"><br>
전화번호: <input type="tel" value="${emp.phone_number}" name="phone_number"><br>
커미션: <input type="text" value="${emp.commission_pct}" name="commission_pct"><br>
부서번호: <input type="number" value="${emp.department_id}" name="department_id"><br>
직책: <input type="text" value="${emp.job_id}" name="job_id"><br>
입사일: <input type="date" value="${emp.hire_date}" name="hire_date"><br>
급여: <input type="number" value="${emp.salary}" name="salary"><br>
매니져: <input type="text" value="${emp.manager_id}" name="manager_id"><br>
<input type="submit" value="수정하기">

</form>
</body>
</html>