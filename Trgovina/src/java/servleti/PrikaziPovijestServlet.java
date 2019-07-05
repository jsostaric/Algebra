
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeli.Baza;
import modeli.Korisnik;
import modeli.KupljeniProizvodi;


@WebServlet(name = "PrikaziPovijestServlet", urlPatterns = {"/PrikaziPovijestServlet"})
public class PrikaziPovijestServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            Baza db = new Baza();
            db.connect();
            
            Korisnik k = (Korisnik)request.getSession().getAttribute("uid");
            int korisnik = k.getId();
            
            ResultSet rs = db.selectupit("select * from povijest where korisnik=" + korisnik + " order by vrijeme desc");
            
            List<KupljeniProizvodi> kupljeniProizvodi = new ArrayList<>();
            
            while(rs.next()) {
                int proizvod = rs.getInt("proizvod");
                ResultSet rs2 = db.selectupit("select * from proizvod where id=" + proizvod);
                rs2.next();
                String naziv = rs2.getString("ime");
                int kol = rs.getInt("kol");
                float cijena = rs2.getFloat("cijena");
                String nacinpl = "on-line";
                if(rs.getInt("nacinpl")==2) {
                    nacinpl = "pouzećem";
                }
                                
                DateFormat dateFormat = new SimpleDateFormat("d.M.yyyy HH:mm:ss");
                
                String vrijeme = dateFormat.format(rs.getDate("vrijeme"));
                KupljeniProizvodi kp = new KupljeniProizvodi(naziv,kol,cijena,nacinpl,vrijeme);
                kupljeniProizvodi.add(kp);
                
                
                
            }
            
            request.setAttribute("kupljeniProizvodi", kupljeniProizvodi);
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(PrikaziPovijestServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PrikaziPovijestServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
