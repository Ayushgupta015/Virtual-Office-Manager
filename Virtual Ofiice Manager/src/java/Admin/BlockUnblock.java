

package Admin;

import DB.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BlockUnblock extends HttpServlet {

   
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
         String email=request.getParameter("email");
         int status=Integer.parseInt(request.getParameter("status"));
         if(status==1)
            status=0; 
         else
             status=1;
             DBCon db=new DBCon();
             db.pstmt=db.con.prepareStatement("update login SET ac_status=? Where user=?");
             db.pstmt.setInt(1,status);
             db.pstmt.setString(2, email);
             int i=db.pstmt.executeUpdate();
             if(i>0){
                 response.sendRedirect("EmployeeList.jsp");
             }
        
        }catch(Exception e){
            e.printStackTrace();
        }
    }

}
