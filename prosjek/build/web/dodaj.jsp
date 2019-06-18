<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<!doctype html>
<html lang="en">
  <head>
      <%@include file="partials/head.jsp" %>
  </head>
  <body>
    <%@include file="partials/nav.jsp" %>
    <h1>Dodavanje novog predmeta</h1>
    <div class="container">
        <form method="post" action="DodajServlet">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="a">Naziv predmeta:</label>
                    <input type="text" name="ime" id="a" class="form-control" required />
                </div>    
                
                <div class="form-group col-md-6">
                    <label for="b">Zaključna ocjena:</label>
                    <input type="number" name="ocjena" id="b" min="1" max="5" class="form-control" required />
                </div>    
            </div>
            <button class="btn btn-primary">Dodaj</button>
            
            
        </form>
        
    </div>
    
    <%@include file="partials/scripts.jsp" %>
    </body>
</html>