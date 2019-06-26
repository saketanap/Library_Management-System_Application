<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Logout</title>

</head>

<body>

<% session.invalidate(); 
response.sendRedirect("welcome.jsp");
%>

<p>You have been successfully logout</p>

</body>

</html>