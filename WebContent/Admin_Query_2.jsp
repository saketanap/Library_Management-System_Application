<%@ page import="java.sql.*" %>

<%@ page import="java.util.ArrayList" %>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Query1</title>

</head>
<body>



<%! String userdbName;
String userdbPsw;
String dbUsertype;
String dbdocid;
String dbcopyid;
String dblibId;
String dbtitle;
String dbpdate;
String dbpubId;

%>



<%

System.out.println("hereee");

Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

System.out.println("here");

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/project";
String user = "root";
String dbpsw = "student1";

String Admin_ID=request.getParameter("namee"); 
String sql="select * from Borrows NATURAL JOIN Document where DocID= ?";

String name = request.getParameter("DocID");
//String password = request.getParameter("Title");
//String usertype = request.getParameter("PublisherName");

try{

Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1,name);

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
userdbName = rs.getString("BorNumber");
userdbPsw = rs.getString("ReaderID");
dbUsertype = rs.getString("DocID");
dbdocid = rs.getString("CopyNo");
dbcopyid = rs.getString("LibID");
dblibId = rs.getString("BTimeStamp");
dbtitle = rs.getString("Title");
dbpdate = rs.getString("PDate");
dbpubId =rs.getString("PublisherID");
%>

<td>Borrow Number:</td>
<td><%=userdbName%></td>

<td>ReaderID:</td>
<td><%=userdbPsw %></td>

<td>DocID:</td>
<td><%=dbUsertype %></td>

<td>CopyNo:</td>
<td><%=dbdocid  %></td>

<td>LibID:</td>
<td><%=dbcopyid %></td>

<td>BTimeStamp:</td>
<td><%=dblibId %></td>

<td>Title:</td>
<td><%=dbtitle%></td>

<td>PDate:</td>
<td><%=dbpdate  %></td>

<td>PublisherID:</td>
<td><%=dbpubId%></td>


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
