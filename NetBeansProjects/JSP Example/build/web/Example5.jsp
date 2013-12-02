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
        <form name="tempform" method="post" action="Example6.jsp">
            Enter Temperature:
            <input type="text"name="degree" value="">
            <select name="selection">
                <option value="1">Fahrenheit</option>
                <option value="2">Celcius</option>
            </select>
            <input type="submit" value="Convert">
            </input>
        </form>
    </body>
</html>
