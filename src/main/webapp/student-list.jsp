<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ include file="header.jsp" %>

            <div style="display: flex; justify-content: space-between; align-items: center;">
                <h2>Student Management</h2>
                <a href="students?action=new" class="btn btn-success">Add New Student</a>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Course</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${listStudents}">
                        <tr>
                            <td>
                                <c:out value="${student.id}" />
                            </td>
                            <td>
                                <c:out value="${student.firstName}" />
                            </td>
                            <td>
                                <c:out value="${student.lastName}" />
                            </td>
                            <td>
                                <c:out value="${student.email}" />
                            </td>
                            <td>
                                <c:out value="${student.course}" />
                            </td>
                            <td>
                                <a href="students?action=edit&id=<c:out value='${student.id}' />"
                                    class="btn btn-warning">Edit</a>
                                <a href="students?action=delete&id=<c:out value='${student.id}' />"
                                    class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <%@ include file="footer.jsp" %>