package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
import modeli.ProizvodUKosarici;

@WebServlet(name = "KupiServlet", urlPatterns = {"/KupiServlet"})
public class KupiServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            Baza db = new Baza();
            db.connect();
            
            List<ProizvodUKosarici> kosarica = (List<ProizvodUKosarici>) request.getSession().getAttribute("kosarica");
            for(ProizvodUKosarici puk:kosarica) {
                db.upit("update proizvod set kolicina= kolicina-"+ puk.getKol()+ " where id="+puk.getId());
                
                Korisnik k = (Korisnik)request.getSession().getAttribute("uid");
                int korisnik = k.getId();
                int proizvod = puk.getId();
                int kol = puk.getKol();
                
                DateFormat dateFormat = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
                Date date = new Date();
                String vrijeme = dateFormat.format(date);
                
                String nacinpl = request.getParameter("nacinpl");
                
                db.upit("insert into povijest(korisnik,proizvod,kolicina,vrijeme,nacinpl) values("+korisnik+","+proizvod+","+kol+","+vrijeme+","+nacinpl+")");
                
            }
            
            request.getSession().removeAttribute("kosarica");
            response.sendRedirect("IndexServlet");
            
            
        } catch (SQLException ex) {
            Logger.getLogger(KupiServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(KupiServlet.class.getName()).log(Level.SEVERE, null, ex);
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
