<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Povijest kupnje</title>
    </head>
    <body>
       <%@include file="zaglavlje.jsp"  %>

             <br/>  <br/>
   
        <table class="table table-striped">
            <tr>
                <c:if test="${uid.uloga.equals('Administrator')}"> 
                    <th>Ime i prezime kupca<br/>
                        <form method="post" action="PrikaziPovijestServlet">
                            <select name="odabranikorisnik" class="form-control" onchange="this.form.submit()">
                                <option value="0">Svi kupci</option>
                                <c:forEach var="kor" items="${korisnici}">
                                    <option value="${kor.id}" 
                                         <c:if test="${kor.id==odabranikorisnik}">
                                            selected="selected"
                                         </c:if>
                                            >${kor.prezime}, ${kor.ime}</option>
                                </c:forEach>
                            </select>
                        </form>
                    </th><th>Email</th>
                </c:if>    
                <th>Naziv proizvoda</th><th>Količina</th><th>Cijena [Kn]</th><th>Način plaćanja</th><th>Vrijeme</th></tr> 
            <c:forEach var="kp" items="${kupljeniproizvodi}">
                <tr>
                    <c:if test="${uid.uloga.equals('Administrator')}"> 
                        <td>${kp.imeprezime}</td>
                        <td>${kp.email}</td>
                    </c:if>
                    <td>${kp.ime}</td>
                    <td>${kp.kol}</td>
                    <td align="right" width="110px"><fmt:formatNumber value="${kp.cijena}" maxFractionDigits="2" minFractionDigits="2"/></td>
                    <td>${kp.nacinpl}</td>
                    <td>${kp.vrijeme}</td>
                </tr>
            </c:forEach> 
        </table>
             
             <br/>
             
        <a href="IndexServlet" class="btn btn-primary">Nazad na kupnju</a>

    </body>
</html>

