@<%-- 
    Document   : insert
    Created on : 22 Aug, 2024, 11:10:52 PM
    Author     : akash
--%>

<html>
        <%@include file="menu1.jsp" %>
<body>

<div id="mydata">
<center>
<form action="insert1.jsp">
<table cellpadding="10px">
<tr>
<td>Enter Rno.</td>
<td><input type="text" class="A" name="u1" placeholder="Enter Rno."></td>
</tr>

<tr>
<td>Enter Name</td>
<td><input type="text" class="A" name="u2" placeholder="Enter Name..."></td>
</tr>
<tr>
<td>Enter Phy</td>
<td><input type="text" class="A" name="u3" placeholder="Enter Phy.."></td>
</tr>
<td>Enter Che</td>
<td><input type="text" class="A" name="u4" placeholder="Enter Che.."></td>
</tr>
<td>Enter Maths</td>
<td><input type="text" class="A" name="u5" placeholder="Enter Maths.."></td>
</tr>
<tr>
<th colspan="2"><input class="B" type="submit" value="Insert"></th>
</tr>
</table>
</div>
</form>
</center>
</body>

</html>