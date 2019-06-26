<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Calendar" %>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Query1</title>

</head>

<body>

<%! String userdbName;

String userdbPsw;

String dbUsertype;

%>

<%
System.out.println("hereee");
Connection con= null;
//Connection con1= null;
//Connection con2= null;

PreparedStatement ps = null;
//PreparedStatement ps1 = null;
//PreparedStatement ps2 = null;
Statement stmt = null;

ResultSet rs = null;
//ResultSet rs1 = null;

System.out.println("here");
String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/project";

String user = "root";

String dbpsw = "student1";

Calendar calendar = Calendar.getInstance();
java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());
String sql=" update Borrow_History set DateReturned=? where ReaderID=? and DocID=?";

String name = request.getParameter("DocID");

//String password = request.getParameter("Title");
String reader_ID=request.getParameter("namee");
//String usertype = request.getParameter("PublisherName");


try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

//ps = con.prepareStatement(sql);


PreparedStatement preparedStmt = con.prepareStatement(sql);

preparedStmt.setDate   (1, startDate);
preparedStmt.setString   (2,reader_ID);
preparedStmt.setString   (3,name);
preparedStmt.executeUpdate();
out.write("Document Returned.");


}
catch(SQLException sqe)

{

out.println(sqe);

} 
finally{

}


%>


</body>

</html>