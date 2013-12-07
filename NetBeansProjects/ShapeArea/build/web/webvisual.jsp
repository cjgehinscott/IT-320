<%-- 
    Document   : index
    Created on : Dec 2, 2013, 10:25:15 AM
    Author     : cjgehinscott
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShapeArea</title>
    </head>
    <body>
        <form name="areaform" method="post" action="webresults.jsp">
            
            <p>Select the shape you would like to calculate the area of
            <select name="selection">
                <option value="1">Circle</option>
                <option value="2">Square</option>
                <option value="3">Rectangle</option>
                <option value="4">Triangle</option>
                <option value="5">Parallelogram</option>
                <option value="6">Ellipse</option>
                <option value="7">Trapezoid</option>
            </select>
            </p>
         
            <input type="submit" value="Next">
            </input>
        </form>
    </body>
</html>
