package Employee;

import DB.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class EmpChangePassword extends HttpServlet {

  
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            HttpSession session=request.getSession();
            String user=session.getAttribute("user").toString();
            String opswd=request.getParameter("opswd");
            String npswd=request.getParameter("npswd");
            String cpswd=request.getParameter("cpswd");
            
            DBCon db=new DBCon();
            db.pstmt=db.con.prepareStatement("select * from login where user=? and pswd=?");
            db.pstmt.setString(1, user);
            db.pstmt.setString(2, opswd);
            db.rst=db.pstmt.executeQuery();
            
            if(db.rst.next())
            {
                if(npswd.equals(cpswd))
                {
                    db.pstmt=db.con.prepareStatement("update login set pswd=? where user=?");
                    db.pstmt.setString(1, npswd);
                    db.pstmt.setString(2, user);
                    int i=db.pstmt.executeUpdate();
                    if(i>0)
                    {
                      response.sendRedirect("EmpChangePassword.jsp?error=Password Updated Successfully");
                    }
               
                }
                else
                {
                    response.sendRedirect("EmpChangePassword.jsp?error=New and Confirm Password must be same");
                }
            }else
            {
                response.sendRedirect("EmpChangePassword.jsp?error=Old Password does not correct");
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
