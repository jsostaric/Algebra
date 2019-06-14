
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modeli.Student;


@WebServlet(name = "UrediStudentaServlet", urlPatterns = {"/UrediStudentaServlet"})
public class UrediStudentaServlet extends HttpServlet {

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
       
         String jmbag = request.getParameter("jmbag");       
        
        HttpSession session = request.getSession();

        List<Student> studenti;
        studenti = (List<Student>)session.getAttribute("studenti");  
        
         Student st = null;
        int i;
        
        for(i = 0; i < studenti.size(); i++) {
           st = studenti.get(i);
            if(st.getJmbag().equals(jmbag)) {
                break;
            }
        }
        
        request.setAttribute("st", st);
        getServletContext().getRequestDispatcher("/uredi.jsp").forward(request, response);
        
        String ime = request.getParameter("ime");
        String prezime = request.getParameter("prezime");
        int godina = Integer.parseInt(request.getParameter("godina"));
        jmbag = request.getParameter("jmbag");
        
        st = new Student(ime,prezime,godina,jmbag);
        studenti.set(i, st);
        
        
        session.setAttribute("studenti", studenti);

        response.sendRedirect("izbornik.jsp");
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
