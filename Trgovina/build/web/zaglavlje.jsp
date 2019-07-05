<%@page import="modeli.ProizvodUKosarici"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%
           int kossize = 0;
            List<ProizvodUKosarici> kosarica = (List<ProizvodUKosarici>) request.getSession().getAttribute("kosarica");
            if (kosarica!=null) kossize = kosarica.size();
            request.setAttribute("kossize", kossize);
%>

        <table class="table">
            <tr><td><h1>Trgovina obućom 'Algebra'</h1></td>
                <td> <c:if test="${uid==null}">
                    niste prijavljeni <a href="LoginServlet" class="btn btn-sm btn-primary">prijava</a>
                     </c:if> 
                     <c:if test="${uid!=null}"> 
                         Prijavljen: ${uid.ime} ${uid.prezime}<br/>
                         Uloga: ${uid.uloga}<br/>
                         <c:if test="${uid.uloga.equals('Administrator')}">                            
                            <a href="PrikaziPrijaveServlet" class="btn btn-sm btn-primary">prijave</a>
                         </c:if>
                         <a href="PrikaziPovijestServlet" class="btn btn-sm btn-primary">povijest kupnje</a>
                         <a href="LogoutServlet" class="btn btn-sm btn-primary">odjava</a>
                     </c:if>
               </td>
                <td><c:if test="${kossize==0}">
                        <img src="kosarica.png" height="50px"/>
                    </c:if>
                    <c:if test="${kossize!=0}">
                        <a href="PrikaziKosaricuServlet"><img src="kosarica.png" height="50px"/></a>
                        (${kossize})
                    </c:if>                        
                </td>
            </tr>
        </table>
