<%@page import="modeli.Student"%>
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="partials/head.jsp" %>
    </head>
    <body>
        <h1>Promijeni podatke o studentu</h1>
        
        <form method="post" action="PromijeniStudentaServlet">
            <input type="hidden" name="i" value="${i}" />
            <div class="container">
                <div class="form-group">
                    <label for="ime">Ime:</label>
                    <input type="text" name="ime" id="ime" class="form-control" value="${st.ime}" />                    
                </div>

                <div class="form-group">
                    <label for="prezime">Prezime:</label>
                    <input type="text" name="prezime" id="prezime" class="form-control" value="${st.prezime}" />                    
                </div>

                <div class="form-group">
                    <label for="godina_studija">Godina studija:</label>
                    <select name="godina_studija">
                        <% for(int g=1; g<=6;g++){
                            request.setAttribute("g",g);                        
                        %>
                            <option ${st.godina == g?"selected='selected'":""}>${g}</option>
                        <% } %>                        
                    </select>                    
                </div>
                <div class="form-group">
                    <label for="jmbag">JMBAG:</label>
                    <input type="text" name="jmbag" id="jmbag" class="form-control" value="${st.jmbag}"/>                    
                </div>
                <div class="form-group">                    
                    <input type="submit" value="Promijeni" class="btn btn-primary btn-block" />                    
                </div>
            </div>
        </form>
         
        <%@include file="partials/footer.jsp" %>
        <%@include file="partials/scripts.jsp" %>        
    </body>
</html>
