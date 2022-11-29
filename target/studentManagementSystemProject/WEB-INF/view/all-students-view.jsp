<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Mvc application</title>
    <body>
        <h1>List of all students</h1><br>

        <table>
            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>Specialization</th>
                <th>Course</th>
            </tr>
            <c:forEach var="student" items="${allStudsAttribute}">
                <tr>
                    <td>${student.name}</td>
                    <td>${student.surname}</td>
                    <td>${student.specialization}</td>
                    <td>${student.course}</td>
                </tr>
            </c:forEach>
        </table>

        <br>
        <input type="button" value="Add student" onclick="window.location.href='addStudent'"/>
    </body>

</html>