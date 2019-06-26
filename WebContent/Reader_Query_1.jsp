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


String sql="";

String name = request.getParameter("ID");

String password = request.getParameter("Title");

String usertype = request.getParameter("PublisherName");


if(name.equals("") && password.equals("")){
	sql = "select DocID,Title,PubName from  Publisher, Document  where PubName=? and Document.PublisherID=Publisher.PublisherID";
}
if(usertype.equals("") && password.equals("")){
	System.out.println("kllll");
	sql = "select DocID,Title,PubName from  Publisher, Document  where DocID=? and Document.PublisherID=Publisher.PublisherID";
}
if(name.equals("") && usertype.equals("")){
	sql = "select DocID,Title,PubName from  Publisher, Document  where Title=? and Document.PublisherID=Publisher.PublisherID";
}
//
//if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || 
//password.equals(""))) && !usertype.equals("select"))

//{

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);


ps = con.prepareStatement(sql);

if(name.equals("") && password.equals("")){
	ps.setString(1, usertype);
}
if(usertype.equals("") && password.equals("")){
	ps.setString(1, name);
	System.out.println("kllll");
	}
if(name.equals("") && usertype.equals("")){
	ps.setString(1, password);
}
//ps.setString(1, name);

//ps.setString(2, password);

//ps.setString(3, usertype);

rs = ps.executeQuery();

ArrayList<String[]> results= new ArrayList<String[]>(); 
ArrayList<String> columns= new ArrayList<String>();
columns.add("ID");
columns.add("Title");
columns.add("PubName");
String mm=request.getParameter("namee"); 
System.out.println("kk"+mm);

while(rs.next())
{ 
userdbName = rs.getString("DocID");
userdbPsw = rs.getString("Title");
dbUsertype = rs.getString("PubName");
//System.out.println(dbUsertype);
String[] row = new String[3];
row[0]=userdbName;
row[1]=userdbPsw;
row[2]=dbUsertype;
results.add(row);

%>
<tr>

<%
String id=rs.getString("DocID");
String Title=rs.getString("Title");
String a=rs.getString("PubName");
%>
<td>Documentid:</td>
<td><%=id %></td>
<td>Title:</td>
<td><%=Title %></td>
<td>Publisher Name:</td>
<td><%=a %></td>
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