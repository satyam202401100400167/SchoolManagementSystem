<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ include file="header.jsp" %>

            <h2>
                <c:if test="${teacher != null}">Edit Teacher</c:if>
                <c:if test="${teacher == null}">Add New Teacher</c:if>
            </h2>

            <form action="teachers" method="post">
                <c:if test="${teacher != null}">
                    <input type="hidden" name="action" value="update" />
                    <input type="hidden" name="id" value="<c:out value='${teacher.id}' />" />
                </c:if>
                <c:if test="${teacher == null}">
                    <input type="hidden" name="action" value="insert" />
                </c:if>

                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" name="firstName" value="<c:out value='${teacher.firstName}' />" required />
                </div>

                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" name="lastName" value="<c:out value='${teacher.lastName}' />" required />
                </div>

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" value="<c:out value='${teacher.email}' />" required />
                </div>

                <div class="form-group">
                    <label>Subject</label>
                    <input type="text" name="subject" value="<c:out value='${teacher.subject}' />" required />
                </div>

                <button type="submit" class="btn btn-success">Save</button>
                <a href="teachers" class="btn btn-primary">Cancel</a>
            </form>

            <%@ include file="footer.jsp" %>