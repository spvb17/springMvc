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
                <c:url var="updateButton" value="/updateStudent">
                    <c:param name="studentId" value="${student.id}"/>
                </c:url>
                <c:url var="deleteButton" value="/deleteStudent">
                    <c:param name="studentId" value="${student.id}"/>
                </c:url>
                <tr>
                    <td>${student.name}</td>
                    <td>${student.surname}</td>
                    <td>${student.specialization}</td>
                    <td>${student.course}</td>
                    <td><input type="button" value="Update" onclick="window.location.href='${updateButton}'"></td>
                    <td><input type="button" value="Delete" onclick="window.location.href='${deleteButton}'"></td>
                </tr>
            </c:forEach>
        </table>

        <br>
        <input type="button" value="Add student" onclick="window.location.href='addStudent'"/>
    </body>

</html>