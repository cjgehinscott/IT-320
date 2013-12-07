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
        <jsp:useBean id="a" scope="session" class="myUtility.AreaCalculator"/>
        <%
        String selection = request.getParameter("selection");
        if(selection.equals("1")){%>
            <p>Enter the radius for the circle to calculate the area:</p>
                <input type="text" name="radius" value=""></input>
        <%
        }else if(selection.equals("2")){%>
            <p>Enter the size of a side to calculate the area of the square:</p>
                <input type="text" name="size" value=""></input>
        <%
        }else if(selection.equals("3")){%>
            <p>Enter the width for the rectangle to calculate the area:</p>
            <input type="text" name="width" value=""></input>
            <p>Ente the length for the rectangle to calculate the area:</p>
            <input type="text" name="length" value=""></input>
        <%
        }else if(selection.equals("4")){%>
            <p>Enter the base for the triangle to calculate the area:</p>
            <input type="text" name="base" value=""></input>
            <p>Enter the height for the triangle to calculate the area:</p>
            <input type="text" name="height" value=""></input>
        <%
        }else if(selection.equals("5")){%>
            <p>Enter the base for the parallelogram to calculate the area:</p>
            <input type="text" name="base" value=""></input>
            <p>Enter the height for the parallelogram to calculate the area:</p>
            <input type="text" name="height" value=""></input>
        <%
        }else if(selection.equals("6")){%>
            <p>Enter the major axis for the ellipse to calculate the area:</p>
            <input type="text" name="majorAxis" value=""></input>
            <p>Enter the minor axis for the ellipse to calculate the area:</p>
            <input type="text" name="minorAxis" value=""></input>
        <%
        }else if(selection.equals("7")){%>
            <p>Enter the first side of the trapezoid to calculate the area:</p>
            <input type="text" name="side1" value=""></input>
            <p>Enter the second side of the trapezoid to calculate the area:</p>
            <input type="text" name="side2" value=""></input>
            <p>Enter the height of the trapezoid to calculate the area:</p>
            <input type="text" name="height" value=""></input>
        <%
        }
        %>
        <p><input type="submit" value="Calculate"></input></p>
    </body>
</html>
