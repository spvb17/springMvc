<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>spvb17</title>
<head>
    <link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
</head>
    <body>
        <div id="header">
            Student info
        </div>
        <form:form action="saveStudent" modelAttribute="studentAttribute">
            <form:hidden path="id"/>
            <div>
                <table>
                    <tr><td>Name</td><td><form:input path="name"/></td></tr>
                    <tr><td>Surname</td><td><form:input path="surname"/></td></tr>
                    <tr><td>Specialization</td><td><form:input path="specialization"/></td></tr>
                    <tr><td>Course</td><td><form:input path="course"/></td></tr>
                </table>
            </div>
            <div id="addButton">
                <input class="buttons1" type="submit" value="Ok">
            </div>
        </form:form>
    </body>
</html>