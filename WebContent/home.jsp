<%@ page import="java.sql.*" %>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home</title>

</head>

<body bgcolor="yellow" >

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/project";

String user = "root";

String password = "student1";



String sql = "select usertype from AdminLogin";



try {

Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);

ps = con.prepareStatement(sql);

rs = ps.executeQuery(); 

%>

<form method="post" action="login.jsp">

<center><h1 style="color:red">City Library </h1></center>

<table align="center">

<tr>

<td><Bold><font color="Green">UserId :</font></Bold></td>

<td><input type="text" name="AdminID"/></td>

</tr>

<tr>

<td><Bold><font color="Green">Password :</font></Bold></td>

<td><input type="password" name="LoginPassword"/></td>

</tr>

<tr>

<td><Bold><font color="Red">Select UserType</font></Bold></td>

<td><select name="usertype">

<option value="select">select</option>

<%

while(rs.next())

{

String usertype = rs.getString("usertype");

%>

<option value=<%=usertype%>><%=usertype%></option>

<% 

}

}

catch(SQLException sqe)

{

out.println("home"+sqe);

}

%>

</select>

</td>

</tr>

<tr>

<td></td>

<td><input type="submit" value="submit"/></td>

</table>

</form>

</body>

