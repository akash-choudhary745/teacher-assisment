<%-- 
    Document   : login
    Created on : 22 Aug, 2024, 9:52:23 PM
    Author     : akash
--%>


<html>
<body>
    <%@include file="menu.jsp" %>
<div id="mydata">
<center>
<form action="login1.jsp">
    <%
    String s2=request.getParameter("s1");
    if(s2!=null)
    {
        %>
        <%=s2%>
        <%
    }
    %>
<table  align="center" cellpadding="12">
<caption>Login Page</caption>
<tr>
<td>Enter name</td>
<td><input type="text" class="A" name="u1" placeholder="Enter Name..." onkeyup="demo2(this.value)"></td>
</tr>

<tr>
<th colspan='2'><h5 id="h3"></h5</th>
</tr>

<tr>
<td>Password:</td>
<td><input type="password" class="A" name="u2" placeholder="Enter Password" onkeyup="demo(this.value)"></td>
</tr>

<tr>
<th colspan='3'><h5  id="h4"></h5></th>
</tr>
<tr>
<th colspan="2"><input class="B" type="submit" value="Login"></th>
</tr>
</table>
</div>
</form>
<script src="Demo8.js"></script>
<script src="Demo7.js"></script>
</center>
</body>

</html>