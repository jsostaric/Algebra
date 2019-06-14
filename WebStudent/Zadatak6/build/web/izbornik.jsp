<%@page import="java.util.List"%>
<%@page import="modeli.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="partials/head.jsp"  %>
    </head>
    <body>
        <h1>Studentska referada - podaci o studentima</h1>

        <form method="post" action="DodajStudentaServlet">
            <div class="container">
                <div class="form-group">
                    <label for="ime">Ime:</label>
                    <input type="text" name="ime" id="ime" class="form-control" />                    
                </div>

                <div class="form-group">
                    <label for="prezime">Prezime:</label>
                    <input type="text" name="prezime" id="prezime" class="form-control" />                    
                </div>

                <div class="form-group">
                    <label for="godina_studija">Godina studija:</label>
                    <select name="godina_studija">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                    </select>                    
                </div>
                <div class="form-group">
                    <label for="jmbag">JMBAG:</label>
                    <input type="text" name="jmbag" id="jmbag" class="form-control" />                    
                </div>
                <div class="form-group">                    
                    <input type="submit" value="Spremi" class="btn btn-primary btn-block" />                    
                </div>
            </div>
        </form>
        <hr>
        <div class="container">
            <table class="table table-striped">
                <tr>
                    <th>JMBAG</th>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Godina Studija</th>
                    <th>Action</th>
                </tr>

                <%
                  List<Student> studenti;
                    studenti = (List<Student>)session.getAttribute("studenti");
                        if(studenti != null) {
                        for(Student s : studenti) {
                            out.print("<tr>");
                            out.print("<td>"+s.getJmbag()+"</td>");
                            out.print("<td>"+s.getIme()+"</td>");
                            out.print("<td>"+s.getPrezime()+"</td>");
                            out.print("<td>"+s.getGodina()+"</td>");                        
                            out.print("<td><a href='UrediStudentaServlet?jmbag="+s.getJmbag()+"' class='btn btn-success btn-sm'>Uredi</a><a href='BrisiStudentaServlet?jmbag="+s.getJmbag()+"' class='btn btn-danger btn-sm'>Obriši</a></td>");                        
                            out.print("</tr>");
                        }
                    }
                %>

            </table>
            
        </div>
        
        
    </body>
</html>
