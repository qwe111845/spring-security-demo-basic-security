<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>lin Company Home Page</title>
</head>

<body>
	<h2>lin Company Home Page</h2>
	<hr>
	
	Welcome to the lin company home page!
	
	<p>
	   <a href="${pageContext.request.contextPath}/leaders"> LeaderShip Meeting </a>
	   (Only for Manager peeps)
	</p>
	
	<p>
	   <a href="${pageContext.request.contextPath}/systems"> Systems Meeting </a>
	   (Only for Admin peeps)
	</p>
	
	
	<p>
	  User Name: <security:authentication property="principal.username" />
	</p>
	
	<p>
	  Role(s): <security:authentication property="principal.authorities" />
	</p>
	
	<form:form action="${pageContext.request.contextPath}/logout"
	           method="POST">
	
	    <input type="submit" value="Logout"/>
	 
	</form:form>

</body>

</html>