<%@ page import="java.sql.*" %>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Reader_Query</title>

</head>

<body>

<%! String userdbName;

String userdbPsw;

String dbUsertype;

%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/project";

String user = "root";

String dbpsw = "student1";

System.out.println("hereee");

String sql = "select * from  Reader where ReaderID=?";



String name = request.getParameter("usrname");

//String password = request.getParameter("LoginPassword");

//String usertype = request.getParameter("usertype");



if(!(name.equals(null)) || name.equals(""))

{

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, name);

//ps.setString(2, password);

//ps.setString(3, usertype);

rs = ps.executeQuery();

if(rs.next())

{ 

userdbName = rs.getString("ReaderID");

//userdbPsw = rs.getString("LoginPassword");

//dbUsertype = rs.getString("usertype");

if(name.equals(userdbName))

{

session.setAttribute("usrname",userdbName);

response.sendRedirect("Reader.jsp"); 

} 

}

else

response.sendRedirect("error.jsp");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Error In Login</p></center>

<% 

getServletContext().getRequestDispatcher("/welcome.jsp").include(request,response);

}

%>

</body>

</html>