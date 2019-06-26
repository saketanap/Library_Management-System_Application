<%@ page import="java.sql.*" %>

<%@ page import="java.util.ArrayList" %>

<html>



<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<title>Query6</title>



</head>



<body>



<%! //String userdbName;

String userdbPsw;

//String dbUsertype;



%>



<%

System.out.println("hereee");

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/project";

String user = "root";

String dbpsw = "student1";

String reader_ID=request.getParameter("namee"); 

//System.out.println("kk"+mm);

String sql="select Title from Document, Reserves where Document. DocID = Reserves. DocID and ReaderID=? ";

try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, reader_ID);

//ps.setString(2, password);
//ps.setString(3, usertype);

rs = ps.executeQuery();

ArrayList<String[]> results= new ArrayList<String[]>(); 

ArrayList<String> columns= new ArrayList<String>();

//columns.add("ID");

columns.add("Title");

//columns.add("PubName");

while(rs.next())

{ 

//userdbName = rs.getString("DocID");

userdbPsw = rs.getString("Title");

//dbUsertype = rs.getString("PubName");

//System.out.println(dbUsertype);

String[] row = new String[1];

row[0]=userdbPsw;

results.add(row);



%>

<tr>



<%

//String id=rs.getString("DocID");

String Title=rs.getString("Title");

//String a=rs.getString("PubName");

%>


<td>Title:</td>

<td><%=Title %></td>

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
