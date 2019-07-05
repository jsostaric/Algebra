<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Prikaz prijava na sustav</title>
    </head>
    <body>
       <%@include file="zaglavlje.jsp"  %>

             <br/> 
             <h3>Prikaz prijava na sustav</h3>
             <br/>
   
        <table class="table table-striped">
            <tr>
                <th>Ime i prezime</th><th>Email</th><th>Vrijeme</th><th>Način prijave</th></tr> 
            <c:forEach var="p" items="${prijave}">
                <tr>
                    <td>${p.imeprezime}</td>
                    <td>${p.email}</td>
                    <td>${p.vrijeme}</td>
                    <td>${p.nacinprijave}</td>
                </tr>
            </c:forEach> 
        </table>
             
             <br/>
             
        <a href="IndexServlet" class="btn btn-primary">Nazad na kupnju</a>

    </body>
</html>

