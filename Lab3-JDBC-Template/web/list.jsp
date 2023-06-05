<%-- 
    Document   : list
    Created on : Apr 19, 2022, 10:09:49 AM
    Author     : AD
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <h1> Student List </h1>
    <br/>
        <%
            ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students");
        %>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>
                    ID
                </td>
                <td>
                    Name
                </td>
                <td>
                    Gender
                </td>
                <td>
                    DOB
                </td>
            </tr>
        <% for (Student s : students) {
        %>
                <tr>
                    <td>
                        <%=s.getId() %>
                    </td> 
                    <td>
                        <%=s.getName()%>
                    </td>
                    <td>
                         <%=s.getGender()%> 
                    </td>                
                    <td>
                        <%=s.getdobString()%>
                    </td>
                 <td>   
                     
                <a href="update?id=<%=s.getId() %>">Update</a>
                   
                     <a href="#" onclick="doDelete('<%=s.getId() %>')">Delete</a>

                    </td>
                    
                </tr>
        <%}%>
        </table>
        
        <a href="add.jsp">Create</a>
      <script type="text/javascript">
        function doDelete(id) {
            if (confirm("Are you sure you want to delete ?" )) {
                window.location = "delete?id=" + id;
            }
        }

    </script>
    </body>
</html>