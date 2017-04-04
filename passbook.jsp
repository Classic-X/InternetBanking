<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@page import="java.io.*,java.sql.*" %>
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
	String with="";
	String depo="";
	String Particular="";
	float total=0.00f;
	String accno=request.getParameter("accno");
	if(true)
	{
		
	}
	String q="select * from transaction where sender_acc_no=? or receiver_acc_no=?";
	Statement ps=cn.createStatement();
	ResultSet rs=ps.executeQuery(q);
	int i=0;
%><table class="table">
   <tr><th>Date</th><th>Particulars</th><th>Withdraw</th><th>Deposit</th><th>Total</th></tr><%
	while(rs.next())
	{ if(rs.getString(1)==accno)
	  {
		 with=rs.getString(3);
		 depo="";
		 total=rs.getInt(5);
		 Particular="Sent to acc_no "+rs.getString(2);
	  }
	else if(rs.getString(2)==accno)
	{
		depo=rs.getString(3);
		with="";
		total=rs.getInt(6);
		Particular="Sent from acc_no "+rs.getString(2);
	}
%>    <tr><td><%=rs.getString(4) %></td><td><%=Particular %></td><td><%=with%></td><td><%=depo %></td><td><%=total %></td></tr>
	<%}%>
</table>
<%}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>