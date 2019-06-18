<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<!doctype html>
<html lang="en">
  <head>
      <%@include file="partials/head.jsp" %>
  </head>
  <body>
      <%@include file="partials/nav.jsp" %>
      
      <div class="container">
          <h1>Prosjek ocjena</h1>          
            <a href="dodaj.jsp" class="btn btn-primary">Dodaj</a>              
          
          
          <table class="table table-striped">
            <tr><th>Predmet</th><th>Ocjena</th><th>Akcija</th></tr>
            <c:forEach var="p" items="${lista}">
                <tr>
                    <td>${p.value.ime}</td>
                    <td>${p.value.ocjena}</td>
                    <td>
                        <a href="UrediServlet?ime=${p.value.ime}" class="btn btn-sm btn-success">Uredi</a>
                        <a href="BrisiServlet?ime=${p.value.ime}" class="btn btn-sm btn-danger">Briši</a>
                        
                    </td>
                </tr>
            </c:forEach>
                <tr><th col="2">Prosjek:</th><th>${prosjek}</th></tr>
          </table>
          
      </div>
    
    
    
    <%@include file="partials/scripts.jsp" %>
    </body>
</html>