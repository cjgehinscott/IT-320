<%-- 
    Document   : index
    Created on : Nov 22, 2013, 6:27:14 PM
    Author     : cjgehinscott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example</title>
        
    </head>
    <body>
        <jsp:useBean id="u" scope="session" class="myUtil.Convert"/>
        <%
        String degree = request.getParameter("degree");
        String selection = request.getParameter("selection");
        if(selection.equals("1")){
        double fahrenheit = Double.parseDouble(degree);
        double celcius = u.getCelcius(fahrenheit);
        out.write(String.valueOf(celcius));
               }else if(selection.equals("2")){
                   double celcius = Double.parseDouble(selection);
                   double fahrenheit = u.getFahrenheit(celcius);
                   out.write(String.valueOf(fahrenheit));
               }
        %>
    </body>
</html>
