<%@ page import ="java.sql.*" %>
<%
    //String DocID = request.getParameter("DocID");    
    String a = request.getParameter("ReaderID");
    String b = request.getParameter("RType");
    String c = request.getParameter("RName");
    String d = request.getParameter("RAddress");
    int m =Integer.parseInt(request.getParameter("Phone"));
    String f = request.getParameter("MemStart");
    //String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project",
            "root", "student1");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into Reader(ReaderID,RType,RName,RAddress,Phone_Number,MemStart) values ('" + a + "','" + b + "','" + c + "','" + d + "','" + m + "','" + f + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("admin.jsp");
        //out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>