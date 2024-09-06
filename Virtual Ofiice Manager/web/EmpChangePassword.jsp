<%-- 
    Document   : EmpChangePassword
    Created on : 30 Aug, 2024, 3:22:04 PM
    Author     : ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
<html>
    <center>
        <h1 style="color:blue">Change Password</h1><br>
        <form action="EmpChangePassword" method="post">
        <table  width="500" cellpadding="20" cellspacing="0" border="1" bgcolor="lightblue">
            <tr><td>Old Password</td><td><input type="password" name="opswd"></td></tr>
            <tr><td>New Password</td><td><input type="password" name="npswd"></td></tr>
            <tr><td>Confirm Password</td><td><input type="password" name="cpswd"></td></tr>
            <tr><th><input type="submit" value="submit"></th><th><input type="reset" value="Reset"></th></tr>
        </table>
        </form>
        <%
          if(request.getParameter("error")!=null)
          {
              String msg=request.getParameter("error");
              out.println("<h2 style='color:red;'>"+msg+"</h2>");
          }  
        %>
    </center>

    </body>
</html>
