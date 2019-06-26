<%@ page import ="java.sql.*" %>
<%
    //String DocID = request.getParameter("DocID");    
    String Title = request.getParameter("Title");
    String PDate = request.getParameter("PDate");
    String PublisherID = request.getParameter("PublisherID");
    //String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project",
            "root", "student1");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into Document(Title,PDate,PublisherID) values ('" + Title + "','" + PDate + "','" + PublisherID + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("admin.jsp");
        //out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
