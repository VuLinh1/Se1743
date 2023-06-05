<%-- 
    Document   : update
    Created on : Jun 1, 2023, 10:32:03 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     
    </head>
    <body>
        <form action="update" method="post">
            Id: <input type="text" name="id" readonly value ="${requestScope.s.id}">
            <br>
            Name:<input type="text" name="name" value ="${requestScope.s.name}">
            <br>
            <c:if test="${requestScope.s.gender eq '1'}">
                Gender: <input name ="gender" checked="" type="radio" value="1"> Male
                <input name ="gender" type="radio" value="0"/> Female
            </c:if>            
            <c:if test="${requestScope.s.gender eq '0'}">
                Gender: <input name ="gender" type="radio" value="1"> Male
                <input name ="gender" type="radio" checked="" value="0"/> Female
            </c:if>
            <br>
            DOB: <input name ="dob" type="date" value ="${requestScope.s.dob}">
            <br/>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
