<%@page import="java.sql.*" %>
<html>
<body>
 <%@include file="menu1.jsp" %> 
<div id="mydata">
<center>
<form action="delete1.jsp">
<table cellpadding="12px">
<tr>
<td>Enter Rno.</td>
<td><input type="text" class="A" name="u1" placeholder="Enter Rno."></td>
</tr>
<tr>
<th colspan="2"><input class="B" type="submit" name="b1" value="Delete"></th>
</tr>
</table>

</form>
</center>
</div>
</body>
</html>