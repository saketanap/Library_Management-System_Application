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
String dbdatecheckin;


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

String reader_ID=request.getParameter("namee"); 
String sql=" select * from Borrow_history where READERID=?";

//String name = request.getParameter("ID");
//String password = request.getParameter("Title");
//String usertype = request.getParameter("PublisherName");

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1,reader_ID);

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

userdbName=rs.getString("DaysLate");
dbUsertype =rs.getString("Fine");
dbdocid= rs.getString("DocID");
dbcopyid = rs.getString("CopyNo");
dbdatecheckin= rs.getString("DateCheckedOut");
userdbPsw=rs.getString("DateReturned");

%>

<td>Documentid:</td>
<td><%=dbdocid%></td>

<td>CopyNo:</td>
<td><%=dbcopyid %></td>

<td>DateCheckedOut:</td>
<td><%=dbdatecheckin %></td>

<td>DateReturned:</td>
<td><%=userdbPsw%></td>

<td>DaysLate:</td>
<td><%=userdbName %></td>

<td>Fine:</td>
<td><%=dbUsertype %></td>
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



