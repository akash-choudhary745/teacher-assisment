<%-- 
    Document   : search1
    Created on : 22 Aug, 2024, 11:38:23 PM
    Author     : akash
--%>

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
        String s1=request.getParameter("u1");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava68?useSSL=false","root","my@sql");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from inmarks where ROLLNO='"+s1+"'");
        %>
        
	<center>
            <%
            if(rs.next())
            {
                %>
            
            <form action="search.jsp">
	<table cellpadding='12'>
	<tr>
            <th>ROLLNO</th>
      <%= "<th><input type='text' class='A' value='"+rs.getString(1)+"' name='u1'></th>"%>
            </tr>
            
            <tr>
        	<th>NAME</th>
          <%=" <th><input type='text' class='A' value='"+rs.getString(2)+"' name='u2'></th>"%>
            </tr>
            
            <tr>
      <th>PHY</th>
           <%=" <th><input type='text' class='A' value='"+rs.getString(3)+"' name='u3'></th>"%>
            </tr>
            
            <tr>
          <th>CHE</th>
           <%=" <th><input type='text' class='A' value='"+rs.getString(4)+"' name='u4'></th>"%>
            </tr>
            
            <tr>
             <th>MATH</th>
            <%="  <th><input type='text' value='"+rs.getString(5)+"' name='u5'></th>"%>            
            </tr>
            
            <tr>
       
            <th colspan='2'><input type='submit' class='B' value='update'></th>
            </tr>
            </table>
        <%    
	}
	else
	{
		out.println("Invalid RollNo.");
	}
%>
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
