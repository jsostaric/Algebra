<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a class="navbar-brand" href="#">CBH</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="IndexServlet">Home <span class="sr-only">(current)</span></a>
            </li>            


        </ul>

        <ul class="nav navbar-nav navbar-right">
            <c:if test="${uid != null}">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="caret">Welcome ${uid.ime}</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Povijest Kupovine</a></li>
                        <li><a href="#">Logovi</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="LogoutServlet">Odjavi se</a></li>
                    </ul>
                </li>                   
            </c:if>
            <c:if test="${uid == null}">
                <a href="LoginServlet" class="btn btn-primary btn-spacing-top">Login</a>                            
            </c:if>
        </ul>
    </div>
</nav>