package in.sp.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "Shubh@8055");

			PreparedStatement ps = con.prepareStatement("select *from registerform where email=? and password=? "); 
																									
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) 
			{
				HttpSession session = req.getSession();
				session.setAttribute("session_name", rs.getString("name"));
				
				RequestDispatcher rd = req.getRequestDispatcher("/profile.jsp");
				rd.include(req, resp);
			}
			else {
				out.print("<h3 style='color:red;text-align:center;margin-top:300px'>Email Id and Password didn't matched</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, resp);
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.print("<h3 style='color:red;text-align:center;'>"+ e.getMessage()+"</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
			rd.include(req, resp);
		}
	}
   
}
