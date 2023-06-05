<%-- 
    Document   : list
    Created on : May 24, 2023, 7:21:30 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="list" method="post">
            Number of Students
                    <input type="text" name="size" >  
            <input type="submit" name="submit" value="generate" required/>
        </form>
        <c:if test="${requestScope.lst != null}">
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>DOB</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items ="${requestScope.lst}" var = "e">
                        <tr>
                            <td>${e.id}</td>
                            <td>${e.name}</td>
                            <c:if test = "${e.gender}">
                                <td><input type="checkbox" checked="" disabled=""></td>
                                </c:if>
                                <c:if test = "${!e.gender}" >
                                <td><input type="checkbox" disabled=""></td>
                                </c:if>
                            <td><fmt:formatDate value="${e.dob}" pattern="dd-MM-yyyy" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </body>
</html>
