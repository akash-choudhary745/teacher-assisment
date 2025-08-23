<%-- 
    Document   : regis1
    Created on : 22 Aug, 2024, 10:05:28 PM
    Author     : akash
--%>
<%@page import="java.sql.*" %>
<%
String s1=request.getParameter("un");
	String s2=request.getParameter("up");
	String s3=request.getParameter("uc");
        
        try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava68?useSSL=false","root","my@sql");
	Statement st=con.createStatement();
    st.executeUpdate("insert into regis values('"+s1+"','"+s2+"','"+s3+"')");
	//out.println("<h1>data insert</h1>");
	response.sendRedirect("login.jsp");
        con.close();
}
catch(Exception e)
{
	out.println(e);
}
        %>