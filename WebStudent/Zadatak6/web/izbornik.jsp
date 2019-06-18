<%@page import="java.util.List"%>
<%@page import="modeli.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="partials/head.jsp" %>
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

                <c:forEach var="s" items="${studenti}">
                    <tr>
                        <td>${s.jmbag}</td>
                        <td>${s.ime}</td>
                        <td>${s.prezime}</td>
                        <td>${s.godina}</td>
                        <td>
                            <a href="UrediStudentaServlet?jmbag=${s.jmbag}" class="btn btn-success btn-sm">Uredi</a>

                            <form method="post" onsubmit="provjeri();" action="BrisiStudentaServlet?jmbag=${s.jmbag}">
                                <input type="submit" class="btn btn-sm btn-danger" value="Obriši"/>
                            </form>                            
                        </td>
                    </tr>

                </c:forEach>

            </table>            
        </div>

        <%@include file="partials/footer.jsp" %>
        <%@include file="partials/scripts.jsp" %>
        <script>
            function provjeri() {
                return confirm("Jeste sigurni da želite obrisati studenta");
            }
        </script>
    </body>
</html>
