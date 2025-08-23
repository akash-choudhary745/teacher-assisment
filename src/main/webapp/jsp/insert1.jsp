<%-- 
    Document   : insert1
    Created on : 22 Aug, 2024, 11:13:10 PM
    Author     : akash
--%>
<%@page import="java.sql.*" %>
<%
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
    int x=st.executeUpdate("insert into inmarks values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
	if(x!=0)
	{
	response.sendRedirect("showall.jsp");
	}
	else
	{
	out.println("Data not insert..... ");
	}
	con.close();
	
}
catch(Exception e)
{
	out.println(e);
}
        %>