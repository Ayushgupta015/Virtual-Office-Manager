package Admin;

import DB.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CompanyRegister extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
          String type=request.getParameter("t1");
          String user=request.getParameter("t2");
          String pswd=request.getParameter("t3");
          
          DBCon db=new DBCon();
          db.pstmt=db.con.prepareStatement("insert into login(user,pswd,utype,ac_status)values(?,?,?,?)");
          db.pstmt.setString(1, user);
          db.pstmt.setString(2, pswd);
          db.pstmt.setString(3, "Admin");
          db.pstmt.setString(4, "1");
          int i=db.pstmt.executeUpdate();
          if(i>0){
              response.sendRedirect("index.html?msg=company Added Suceessfully");
          }
        }catch(Exception e){
            e.printStackTrace();
        }
    }

}