<%-- <%@page import="com.encore.model.EmpVO"%> --%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- ,: OR (각자독립) -->
<!-- 한칸이상 공백 : 자손 -->
<!-- : 자식 -->
<style>
	h1, h2{
		color: orange;
	}
	table tr:nth-child(2n){
		background-color: lightgreen;
	}
	table tr:nth-child(2n+1){
		background-color: lightgray;
	}
	table>thead>tr.head{
		background-color: hotpink;
	}
	#here{
		border: 5px dotted red;
	}

</style>

<script>
    function call(empid){
        ret = confirm("삭제?");
        if(ret)
            location.href='empDelete.go?empid=' + empid;
    }
    
    function retrieve() {
        var dept = document.getElementById("department_id").value;
        var job = document.getElementById("job_id").value;
        var salary = document.getElementById("salary").value;
        var param = "deptid=" + dept + "&jobid=" + job +"&salary=" + salary;
        
        var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("here").innerHTML = this.responseText;
		    }
		  };
		 
		  xhttp.open("GET", "emplist2.go?" + param);
		  xhttp.send();    
    }
</script>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<hr>
부서번호: 
<select name="department_id" id = "department_id">
<option value="0">부서전체</option>
	<c:forEach var="dept" items="${deptlist}">
		<option value="${dept.department_id }">
		${dept.department_name }
		</option>
	</c:forEach>	
</select>

직책:
<select name="job_id" id= "job_id">
<option value="0">직책전체</option>
	<c:forEach var="job" items="${joblist}">
		<option value="${job.job_id}"
		${dept.job_id==emp.job_id?"selected":""}>
		${job.job_title}</option>
	</c:forEach>
</select>

급여:
<input type="number" name="salary" id="salary" value="">이상



<button onclick="retrieve();">조회</button>

<hr>
<h1>직원 목록</h1>
<h2>직원정보를 조회합니다.</h2>
<div id="here">
<table border="1">
	<thead> 
	<tr class="head">
		<td id="here">직원번호</td>
		<td>이름</td>
		<td>성</td>
		<td>이메일</td>
		<td>이메일2</td>
		<td>전화번호</td>
		<td>직급</td>
		<td>입사일</td>
		<td>부서</td>
		<td>급여</td>
		<td>매니져</td>
		<td>커미션</td>
		<td>커미션</td>
	</tr></thead>
	<c:forEach items="${emps}" var="emp">
	<tr>
		<td><a href="empById.go?empid=100">${emp.employee_id }</a></td>
		<td>${emp.first_name }</td>
		<td>${emp.last_name }</td>
		<td>${emp.email }</td>
		<td>		
		${fn:substring(emp.email,0,2)}</td>
		<td>${emp.phone_number }</td>
		<td>${emp.job_id }</td>
		<td>
		<fmt:formatDate pattern="yyy/MM/dd hh:mm:ss"
		value="${emp.hire_date }"/> </td>
		<td>${emp.department_id }</td>
		<td>
		<fmt:setLocale value="en_US"/>
		<fmt:formatNumber value="${emp.salary }" pattern="###,###"
		type="currency"/>		
		</td>	
		<td>${emp.manager_id }</td>
		<td>${emp.commission_pct }</td>
		<td><button onclick="location.href='empDelete.go?empid=${emp.employee_id }'">삭제</button></td>
	</tr>
	
	</c:forEach>
</table></div>




<%-- <table border="1"></table>
<tr>
	<td>직원번호</td><td>이름</td>
</tr>
<%
List<EmpVO> emps = (List<EmpVO>)request.getAttribute("emps");
for(EmpVO emp: emps){ %>
	<tr>
	<td><%=emp.getEmployee_id() %></td>
	<td><%=emp.getFirst_name() %></td>
</tr>	
<%	} %>
</table> --%>
</body>
</html>