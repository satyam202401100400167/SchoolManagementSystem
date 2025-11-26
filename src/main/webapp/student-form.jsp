<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ include file="header.jsp" %>

            <h2>
                <c:if test="${student != null}">Edit Student</c:if>
                <c:if test="${student == null}">Add New Student</c:if>
            </h2>

            <form action="students" method="post">
                <c:if test="${student != null}">
                    <input type="hidden" name="action" value="update" />
                    <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
                </c:if>
                <c:if test="${student == null}">
                    <input type="hidden" name="action" value="insert" />
                </c:if>

                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" name="firstName" value="<c:out value='${student.firstName}' />" required />
                </div>

                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" name="lastName" value="<c:out value='${student.lastName}' />" required />
                </div>

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" value="<c:out value='${student.email}' />" required />
                </div>

                <div class="form-group">
                    <label>Course</label>
                    <input type="text" name="course" value="<c:out value='${student.course}' />" required />
                </div>

                <button type="submit" class="btn btn-success">Save</button>
                <a href="students" class="btn btn-primary">Cancel</a>
            </form>

            <%@ include file="footer.jsp" %>