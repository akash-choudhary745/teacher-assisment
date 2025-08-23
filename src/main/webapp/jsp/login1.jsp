<%-- 
    Document   : login1
    Created on : 22 Aug, 2024, 10:39:51 PM
    Author     : akash
--%>

<%@page import="java.sql.*" %>
<%
String s1=request.getParameter("u1");
	String s2=request.getParameter("u2");
        try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava68?useSSL=false","root","my@sql");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from regis where UNAME='"+s1+"' AND UPASS='"+s2+"'");
	if(rs.next())
	{
          // HttpSession session = request.getSession();
           // session.setAttribute("u1", s1);  
         // Cookie ck=new Cookie("un","ram");
          //  ck.setMaxAge(60*60);
            //ck.getName();
            //response.addCookie(ck);
          //  Cookie cn=new Cookie("uc","Akash");
            //cn.setMaxAge(60*60);
           // cn.getName();
            //response.addCookie(cn);
	response.sendRedirect("menu1.jsp");
	}
	else
	{
                           response.sendRedirect("login.jsp?s1=Invalid username and Password");
	}
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>