<%@page import="br.com.G0921052e1210325.beans.GameResponseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gam�o - G0921052 e G1210325</title>
</head>
<body>
	<% 
		GameResponseBean gameResponse = (GameResponseBean)session.getAttribute("gameResponse");
		if(gameResponse != null && gameResponse.error)
		{
			%>
			<%=gameResponse.errorMessage%> <br/><br/>
			<% 
		}
	%>
	
	<form action="UserAccessServlet" method="post">
		Nome de Usu�rio: <input type="text" name="userName">
		<br/>
		<br/>
		Senha : <input type="password" name="userPassword">
		<br/>
		<br/>
		<input type="submit" value="Ok">
	</form>
</body>
</html>