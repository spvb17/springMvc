<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>spvb17</title>
<head>
    <link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
</head>
    <body>
        <div id="header">
            List of all students
        </div>

        <table id="table">
            <tr>
                <th>Identifier</th>
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
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.surname}</td>
                    <td>${student.specialization}</td>
                    <td>${student.course}</td>
                    <td><input class="buttons" type="button" value="Update" onclick="window.location.href='${updateButton}'">
                        <input class="buttons" type="button" value="Delete" onclick="window.location.href='${deleteButton}'">
                    </td>
                </tr>
            </c:forEach>
        </table>
            <div id="addButton">
                <input class="buttons1" type="button" value="Add student" onclick="window.location.href='addStudent'"/>
            </div>
    </body>

</html>