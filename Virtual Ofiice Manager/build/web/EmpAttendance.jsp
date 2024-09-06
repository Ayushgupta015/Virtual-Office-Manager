<%-- 
    Document   : EmpAttendance
    Created on : 31 Aug, 2024, 11:41:05 PM
    Author     : ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <center>
                <form action="EmpAttendanceReport.jsp">
                    <table width="400" border="1" bgcolor="blacktext" cellpadding="10" style="color:black">
                    <tr><td width="200">Employee Code</td><td><input type="number" name="code"></td></tr>
                    <tr><th><input type="submit" value="Submit"></th><th><input type="reset" value="Reset"></th></tr>
                </table>
                </form>
            </center>
        </div>
    </body>
</html>
