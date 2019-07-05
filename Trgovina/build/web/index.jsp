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
                <div class="col-md-8 offset-2">
                    <div class="jumbotron">
                        <h1>CardBoard Box</h1>                        
                    </div>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="container">
                <div class="col-md-12">
                    <c:forEach var="k" items="${kategorije}">
                        <a href="IndexServlet?katId=${k.key}" 
                           <c:if test="${k.key!=katId}">class="btn btn-primary"</c:if>
                           <c:if test="${k.key==katId}">class="btn btn-success"</c:if>
                           >${k.value.ime}</a> &nbsp;
                    </c:forEach>
                           
                    <div class="right">
                        <c:if test="${kosSize==0}">
                            <span id="cart"><i class="fas fa-shopping-cart"></i></span>
                            </c:if>
                            <c:if test="${kosSize!=0}">
                            <a href="PrikaziKosaricuServlet" class="cartLink"><span id="cart"><i class="fas fa-shopping-cart"></i></span>
                                <span class="badge badge-danger cartNum">${kosSize}</span>
                            </a>                            
                        </c:if>                 
                    </div>          
                    <hr>      

                    <table class="table table-striped">
                        <tr><th>Naziv</th><th>Kategorija</th><th>Cijena</th><th>Akcija</th></tr> 
                                <c:forEach var="p" items="${proizvodi}">
                            <tr>
                                <td>${p.ime}</td>
                                <td>${kategorije.get(p.kategorija).ime}</td>                    
                                <td>${p.cijena} kn</td>
                                <td>
                                    <form action="DodajUKosaricuServlet?id=${p.id}" method="post">
                                        <div class="row">
                                            <input type="hidden" name="katId" value="${katId}" />
                                            <input type="number" min="1"  class="form-control amount" max="${p.kolicina}" name="kol" value="1" /> &nbsp;
                                            <input type="submit" class="btn btn-sm btn-primary" value="Dodaj u košaricu" />
                                        </div>
                                    </form> 
                                </td>
                            </tr>
                        </c:forEach>      
                    </table>
                </div>                
            </div>
        </div>


        <%@include file="partials/footer.jsp" %>
        <%@include file="partials/script.jsp" %>
    </body>
</html>