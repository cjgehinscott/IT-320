<%-- 
    Document   : example4
    Created on : Nov 22, 2013, 7:37:36 PM
    Author     : cjgehinscott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{  
        String degree = request.getParameter("degree");
          //if(degree != null && !degree.equals("")){
          double fahrenheit = Double.parseDouble(degree);
          double celcius = (fahrenheit - 32)*5/9;
          out.write(String.valueOf(celcius));
          //}
                   }
        catch(Exception e){
            out.write("Please Enter a Number!!!");
        }
        %>
    </body>
</html>
