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
	String cid=request.getParameter("cid");
	String q="select * from client_account_details where customer_id='"+cid+"'";
	Statement ps=cn.createStatement();
	ResultSet rs=ps.executeQuery(q);
	int i=0;
%>Select Account:<select class="form-control" value="">
<option value="Select" disabled selected>Select</option>
<% 
	while(rs.next())
	{
%><option value=<%=rs.getString(1) %>><%=rs.getString(1) %></option>
<%
	}
%></select>
<%  ResultSet rs2=ps.executeQuery(q);
    while(rs2.next())
{   i++;
	%>
	<div id=<%="pg"+Integer.toString(i)%> style="visibility:hidden;display:none" >
	   <p>Balance:          <%=rs2.getString(5) %></p>
	   <p>Date of Creation: <%=rs2.getString(4) %></p>
	   <p>Account Type:     <%=rs2.getString(3) %></p>
	   <p>Cheque:           <%=rs2.getString(6) %></p>
	   <p>ATM:              <%=rs2.getString(7) %></p>
	   <p>Net Banking:      <%=rs2.getString(8) %></p>
	   <p>SMS:              <%=rs2.getString(9) %></p>
	   <p>Mobile Banking:   <%=rs2.getString(10) %></p>
	</div>
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