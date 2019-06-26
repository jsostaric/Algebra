<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
      <%@include file="partials/head.jsp" %>
  </head>
  <body>
      <%@include file="partials/nav.jsp" %>
      
      <div class="container">
          <h1>Prikaz filmova</h1>
          <table class="table table-striped">
              <tr>
                  <th>Naziv</th>
                  <th>Trajanje</th>
                  <th>Glavni glumac</th>
              </tr>
              
              <c:forEach var="f" items="${filmovi}">
                  <tr>
                      <td>${f.ime}</td>
                      <td>${f.trajanje}</td>
                      <td>${f.glavniGlumac}</td>
                  </tr>                  
              </c:forEach>
          </table>
      </div>
    
    
    
    <%@include file="partials/scripts.jsp" %>
    </body>
</html>