<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
      <%@include file="partials/_head.jsp" %>
  </head>
  <body>
      <%@include file="partials/_nav.jsp" %>
      <div class="row">
        <h1>Popis Filmova</h1>
        <div class="col-md-2">
            <a href="dodaj.jsp" id="dodaj" class="btn btn-sm btn-primary">Dodaj novi film</a>    
            
        </div>
      </div>
      
      <table class="table table-striped">
          <tr>
              <th>Naziv Filma</th>
              <th>Trajanje (min)</th>
              <th>Glavni Glumci</th>
              <th>Akcija</th>
          </tr>
          
          <c:forEach var="f" items="${filmovi}">
              <tr>
                  <td>${f.ime}</td>
                  <td>${f.trajanje}</td>
                  <td>${f.glavniGlumci}</td>
                  <td>
                      <a href="UrediServlet?id=${f.id}" class="btn btn-sm btn-success">Uredi</a>
                      <a href="BrisiServlet?id=${f.id}" 
                         class="btn btn-sm btn-danger" 
                         onclick="return confirm('Jeste li sigurni da želite obrisati film?')">Briši
                      </a>
                  </td>
              </tr>
          </c:forEach>          
      </table>
  </body>
</html>