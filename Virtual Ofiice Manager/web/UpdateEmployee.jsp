<%-- 
    Document   : UpdateEmployee
    Created on : 25 Aug, 2024, 11:32:50 AM
    Author     : ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp"%>
<center>
    <div style="color: black;width: 200;height:300">
        <h2>Search Employee</h2>
        <form action="EmployeeDetail.jsp">
        <table width="500" border="1" cellpadding="20" cellspacing="" style="background-color: lightblue;">
            <tr><td width="250">Employee Code or Employee Contact or Employee Email</td><td><input type="search" name="data"></td></tr>
            <tr><th><input type="submit" value="search" ><th><input type="reset" value="reset" ></tr>
        </table>
        </form>
    </div>  
</center>
</body>
</html>
