/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Admin;

import DB.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginValidate extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
           String utype=request.getParameter("t1");
           String user=request.getParameter("t2");
           String pswd=request.getParameter("t3");
           
           DB.DBCon db=new DBCon();
           db.pstmt=db.con.prepareStatement("select ac_status from login where user=? and pswd=? and utype=?");
           db.pstmt.setString(1, user);
           db.pstmt.setString(2, pswd);
           db.pstmt.setString(3, utype);
           
           db.rst=db.pstmt.executeQuery();
           if(db.rst.next())
           {
              int status=db.rst.getInt(1);
              if(status==1)
              {
                  HttpSession session=request.getSession();
                  session.setAttribute("user", user);
                  if(utype.equalsIgnoreCase("Admin"))
                  {
                      response.sendRedirect("AdminHome.jsp");
                  }else{
                      response.sendRedirect("EmployeeHome.jsp");
                  }
                  
              }
              else{
                  out.println("<h2>This Account has been Blocked</h2>");
                  out.println("<a href=index.html>Back</a>");
              }
           }
           else{
               out.println("<h2>Incorrect User Name or Password</h2>");
               out.println("<a href=index.html>Back</a>");
           }
           
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}