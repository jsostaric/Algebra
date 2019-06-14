

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
        <% Student st = (Student)request.getAttribute("st");  %>
        <form method="post" action="DodajStudentaServlet">
            <div class="container">
                <div class="form-group">
                    <label for="ime">Ime:</label>
                    <input type="text" name="ime" id="ime" class="form-control" value="<%=st.getIme()  %>" />                    
                </div>

                <div class="form-group">
                    <label for="prezime">Prezime:</label>
                    <input type="text" name="prezime" id="prezime" class="form-control" value="<%=st.getPrezime()%>" />                    
                </div>

                <div class="form-group">
                    <label for="godina_studija">Godina studija:</label>
                    <select name="godina_studija">
                        <option <%=st.getGodina()==1 ? "selected='selected'" : "" %>>1</option>
                        <option<%=st.getGodina()==2 ? "selected='selected'" : "" %>>2</option>
                        <option<%=st.getGodina()==3 ? "selected='selected'" : "" %>>3</option>
                        <option<%=st.getGodina()==4 ? "selected='selected'" : "" %>>4</option>
                        <option<%=st.getGodina()==5 ? "selected='selected'" : "" %>>5</option>
                        <option<%=st.getGodina()==6 ? "selected='selected'" : "" %>>6</option>
                    </select>                    
                </div>
                <div class="form-group">
                    <label for="jmbag">JMBAG:</label>
                    <input type="text" name="jmbag" id="jmbag" class="form-control" value="<%=st.getJmbag()%>"/>                    
                </div>
                <div class="form-group">                    
                    <input type="submit" value="Promijeni" class="btn btn-primary btn-block" />                    
                </div>
            </div>
        </form>
    </body>
</html>
