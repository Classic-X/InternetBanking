<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>

<%try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_bank","root","petervsock");
	String cid=request.getParameter("cid");
	String q="select * from client_account_details where customer_id='"+cid+"'";
	Statement ps=cn.createStatement();
	ResultSet rs=ps.executeQuery(q);
	int i=0,x=0;
%> <label for="opt">Select Account</label>
<select value="" class="form-control" id="opt" onchange="viewacinfo();" style="width: 30%">
<option value="Select" disabled selected>Select</option>
<% 
	while(rs.next())
	{ x++;
%><option value=<%=Integer.toString(x) %>><%=rs.getString(1) %></option>
<%
	}
%></select><br>
<%  ResultSet rs2=ps.executeQuery(q);
    while(rs2.next())
{   i++;
	%> 
	<div id=<%="pg"+Integer.toString(i)%> style="display:none;width:50%;" >
	<table class="table table-bordered">
		<tr>
			<th>Balance:</th>
			<td><%=rs2.getString(5) %></td>
		</tr>
		<tr>
			<th>Date of Creation:</th>
			<td><%=rs2.getString(4) %></td>
		</tr>
		<tr>
			<th>Account Type:</th>
			<td><%=rs2.getString(3) %></td>
		</tr>
	</table>
	<table  class="table table-bordered">
		<thead>
			<tr >
				<th colspan="2">Facilities Active</th>
			</tr>
		</thead>
		<tr>
			<th>Cheque: </th>
			<% if(rs2.getString(6).equals("true"))
{ %>
	<td><span class="glyphicon glyphicon-ok"></span></td>
<% }
else
{ %> 
	<td><span class="glyphicon glyphicon-remove"></span></td>
<% } %>

		</tr>
		<tr>
			<th>ATM:</th>
			<% if(rs2.getString(7).equals("true"))
{ %>
	<td><span class="glyphicon glyphicon-ok"></span></td>
<% }
else
{ %> 
	<td><span class="glyphicon glyphicon-remove"></span></td>
<% } %>

		</tr>
		
		<tr>
			<th>SMS:</th>
			<% if(rs2.getString(9).equals("true"))
{ %>
	<td><span class="glyphicon glyphicon-ok"></span></td>
<% }
else
{ %> 
	<td><span class="glyphicon glyphicon-remove"></span></td>
<% } %>

		</tr>
		<tr>
			<th>Mobile Banking: </th>
			<% if(rs2.getString(10).equals("true"))
{ %>
	<td><span class="glyphicon glyphicon-ok"></span></td>
<% }
else
{ %> 
	<td><span class="glyphicon glyphicon-remove"></span></td>
<% } %>

		</tr>
	</table>	   
	</div>

	<%
}
%>  <div id=x23 style="visibility: hidden;display:none;"><%=i%></div>
<%
}
catch(Exception e)
{
	e.printStackTrace();
}
%>