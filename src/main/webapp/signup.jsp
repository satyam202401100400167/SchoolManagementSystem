<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Sign Up - School Management System</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>

    <body style="background-color: #e9ecef;">
        <div class="login-container">
            <h2 style="text-align: center;">Create Account</h2>

            <% String error=(String) request.getAttribute("error"); if (error !=null) { %>
                <div class="error-message">
                    <%= error %>
                </div>
                <% } %>

                    <form action="signup" method="post">
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword">Confirm Password:</label>
                            <input type="password" id="confirmPassword" name="confirmPassword" required>
                        </div>
                        <button type="submit" class="btn btn-success" style="width: 100%;">Sign Up</button>
                    </form>

                    <div style="text-align: center; margin-top: 15px;">
                        <p>Already have an account? <a href="index.jsp">Login here</a></p>
                    </div>
        </div>
    </body>

    </html>