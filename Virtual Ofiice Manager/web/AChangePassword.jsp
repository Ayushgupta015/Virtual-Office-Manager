<%-- 
    Document   : ChangePassword
    Created on : 27 Aug, 2024, 3:43:32 PM
    Author     : ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>

<html>
    <center>
        <form action="AChangePassword" method="post">
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
