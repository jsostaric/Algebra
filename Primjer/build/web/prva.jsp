<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int red = Integer.parseInt(request.getParameter("red"));
            int stupac = Integer.parseInt(request.getParameter("stupac"));

        %>
        <table style="border-collapse: collapse">
            <%
            for (int i = 1; i <= red; i++) {
                out.println("<tr>");
                for (int j = 1; j < stupac; j++) {
                    String boja = "black";
                    if(i%2 == 0) {
                        boja="black";
                        if(j%2==0) boja ="yellow";
                    }else{
                        boja="yellow";
                        if(j%2==0) boja="black";
                    }
                    out.println("<td width='20px' height='20px' style='background-color:"+ boja +"'>");
                }
                out.println("<tr>");
            }           
            %>
        </table>
    </body>
</html>
