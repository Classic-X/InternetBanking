<%@ page import="java.sql.*,java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_bank","root","petervsock");

String qr="insert into netbanking_active values (?,?,?,?)";
String param[]={"c1","c2","c3","c4"};
String details[]=new String[4];

for(int i=0;i<4;i++)
{
	details[i]=request.getParameter(param[i]);
	
}

PreparedStatement ps=cn.prepareStatement(qr);
for(int i=0;i<4;i++)
{
	ps.setString(i+1, details[i]);
	
}
ps.executeUpdate(); %>