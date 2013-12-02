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
        <form name="tempform" method="get">
            Enter Temperature in Fahrenheit:
            <input type="text"name="degree">
            <input type="submit" value="Convert">
            </input>
        </form>
        <%
          String degree = request.getParameter("degree");
          if(degree != null){
          double fahrenheit = Double.parseDouble(degree);
          double celcius = (fahrenheit - 32)*5/9;
          out.write(String.valueOf(celcius));
          }
        %>
    </body>
</html>
