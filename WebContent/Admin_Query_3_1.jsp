<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body bgcolor="lightblue">
        <form method="post" action="Admin_Query_3_2.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Your Information Here::::</th>
                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <td>Reader Id:</td>
                        <td><input type="text" name="ReaderID" value="" /></td>
                    </tr>
                     <tr>
                        <td>Reader Type</td>
                        <td><input type="text" name="RType" value="" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="RName" value="" /></td>
                    </tr>

                    <tr>
                        <td>Address</td>
                        <td><input type="Text" name="RAddress" value="" /></td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td><input type="text" name="Phone" value="" /></td>
                    </tr>
                        
                      
                                      <tr>
                        <td>Membership Data Start:</td>
                        <td><input type="Date" name="MemStart" value="" /></td>
                    </tr>
     
                </tbody>
            </table>
              <td><input type="Submit" value="Submit" /></td
            </center>
        </form>
    </body>
</html>