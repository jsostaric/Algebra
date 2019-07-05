
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeli.Baza;
import modeli.Korisnik;


@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {


  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/Trgovina/login.jsp");
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String email = request.getParameter("email");
            String lozinka = request.getParameter("lozinka");
            int gr = 0;
            
            Baza db = new Baza();
            db.connect();
            
            ResultSet rs = db.selectupit("select * from korisnik where email='"+email+"'");
            
            if(!rs.next()) {
                gr = 2;
                request.setAttribute("gr", gr);
                request.setAttribute("email", "");
                
                getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
                //return;
            }else {
                if(lozinka.equals(rs.getString("lozinka"))) {
                    String uloga = "Kupac";
                    if(rs.getInt("uloga")==2) {
                        uloga = "Administrator";
                    }
                    Korisnik k = new Korisnik(
                                    rs.getInt("id"), 
                                    rs.getString("ime"),
                                    rs.getString("prezime"),
                                    rs.getString("email"),
                                    uloga,
                                    rs.getString("adresa")
                                    );
                    request.getSession().setAttribute("uid", k);
                    response.sendRedirect("IndexServlet");
                }else {
                    gr=1;
                    request.setAttribute("gr", gr);
                    request.setAttribute("email", email);

                    getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
                    return;
                }
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
