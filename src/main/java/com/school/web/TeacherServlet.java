package com.school.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.school.dao.TeacherDAO;
import com.school.model.Teacher;

@WebServlet("/teachers")
public class TeacherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TeacherDAO teacherDAO;

    public void init() {
        teacherDAO = new TeacherDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        try {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "insert":
                    insertTeacher(request, response);
                    break;
                case "delete":
                    deleteTeacher(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "update":
                    updateTeacher(request, response);
                    break;
                default:
                    listTeachers(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listTeachers(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Teacher> listTeachers = teacherDAO.selectAllTeachers();
        request.setAttribute("listTeachers", listTeachers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Teacher existingTeacher = teacherDAO.selectTeacher(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-form.jsp");
        request.setAttribute("teacher", existingTeacher);
        dispatcher.forward(request, response);
    }

    private void insertTeacher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        Teacher newTeacher = new Teacher(firstName, lastName, email, subject);
        teacherDAO.insertTeacher(newTeacher);
        response.sendRedirect("teachers");
    }

    private void updateTeacher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");

        Teacher teacher = new Teacher(id, firstName, lastName, email, subject);
        teacherDAO.updateTeacher(teacher);
        response.sendRedirect("teachers");
    }

    private void deleteTeacher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        teacherDAO.deleteTeacher(id);
        response.sendRedirect("teachers");
    }
}
