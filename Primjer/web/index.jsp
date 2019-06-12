<!doctype html>
<html lang="en">
    <head>
        <jsp:include page="partials/head.jsp" />
    </head>

    <body>
        <jsp:include page="partials/nav.jsp" />        
        <div class="row">
            <div class="col-md-8 offset-2">
                <h1>Hello, world!</h1>
                <a href="Prvi">Pozovi Servlet</a><br>
                <a href="prva.jsp">Pozovi JSP</a>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-8 offset-2">
                <form method="post" action="prva.jsp">
                    Broj redaka: <input type="number" name="red" min="1" max="100" /><br>
                    Broj stupaca: <input type="number" name="stupac" min="1" max="50"/><br>
                    <input type="submit" value="Pokreni" />                    
                </form>
            </div>
        </div>
        
        <jsp:include page="partials/footer.jsp" />

        <jsp:include page="partials/scripts.jsp" />       
    </body>
</html>