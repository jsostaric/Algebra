<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <%@include file="partials/head.jsp" %>
    </head>
    <body>
        <%@include file="partials/nav.jsp" %>


        <div class="row">
            <div class="container">
                <div class="col-md-6 offset-3">
                    <form action="LoginServlet" method="post">
                        <fieldset class="fieldset">    	
                            <legend>Login</legend>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" name="email" class="form-control" aria-describedby="emailHelp" id="email"
                                       <c:if test="${gr==1}">
                                           value="${email}"
                                       </c:if> />
                                <c:if test="${gr==2}">
                                    <small  id="emailHelp" class="form-text text-muted"><span id="obavijest">taj korisnik ne postoji</span></small>
                                </c:if> 
                            </div>
                            <div class="form-group">
                                <label for="lozinka">Lozinka:</label>
                                <input type="password" name="lozinka" id="lozinka" class="form-control" />
                                <c:if test="${gr==1}">
                                    <small  id="emailHelp" class="form-text text-muted"><span id="obavijest">pogrešna lozinka</span></small>
                                </c:if> 
                            </div>
                            <button type="submit" class="btn btn-primary">Prijavi se</button>
                            <a href="IndexServlet" class="btn btn-secondary">Natrag</a>
                        </fieldset>
                    </form>
                </div>                 
            </div>
        </div>

        <%@include file="partials/footer.jsp" %>
        <%@include file="partials/script.jsp" %>
    </body>
</html>