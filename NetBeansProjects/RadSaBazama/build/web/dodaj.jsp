<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <%@include file="partials/_head.jsp" %>
    </head>
    <body>
        <%@include file="partials/_nav.jsp" %>
        <h1>Uredi Film:</h1>
        <div class="container">
            <form action="DodajServlet" method="post">
                <div class="form-row">
                    <div class="form-group col-md-5">
                        <label for="a">Naziv filma:</label>
                        <input type="text" id="a" name="ime" class="form-control" required />
                    </div>
                    <div class="form-group col-md-2">
                        <label for="b">Naziv filma:</label>
                        <input type="number" id="b" name="trajanje" class="form-control" required  />
                    </div>
                    <div class="form-group col-md-5">
                        <label for="c">Naziv filma:</label>
                        <input type="text" id="c" name="glavniGlumci" class="form-control" required />
                    </div>
                </div>

                <button class="btn btn-primary">Dodaj</button>
                <a href="IndexServlet" class="btn btn-danger">Nazad</a>

                <input type="hidden" name="id" value="${f.id}" />                  
            </form>
        </div>

    </body>
</html>