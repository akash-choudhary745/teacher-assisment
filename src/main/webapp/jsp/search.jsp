<%-- 
    Document   : search
    Created on : 22 Aug, 2024, 11:37:03 PM
    Author     : akash
--%>
<%@page import="java.sql.*" %>
  <%
      String s22=request.getParameter("b2");
      if(s22!=null)
      {
        String s1=request.getParameter("u1");
        String s2=request.getParameter("u2");
	String s3=request.getParameter("u3");
        String s4=request.getParameter("u4");
	String s5=request.getParameter("u5");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava68?useSSL=false","root","my@sql");
	Statement st=con.createStatement();
	    int x=st.executeUpdate("update inmarks set NAME='"+s2+"', PHY='"+s3+"', CHE='"+s4+"',  MATH='"+s5+"'  where  ROLLNO='"+s1+"' ");
        %>
        	
            <%
            if(x!=0)
            {
               response.sendRedirect("showall.jsp");
            
           
	}
	else
	{
		out.println("data not update.....");
	}
    con.close();   
}
catch(Exception e)
{
	out.println(e);
}
}
%>
<html>
<body>
 <%@include file="menu1.jsp" %> 
<div id="mydata">
<center>
<form action="search.jsp">
<table cellpadding="12px">
<tr>
<td>Enter Rno.</td>
<td><input type="text" class="A" name="u1" placeholder="Enter Rno."></td>
</tr>
<tr>
<th colspan="2"><input class="B" type="submit" name="b1" value="search"></th>
</tr>
</table>
</div>
</form>
    <% 
    String s21=request.getParameter("b1");
    if(s21!=null)
    {
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
      <%= "<th><input type='text'  value='"+rs.getString(1)+"' name='u1'></th>"%>
            </tr>
       
            <tr>
        	<th>NAME</th>
          <%=" <th><input type='text'  value='"+rs.getString(2)+"' name='u2'></th>"%>
            </tr>
            
            <tr>
      <th>PHY</th>
           <%=" <th><input type='text'  value='"+rs.getString(3)+"' name='u3'></th>"%>
            </tr>
            
            <tr>
          <th>CHE</th>
           <%=" <th><input type='text'  value='"+rs.getString(4)+"' name='u4'></th>"%>
            </tr>
            
            <tr>
             <th>MATH</th>
            <%="  <th><input type='text' value='"+rs.getString(5)+"' name='u5'></th>"%>            
            </tr>
            
            </table>
            </form>
        <%    
	}
	else
	{
		out.println("Invalid RollNo.");
	}
    con.close();
}
catch(Exception e)
{
	out.println(e);
}
out.close();
}
    %>
</center>
</body>
</html>