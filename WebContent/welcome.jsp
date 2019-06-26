<%@ page import="java.sql.*" %>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Welcome</title>

</head>

<body bgcolor="lightblue" >

<center><h1> City Library</h1>
<!--  p align=right><a href="logout.jsp">Logout</a></center-->


<form action="Reader_Query.jsp" id="usrform">
<center>
 Reader Functions Menu:<input type="text" name="usrname"  placeholder="card number" color="blue"> 
  <input type="submit">
</center>
</form>


<form action="Admin_Query.jsp" id="usrform">
<center>
   Administrative Function Menu:</br>
   <input type="text" name="AdminID" placeholder="ID"></br>
   <input type="password" name="LoginPassword" placeholder="password"></br>
  <input type="submit">
 </center>
</form>

<!--  p><a href="logout.jsp">Logout</a-->
</body>

</html>