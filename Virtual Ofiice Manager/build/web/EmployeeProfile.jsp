<%-- 
    Document   : EmployeeProfile
    Created on : 28 Aug, 2024, 3:38:14 PM
    Author     : ayush
--%>

<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp"%>
<div>
    <%
        try
        {
        String user=session.getAttribute("user").toString();
        DBCon db=new DBCon();
        db.pstmt=db.con.prepareStatement("select * from emp_mstr where email=?");
        db.pstmt.setString(1, user);
        db.rst=db.pstmt.executeQuery();
        if(db.rst.next())
        {
        out.println("<center><h1 style='color:blue'>Employee Profile</h1><br><table width=600 border=1 cellpadding=13 bgcolor=lightblue style='color: black'>"
            +"<tr><td width=250>Employee Code</td><td>"+db.rst.getString(1)+"</td></tr>"
            +"<tr><td>Employee Name</td><td>"+db.rst.getString(2)+"</td></tr>"
            +"<tr><td>Date of Birth</td><td>"+db.rst.getString(3)+"</td></tr>"
            +"<tr><td>Gender</td><td>"+db.rst.getString(4)+"</td></tr>"
            +"<tr><td>post</td><td>"+db.rst.getString(5)+"</td></tr>"
            +"<tr><td>Address</td><td>"+db.rst.getString(6)+"</td></tr>"
            +"<tr><td>City</td><td>"+db.rst.getString(7)+"</td></tr>"
            +"<tr><td>Contact</td><td>"+db.rst.getString(8)+"</td></tr>"
             +"<tr><td>Email</td><td>"+db.rst.getString(9)+"</td></tr>"
            +"<tr><td>Id Name</td><td>"+db.rst.getString(10)+"</td></tr>"
            +"<tr><td>Id Number</td><td>"+db.rst.getString(11)+"</td></tr>"
        +"</table></center>");
        }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
    %>
</div>
    </body>
</html>
