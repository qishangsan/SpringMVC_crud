<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 李啸
  Date: 2021/6/20
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true"%>
<%pageContext.setAttribute("ctp",request.getContextPath()); %>
<html>
<head>
    <title>员工修改页面</title>
</head>
<body>
<form:form action="${ctp}/emp/${employee.id}" modelAttribute="employee" method="post">
<input type="hidden" name="_method" value="put">
<input type="hidden" name="id" value="${employee.id}">
    email:<form:input path="email"></form:input><br/>
    gender:&nbsp;&nbsp;&nbsp;&nbsp;
            男：<form:radiobutton path="gender" value="1"/>&nbsp;&nbsp;&nbsp;&nbsp;
            女：<form:radiobutton path="gender" value="0"/><br/>
    birth:<form:input path="birth"/><br/>
    dept:<form:select path="department.id" items="${depts}" itemLabel="departmentName" itemValue="id"/>
    <input type="submit" name="提交"/>
</form:form>

</body>
</html>
