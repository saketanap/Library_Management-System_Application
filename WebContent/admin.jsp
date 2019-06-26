<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Menu</title>
</head>
<body>

<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3 style="text-align:center">Hi <%=session.getAttribute("AdminID")%></h3> </td>
	<p align=right><a href="logout.jsp">Logout</a></p>
	</tr>
	
</table>

<form action="Admin_Query_1_1.jsp?namee=<%=session.getAttribute("AdminID")%>" method=post>
<table border="0" width="80%" align="center" bgcolor="#ff0000">
	<tr>
	<td><h3 style="text-align:center"><a href="Admin_Query_1_1.jsp?namee=<%=session.getAttribute("AdminID")%>">Add Document</h3> </td>
	</tr>
	
</table>
</form>

<form action="Admin_Query_2.jsp?namee=<%=session.getAttribute("AdminID")%>" method=post>
<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3 style="text-align:left">Document Status</h3> </td>
	</tr>
	<td>
	<input type="text" name="DocID" placeholder="DocID"/>
	</td>
	<td>
	<input type="submit" value="Search" id="Search" style="float: right;"/>
	</td>
</table>
</form>


<form action="Admin_Query_3.jsp?namee=<%=session.getAttribute("AdminID")%>" method=post>
<table border="0" width="80%" align="center" bgcolor="#ff0000">
	<tr>
	<td><h3 style="text-align:center"><a href="Admin_Query_3_1.jsp?namee=<%=session.getAttribute("AdminID")%>">Add Reader</h3> </td>
	</tr>
</table>
</form>

<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3 style="text-align:center"><a href="Admin_Query_4.jsp?namee=<%=session.getAttribute("AdminID")%>">Branch Information</h3> </td>
	</tr>
</table>

<table border="0" width="80%" align="center" bgcolor="#ff0000">
	<tr>
	<td><h3 style="text-align:center"><a href="Admin_Query_5.jsp?namee=<%=session.getAttribute("AdminID")%>">Frequent buyers</h3> </td>
	</tr>
</table>

<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3 style="text-align:center"><a href="Admin_Query_6.jsp?namee=<%=session.getAttribute("AdminID")%>">Top Borrowed Books</h3> </td>
	</tr>
</table>

<table border="0" width="80%" align="center" bgcolor="#ff0000">
	<tr>
	<td><h3 style="text-align:center"><a href="Admin_Query_7.jsp?namee=<%=session.getAttribute("AdminID")%>">Top Books of Year</h3> </td>
	</tr>
</table>

<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3 style="text-align:center"><a href="Admin_Query_8.jsp?namee=<%=session.getAttribute("AdminID")%>">Average Fine Paid</h3> </td>
	</tr>
</table>

</body>
</html>