<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reader Menu</title>
</head>
<body>
<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3  style="text-align:center">Hi <%=session.getAttribute("usrname")%></h3> </td>
	<p align=right><a href="logout.jsp">Logout</a></p>
	</tr>
</table>

<form action="Reader_Query_1.jsp?namee=<%=session.getAttribute("usrname")%>" method=post>
<table border="0" width="80%" align="center" bgcolor="#ff0000">
	<tr>
	<td><h3 style="text-align:left">Search</h3> </td>
	</tr>
	<td>
	<input type="text" name="ID" placeholder="id"/>
	</td>
	<td>
	<input type="text" name="Title" placeholder="title"/>
	</td>
	<td>
	<input type="text" name="PublisherName" placeholder="publishername"/>
	</td>
	<td>
	<input type="submit" value="Search" id="Search" style="float: right;"/>
	</td>
	<tr>
	 
    
</tr>
</table>

</form>

<form action="Reader_Query_2.jsp?namee=<%=session.getAttribute("usrname")%>" method=post>
<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3 style="text-align:left">Document Checkout</h3> </td>
	</tr>
	<td>
	<input type="text" name="DocID" placeholder="DocID"/>
	</td>
	<td>
	<input type="submit" value="Check Out" id="Search" style="float: right;"/>
	</td>
</table>
</form>

<form action="Reader_Query_3.jsp?namee=<%=session.getAttribute("usrname")%>" method=post>
<table border="0" width="80%" align="center" bgcolor="#ff0000">
	<tr>
	<td><h3 style="text-align:left">Document Return</h3> </td>
	</tr>
	<td>
	<input type="text" name="DocID" placeholder="DocID"/>
	</td>
	<td>
	<input type="submit" value="Return" id="Search" style="float: right;"/>
	</td>
</table>
</form>

<form action="Reader_Query_4.jsp?namee=<%=session.getAttribute("usrname")%>" method=post>
<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3 style="text-align:left">Document Reserve</h3> </td>
	</tr>
	<td>
	<input type="text" name="DocID" placeholder="DocID"/>
	</td>
	<td>
	<input type="submit" value="Reserve" id="Search" style="float: right;"/>
	</td>
</table>
</form>

<form >
<table border="0" width="80%" align="center" bgcolor="#ff0000">
	<tr>
	<td><h3 style="text-align:left"><a href="Reader_Query_5.jsp?namee=<%=session.getAttribute("usrname")%>">Check Fine</h3> </td>
	</tr>
</table>
</form>

<form >
<table border="0" width="80%" align="center" bgcolor="#EBF1FE">
	<tr>
	<td><h3 style="text-align:left"><a href="Reader_Query_6.jsp?namee=<%=session.getAttribute("usrname")%>">Document Reserved List</a></h3> </td>
	</tr>
</table>
</form>

<form action="Reader_Query_7.jsp?namee=<%=session.getAttribute("usrname")%>" method=post>
<table border="0" width="80%" align="center" bgcolor="#ff0000">
	<tr>
	<td><h3 style="text-align:left">Publisher Information</h3> </td>
	</tr>
	<td>
	<input type="text" name="PublisherName" placeholder="publishername"/>
	</td>
	<td>
	<input type="submit" value="Search" id="Search" style="float: right;"/>
	</td>
</table>
</form>
</body>
</html>