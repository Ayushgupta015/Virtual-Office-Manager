<%-- 
    Document   : EmployeeDetail
    Created on : 25 Aug, 2024, 10:28:53 PM
    Author     : ayush
--%>

<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<div>
    <%
       String data=request.getParameter("data");
       DBCon db=new DBCon();
       db.pstmt=db.con.prepareStatement("SELECT * FROM emp_mstr WHERE ecode=? OR econt=? OR email=?");
       db.pstmt.setString(1, data);
       db.pstmt.setString(2, data);
       db.pstmt.setString(3, data);
       
       db.rst=db.pstmt.executeQuery();
       
       if(db.rst.next())
       {
          out.println("<center><div style='backgroud-color:lightblue;width:600px;hieght:700px;'>"
                  + "<h1>Employee Detail</h1>"
                  + "<form action=UpdateDeleteEmp>"
                  + "<table width=600 border=1 cellpadding=13 bgcolor=lightblue>"
                  + "<tr><td width=250>Employee Code</td><td><input type=number name=code value='"+db.rst.getString(1)+"'></td></tr>"
                  + "<tr><td>Employee Name</td><td><input type=text name=name value='"+db.rst.getString(2)+"'></td></tr>"
                  + "<tr><td>Employee DOB</td><td><input type=date name=dob value='"+db.rst.getString(3)+"'></td></tr>"
                  + "<tr><td>Gender</td><td><input type=radio name=gen value=Male>Male"
                  + "<input type=radio name=gen value=Female>Female</td></tr>"
                  + "<tr><td>Employee Post</td><td><input type=text name=post value='"+db.rst.getString(5)+"'></td></tr>"
                  + "<tr><td>Employee Address</td><td><input type=text name=addr value='"+db.rst.getString(6)+"'></td></tr>"
                  + "<tr><td>Employee City</td><td><input type=text name=city value='"+db.rst.getString(7)+"'></td></tr>"
                  + "<tr><td>Employee Contact</td><td><input type=number name=cont value='"+db.rst.getString(8)+"'></td></tr>"
                  + "<tr><td>Employee Mail</td><td><input type=email name=mail value='"+db.rst.getString(9)+"'></td></tr>"
                  + "<tr><td>ID Name</td><td><input type=text name=idname value='"+db.rst.getString(10)+"'></td></tr>"
                  + "<tr><td>ID Number</td><td><input type=number name=idno value='"+db.rst.getString(11)+"'></td></tr>"
                  + "<tr><th><input type=submit value=Update name=opr></th><th><input type=submit value=Delete name=opr></th></tr>"
                  + "</center>"
                  + "</form>"
                  + "</table>"
                  + "</div>"); 
          
       }else{
           out.println("<h1>Record does not found</h1>");
       }
    %>
</div>
</body>
</html>
