<%@page import="java.sql.*" %>
 
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
	int x=st.executeUpdate("Delete from inmarks where ROLLNO='"+s1+"'");
         if(x!=0)
         {
        	response.sendRedirect("showall.jsp");
         }
         else
         {
         out.println("Invalid Roll Number");
         }
   
    con.close();
}
catch(Exception e)
{
	out.println(e);
}

}
    %>