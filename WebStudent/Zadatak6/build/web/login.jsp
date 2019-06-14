<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="partials/head.jsp" %>
    </head>
    <body>
        <div class="container">
            <h1>Logiraj se</h1>
            <% String gr = request.getParameter("gr");
                String ime = request.getParameter("ime");
                if(gr == null) gr="";
                if(ime==null) ime="";
            %>
            <form method="post" action="LoginServlet">
                <div class="form-group">
                    <label for="ime">Ime:</label>
                    <input type="text" name="ime" id="ime" class="form-control" 
                           <%
                               if(gr.equals("1")) out.print("value='" +ime+"'");
                               %> />
                    <%
                        if(gr.equals("2")) {
                            out.println("<span style='color:red'>(Taj korisnik ne postoji)</span>");
                        }
                    %>
                </div>
                
                <div class="form-group">
                    <label for="lozinka">Lozinka</label>
                    <input type="password" name="lozinka" id="lozinka" class="form-control" />
                    <% if(gr.equals("1")) {
                        out.println("<span style='color:red'>(Pogrešna lozinka)</span>");                    
                    }
                    %>
                </div>
                
                <div class="form-group">
                    <input type="submit" value="Prijavi se" class="btn btn-primary btn-block" />                    
                </div>
            </form>
        </div>
        
    </body>
</html>


