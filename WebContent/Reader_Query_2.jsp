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
Connection con1= null;
Connection con2= null;

PreparedStatement ps = null;
PreparedStatement ps1 = null;
PreparedStatement ps2 = null;
Statement stmt = null;

ResultSet rs = null;
ResultSet rs1 = null;

System.out.println("here");
String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/project";

String user = "root";

String dbpsw = "student1";

Calendar calendar = Calendar.getInstance();
java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());
String sql=" insert into Borrow_History (ReaderID, DocID, CopyNo, DateCheckedOut, DateReturned,DaysLate,Fine)"
        + " values (?, ?, ?, ?, ?, ?, ?)";
String sql1="select * from reserves where ReaderId=? and DocID=?";
String sql2="delete from reserves where ReaderId=? and DocID=?";
String name = request.getParameter("DocID");

//String password = request.getParameter("Title");
String reader_ID=request.getParameter("namee");
//String usertype = request.getParameter("PublisherName");


try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);
con1=DriverManager.getConnection(url, user, dbpsw);
con2=DriverManager.getConnection(url, user, dbpsw);

//ps = con.prepareStatement(sql);


PreparedStatement preparedStmt = con.prepareStatement(sql);
preparedStmt.setInt    (1, Integer.parseInt(reader_ID));
preparedStmt.setInt    (2, Integer.parseInt(name));
preparedStmt.setNull   (3, java.sql.Types.INTEGER);
preparedStmt.setDate   (4, startDate);
preparedStmt.setNull   (5, java.sql.Types.DATE);
preparedStmt.setNull   (6, java.sql.Types.INTEGER);
preparedStmt.setNull   (7,java.sql.Types.FLOAT);
preparedStmt.execute();

ps1 = con1.prepareStatement(sql1);
ps1.setString(1, reader_ID);
ps1.setString(2, name);
rs1 = ps1.executeQuery();
if(rs1.next()){
	   //yes exist
	ps2 = con2.prepareStatement(sql2);
	ps2.setString(1, reader_ID);
	ps2.setString(2, name);
	ps2.executeUpdate();
	out.write("Data inserted and deleted from reserves.");
	}
else{
	out.write("Data inserted.");
}


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