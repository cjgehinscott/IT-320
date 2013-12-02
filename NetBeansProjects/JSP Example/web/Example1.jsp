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
        <script>
            function convert(){
                var f = document.tempform.degree.value;
                var c = (f-32)*5/9;
                alert(f + " degrees Fahrenheit = " + c + " degrees Celcius");
            }
        </script>
    </head>
    <body>
        <form name="tempform" onsubmit="convert()">
            Enter Temperature in Fahrenheit:
            <input type="text"name="degree">
            <input type="submit" value="Convert">
            </input>
        </form>
    </body>
</html>
