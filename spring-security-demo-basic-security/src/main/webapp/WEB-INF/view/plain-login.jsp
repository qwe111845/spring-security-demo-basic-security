<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
    <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
               method="POST">
      <p>
        User name= <input type="text" name="username" />
      </p>
       <p>
        User name= <input type="password" name="password" />
      </p>
      
      <input type="submit" value="Log in" />
    
    
    </form:form>
</body>
</html>