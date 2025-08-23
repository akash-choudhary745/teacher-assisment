<%-- 
    Document   : regis
    Created on : 22 Aug, 2024, 10:05:12 PM
    Author     : akash
--%>

<html>

<body>
    <%@include file="menu.jsp" %>
<div id="mydata">
<center>
<form action="regis1.jsp">
<table  align="center" cellpadding="12">
<caption>Registration Page</caption>
<tr>
<td>Enter name</td>
<td><input type="text" class="A" name="un" placeholder="Enter Name..."></td>
</tr>

<tr>
<td>Enter pass</td>
<td><input type="password" class="A" name="up" placeholder="Enter Password"></td>
</tr>
<tr>
<td>Enter CN</td>
<td><input type="text" class="A" name="uc" placeholder="Enter CN...."></td>
</tr>
<tr>
<th colspan="2"><input class="B" type="submit" value="Registration"></th>
</tr>
</table>
</div>
</form>
</center>
</body>
</html>