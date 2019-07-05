<table class="table">
    <tr><td><h1>TableTop Games</h1></td>
        <td>
            <c:if test="${uid == null}">
                <p> niste prijavljeni. <a href="LoginServlet" >Prijavi se</a></p>
            </c:if> 
            <c:if test="${uid != null}">
                <p>Prijavljen: ${uid.ime + " " + uid.prezime}<br>
                    Uloga: ${uid.uloga}<br>
                    <a href="LogoutServlet" >Odjavi se</a></p>
            </c:if> 
        </td>
        
        <td>                       
        </td>
    </tr>
</table>