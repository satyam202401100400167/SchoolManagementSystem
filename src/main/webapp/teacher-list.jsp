<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ include file="header.jsp" %>

            <div style="display: flex; justify-content: space-between; align-items: center;">
                <h2>Teacher Management</h2>
                <a href="teachers?action=new" class="btn btn-success">Add New Teacher</a>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Subject</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="teacher" items="${listTeachers}">
                        <tr>
                            <td>
                                <c:out value="${teacher.id}" />
                            </td>
                            <td>
                                <c:out value="${teacher.firstName}" />
                            </td>
                            <td>
                                <c:out value="${teacher.lastName}" />
                            </td>
                            <td>
                                <c:out value="${teacher.email}" />
                            </td>
                            <td>
                                <c:out value="${teacher.subject}" />
                            </td>
                            <td>
                                <a href="teachers?action=edit&id=<c:out value='${teacher.id}' />"
                                    class="btn btn-warning">Edit</a>
                                <a href="teachers?action=delete&id=<c:out value='${teacher.id}' />"
                                    class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <%@ include file="footer.jsp" %>