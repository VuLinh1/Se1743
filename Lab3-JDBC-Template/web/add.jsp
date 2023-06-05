<%-- 
    Document   : add
    Created on : May 31, 2023, 3:54:37 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="add" method="post">
            Name:<input type="text" name="name">
            <br>
         <c:if test="${requestScope.s.gender eq '1'}">
                Gender: <input name ="gender" checked="" type="radio" value="1"> Male
                <input name ="gender" type="radio" value="0"/> Female
            </c:if>            

            <br>
            DOB: <input name ="dob" type="date">
            <br/>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
