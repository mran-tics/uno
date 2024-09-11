<%-- 
    Document   : calcular
    Created on : sep 10, 2024, 5:43:12 p.m.
    Author     : MARYCRUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados de Operaciones Aritméticas</title>
        <link href="CSS/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container2">
            <h1>Resultados de Operaciones Aritméticas</h1>
            <%
                int num1 = Integer.parseInt(request.getParameter("num1"));
                int num2 = Integer.parseInt(request.getParameter("num2"));
                int S, R, M, D;
                S = num1 + num2;
                R = num1 - num2;
                M = num1 * num2;
                D = num2 != 0 ? num1 / num2 : 0; // Evitar división por cero

                out.println("<p>La suma es: <span class='result'>" + S + "</span></p>");
                out.println("<p>La resta es: <span class='result'>" + R + "</span></p>");
                out.println("<p>La multiplicación es: <span class='result'>" + M + "</span></p>");
                out.println("<p>La división es: <span class='result'>" + D + "</span></p>");
            %>
        </div>
    </body>
</html>
