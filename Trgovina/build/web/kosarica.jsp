<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<!doctype html>
<html lang="en">
    <head>
        <%@include file="partials/head.jsp" %>
    </head>
    <body>
        <%@include file="partials/nav.jsp" %>

        <%@include file="partials/header.jsp" %>


        <table class="table table-striped">
            <tr><th>Naziv</th><th>Kategorija</th><th>Cijena</th><th>Akcija</th></tr> 
                    <c:forEach var="puk" items="${kosarica}">
                <tr>
                    <td>${proizvodi.get(puk.id).ime}</td>
                    <td>${kategorije.get(proizvodi.get(puk.id).kategorija).ime}</td>                    
                    <td><fmt:formatNumber value="${proizvodi.get(puk.id).cijena} " maxFractionDigits="2" />kn</td>
                    <td>

                        <form action="PromijeniKolicinuServlet?id=${puk.id}" method="post">
                            <div class="row">
                                <input type="number" min="1"  class="form-control amount" max="${proizvodi.get(puk.id).kolicina}" name="kol" value="${puk.kol}" /> &nbsp;
                                <button type="submit" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></button>
                                <a href="ObrisiIzKosariceServlet?id=${puk.id}" id="remove" ><i class="fas fa-times-circle"></i></a>
                            </div>
                        </form> 

                    </td>
                </tr>
            </c:forEach>      
            <tr>
                <td colspan="2">Ukupno:</td>
                <td><fmt:formatNumber value="${ukupno}" maxFractionDigits="2" /> kn</td>
            </tr>
        </table>

        <a href="IndexServlet" class="btn btn-primary btn-block" >Natrag</a>
        <c:if test="${uid!=null}">
            <div class="container">
            <form method="post" action="KupiServlet">
                Način plaćanja:
                <div class="form-check">
                    <input type="radio" class="form-check-input" id="a" name="nacinpl" value="1" checked>
                    <label for="a" class="form-check-label">On-line</label>
                </div>
                <div class="form-check">
                    <input type="radio" class="form-check-input" id="b" name="nacinpl" value="2">
                    <label for="b" class="form-check-label">Pouzećem</label>
                </div>
                <div class="form-group">
                    <input type="submit" value="Kupi" class="btn btn-sm btn-success" />
                </div>
            </form>
            </div>
        </c:if> 
        <c:if test="${uid == null}">
            <div class="container obavijest">
                <p>Kako biste mogli kupiti proizvode morate se <a href="LoginServlet">prijaviti</a></p>
            </div>
        </c:if>

        <%@include file="partials/footer.jsp" %>
        <%@include file="partials/script.jsp" %>
    </body>
</html>