<%-- 
    Document   : EmployeeAttendanceReport
    Created on : 31 Aug, 2024, 3:24:05 PM
    Author     : ayush
--%>

<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
        <div>
            <center>
                <h2>Attendance Report</h2>
                <%
                try{
                   String user=session.getAttribute("user").toString();
                   DBCon db=new DBCon();
                   db.pstmt=db.con.prepareStatement("select ecode,ename,egender,epost from emp_mstr where email=?");
                   db.pstmt.setString(1, user);
                   String code="";
                   db.rst=db.pstmt.executeQuery();
                   if(db.rst.next())
                   {
                      code=db.rst.getString(1);
                      out.println("<table width=500 bgcolor=white>");
                      if(db.rst.getString(3).equalsIgnoreCase("Male"))
                      {
                          out.println("<tr><td width=250><b>Employee Code : "+db.rst.getString(1)+"</b></td>"
                                  + "<td><b>Employee Name : Mr."+db.rst.getString(2)+"</b></td></tr>");
                      }else
                      {
                          out.println("<tr><td width=250><b>Employee Code : "+db.rst.getString(1)+"</b></td>"
                                  + "<td><b>Employee Name : Ms."+db.rst.getString(2)+"</b></td></tr>");
                      }
                         out.println("<tr><td width=250><b>Employee Post : "+db.rst.getString(4)+"</b></td>"
                                  + "<td><b>E Mail : "+user+"</b></td></tr>");
                   }
                   out.println("<table width=500 bgcolor=white border=1>");
                   out.println("<tr bgcolor=lightyellow><th>Attendance Date</th><th>Time in</th><th>Time Out</th>"
                           + "<th>Working Hours</th></tr>");
                   
                   db.pstmt=db.con.prepareStatement("select atnd_date,time_in,time_out,(time_out-time_in) from emp_attendance where ecode=?");
                   db.pstmt.setString(1, code);
                   db.rst=db.pstmt.executeQuery();
                   while(db.rst.next())
                   {
                       out.println("<tr><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td>"
                               + "<td>"+db.rst.getString(3)+"</td><td>"+Math.abs(db.rst.getInt(4))+"</td></tr>");
                   }
                   
                 
                }catch(Exception e)
                {
                    e.printStackTrace();
                }
                  %>
               
            </center>
        </div>
        
    </body>
</html>
