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
            <li class="nav-item dropdown">
                <c:if test="${uid == null}">
                    <a href="LoginServlet" class="btn btn-primary btn-spacing-top">Login</a>                            
                </c:if>
                <c:if test="${uid != null}">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Welcome ${uid.ime}
                    </a>
                                              
                </c:if>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="PrikaziPovijestServlet">Povijest Kupovine</a>
                    <c:if test="${uid.uloga.equals('Administrator')}">
                        <a class="dropdown-item" href="PrikaziPrijaveServlet">Logovi</a>                        
                    </c:if>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="LogoutServlet">Odjava</a>
                </div>
            </li>          
        </ul>
    </div>
</nav>