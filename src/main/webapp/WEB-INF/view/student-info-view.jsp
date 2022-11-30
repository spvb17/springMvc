<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <body>
        <div>
            <h1>
                Student info
            </h1>
        </div>
        <form:form action="saveStudent" modelAttribute="studentAttribute">
            <form:hidden path="id"

            Name <form:input path="name"/>
            <br>
            Surname <form:input path="surname"/>
            <br>
            Specialization <form:input path="specialization"/>
            <br>
            Course <form:input path="course"/>
            <br>
<%--            <input type="submit" value="Ok">--%>
        </form:form>
    </body>
</html>