<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Page</title>
	
	<style>
	    .failed {
	        color: red;
	    }
	</style>
</head>
<body>
    <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
               method="POST">
               
      <h3> My Custom Login Page </h3>
               
      <c:if test="${param.error != null }">
          <i class="failed">Sorry! You entered invalid user name/password.</i>
      </c:if>
      <p>
        User name: <input type="text" name="username" />
      </p>
      
      <p>
        Password:   <input type="password" name="password" />
      </p>
      
      <input type="submit" value="Log in" />
    
    
    </form:form>
</body>
</html>