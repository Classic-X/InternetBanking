<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_bank","root","ANUJ");
	String rec_acc=request.getParameter("acc");
	String q="select salutation||' '||fname||' '||mname||' '||lname from client_personal_details where customer_id=(select customer_id from client_account_details where accno='"+rec_acc+"')";
	Statement ps=cn.createStatement();
	ResultSet rs=ps.executeQuery(q);
	int i=0;
	while(rs.next())
	{
%>     <p>Receiver Name :<%=rs.getString(1) %></p>
<%
	} 
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>