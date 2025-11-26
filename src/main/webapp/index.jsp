<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Login - School Management System</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>

    <body style="background-color: #e9ecef;">
        <div class="login-container">
            <h2 style="text-align: center;">School Management Login</h2>

            <% String message=(String) request.getAttribute("message"); String success=(String)
                request.getAttribute("success"); if (success !=null) { %>
                <div class="success-message">
                    <%= success %>
                </div>
                <% } if (message !=null) { %>
                    <div class="error-message">
                        <%= message %>
                    </div>
                    <% } %>

                        <form action="login" method="post">
                            <div class="form-group">
                                <label for="username">Username:</label>
                                <input type="text" id="username" name="username" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" id="password" name="password" required>
                            </div>
                            <button type="submit" class="btn btn-primary" style="width: 100%;">Login</button>
                        </form>

                        <div style="text-align: center; margin-top: 15px;">
                            <p>Don't have an account? <a href="signup">Sign up here</a></p>
                        </div>
        </div>
    </body>

    </html>