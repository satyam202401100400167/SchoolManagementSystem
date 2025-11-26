<%@ include file="header.jsp" %>

    <h2>Dashboard</h2>
    <p>Welcome to the School Management System.</p>

    <div style="display: flex; gap: 20px; margin-top: 20px;">
        <div
            style="flex: 1; padding: 20px; background: #f8f9fa; border: 1px solid #dee2e6; border-radius: 4px; text-align: center;">
            <h3>Students</h3>
            <p>Manage student records.</p>
            <a href="students" class="btn btn-primary">Go to Students</a>
        </div>
        <div
            style="flex: 1; padding: 20px; background: #f8f9fa; border: 1px solid #dee2e6; border-radius: 4px; text-align: center;">
            <h3>Teachers</h3>
            <p>Manage teacher records.</p>
            <a href="teachers" class="btn btn-primary">Go to Teachers</a>
        </div>
    </div>

    <%@ include file="footer.jsp" %>