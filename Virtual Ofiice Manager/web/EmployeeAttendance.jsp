<%-- 
    Document   : EmployeeAttendance
    Created on : 30 Aug, 2024, 4:27:28 PM
    Author     : ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
<div>
    <center>
        <br><br><br>
        <br><br><br>
        <form action="AddAttendence">
            <table width="800">
                <tr>
                    <th width="400"><input type="submit" value="CheckIn" name="opr"
                      style="width:150px;height:40px;background-color:dodgerblue;color:white;font-size:20px">  
                    </th>
                    <th width="400"><input type="submit" value="CheckOut" name="opr"
                      style="width:150px;height:40px;background-color:dodgerblue;color:white;font-size:20px">  
                    </th>
                </tr>
            </table>
        </form>
    </center>
</div>
    </body>
</html>
