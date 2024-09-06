<%-- 
    Document   : EditProfile
    Created on : 30 Aug, 2024, 11:02:30 AM
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
        out.println("<center><form action=UpdateDelete><h1 style='color:blue'>Edit Employee Profile</h1><br><table width=600 border=1 cellpadding=13 bgcolor=lightblue style='color: black'>"
            +"<tr><td width=250>Employee Code</td><td><input type=number name=code value='"+db.rst.getString(1)+"'</td></tr>"
            +"<tr><td>Employee Name</td><td><input type=text name=name value='"+db.rst.getString(2)+"'</td></tr>"
            +"<tr><td>Date of Birth</td><td><input type=date name=dob value='"+db.rst.getString(3)+"'</td></tr>"
            +"<tr><td>Gender</td><td><input type=radio name=gen value=male>MALE"
                + "<input type=radio name=gen value=female>FEMALE</td></tr>"
            +"<tr><td>post</td><td><input type=text name=post value='"+db.rst.getString(5)+"'></td></tr>"
            +"<tr><td>Address</td><td><input type=text name=addr value='"+db.rst.getString(6)+"'></td></tr>"
            +"<tr><td>City</td><td><input type=text name=city value='"+db.rst.getString(7)+"'></td></tr>"
            +"<tr><td>Contact</td><td><input type=number name=cont value='"+db.rst.getString(8)+"'></td></tr>"
            +"<tr><td>Email</td><td><input type=email name=mail value='"+db.rst.getString(9)+"'></td></tr>"
            +"<tr><td>Id Name</td><td><input type=text name=idname value='"+db.rst.getString(10)+"'></td></tr>"
            +"<tr><td>Id Number</td><td><input type=number name=idno value='"+db.rst.getString(11)+"'></td></tr>"
                + "<tr><th><input type=submit name=opr value=Update></th><th><input type=submit value=Delete name=opr></th></tr>"
        +"</center></form></table>");
        }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
    %>
</div>

    </body>
</html>
