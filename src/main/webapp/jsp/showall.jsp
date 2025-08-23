<%-- 
    Document   : showall
    Created on : 22 Aug, 2024, 11:24:26 PM
    Author     : akash
--%>
<%@page import="java.sql.*" %>

<html>
<body>
    <%@include file="menu1.jsp" %> 
    <%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava68?useSSL=false","root","my@sql");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from inmarks ORDER BY ROLLNO ");
        %>
	<center>
	<table cellpadding='12'>
	<tr>
	<th>ROLLNO</th>
	<th>NAME</th>
	<th>PHY</th>
	<th>CHE</th>
	<th>MATH</th>
	</tr>
        <%
	while(rs.next())
	{
	%>	
        <tr>
            <%
        out.println("<td>"+rs.getString(1)+"</td>");
        out.println("<td>"+rs.getString(2)+"</td>");		
        out.println("<td>"+rs.getString(3)+"</td>");		
        out.println("<td>"+rs.getString(4)+"</td>");		
        out.println("<td>"+rs.getString(5)+"</td>");
        %>
        </tr>		
	<%	
	}
%>
	</table>
	</center>
        <%
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
out.close();
%>
</body>
</html>
