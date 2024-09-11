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
                // Verificar si los parámetros num1 y num2 existen
                if (request.getParameter("num1") != null && request.getParameter("num2") != null) {
                    try {
                        // Obtener y convertir los parámetros
                        int num1 = Integer.parseInt(request.getParameter("num1"));
                        int num2 = Integer.parseInt(request.getParameter("num2"));
                        
                        // Realizar las operaciones
                        int S = num1 + num2;
                        int R = num1 - num2;
                        int M = num1 * num2;
                        String D;
                        
                        // Validar la división por cero
                        if (num2 != 0) {
                            D = String.valueOf(num1 / num2);
                        } else {
                            D = "No se puede dividir entre cero";
                        }

                        // Mostrar resultados
                        out.println("<p>La suma es: <span class='result'>" + S + "</span></p>");
                        out.println("<p>La resta es: <span class='result'>" + R + "</span></p>");
                        out.println("<p>La multiplicación es: <span class='result'>" + M + "</span></p>");
                        out.println("<p>La división es: <span class='result'>" + D + "</span></p>");

                    } catch (NumberFormatException e) {
                        // En caso de que los parámetros no sean números válidos
                        out.println("<p>Error: Uno o ambos valores ingresados no son números válidos.</p>");
                    }
                } else {
                    out.println("<p>Error: No se enviaron los valores correctamente.</p>");
                }
            %>
        </div>
    </body>
</html>
