<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Timestamp" %>

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
String sql=" insert into reserves (ReaderID,DocID,CopyNo,LibID,RTimeStamp) values (?, ?, ?, ?, ?)";
     

String name = request.getParameter("DocID");

//String password = request.getParameter("Title");
String reader_ID=request.getParameter("namee");
//String usertype = request.getParameter("PublisherName");


try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

//ps = con.prepareStatement(sql);
Date date= new Date();
Timestamp ts = new Timestamp(date.getTime());


PreparedStatement preparedStmt = con.prepareStatement(sql);

preparedStmt.setInt  (1, Integer.parseInt(reader_ID));
preparedStmt.setInt  (2, Integer.parseInt(name));
preparedStmt.setInt  (3, 20);
preparedStmt.setInt  (4, 1);
preparedStmt.setTimestamp(5, ts);

preparedStmt.executeUpdate();
out.write("Document Reserved.");

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