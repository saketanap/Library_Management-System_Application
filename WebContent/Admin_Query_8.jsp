<%@ page import="java.sql.*" %>

<%@ page import="java.util.ArrayList" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Query8</title>

</head>
<body>

<%! String userdbName;
String userdbPsw;
//String dbUsertype;
//string dbdocid;
//string dbcopyid;
//string dbdatecheckin;
%>


<%

Connection con= null;

PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/project";
String user = "root";
String dbpsw = "student1";

String Admin_ID=request.getParameter("namee"); 
String sql ="select AVG(Fine) AS Fine From Reader";

//String name = request.getParameter("ID");
//String password = request.getParameter("Title");
//String usertype = request.getParameter("PublisherName");

try{

Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
//ps.setString(1,Admin_ID);
//ps.setString(2, password);
//ps.setString(3, usertype);
rs = ps.executeQuery();



ArrayList<String[]> results= new ArrayList<String[]>(); 

ArrayList<String> columns= new ArrayList<String>();

while(rs.next())

{ 
%>
<tr>

<%

userdbName=rs.getString("Fine");
//dbUsertype =rs.getString("Fine");
//dbdocid= rs.getstring("DocID");
//dbcopyid = rs.getstring("CopyNo");
//dbdatecheckin= rs.getstring("DateCheckedOut");
//userdbPsw=rs.getString("count");

%>

<td>Fine:</td>
<td><%=userdbName%></td>

<br>

</tr>

<%


}



for (String[] strings : results) {

    for (String s : strings) {

        System.out.print(s + " ");

        //out.write(s+" ");

    }

    System.out.println();

    //out.write("\n");



}

request.setAttribute("queryResults", results);

request.setAttribute("queryColumns", columns);

//response.sendRedirect("Reader.jsp");



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
