<%@page import="tipos.triangulos.Triangulos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Triangulos triangulos = new Triangulos();
            
            String primeiroSeg_txt = request.getParameter("primeiro");
            String segundoSeg_txt = request.getParameter("segundo");
            String terceiroSeg_txt = request.getParameter("terceiro");
            
            short primeiroSeg = Short.parseShort(primeiroSeg_txt);
            short segundoSeg = Short.parseShort(segundoSeg_txt);
            short terceiroSeg = Short.parseShort(terceiroSeg_txt);
            
            triangulos.setSeg1(primeiroSeg);
            triangulos.setSeg2(segundoSeg);
            triangulos.setSeg3(terceiroSeg);
            
            out.print(triangulos.tipos());
        %>
    </body>
</html>
