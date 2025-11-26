package com.school.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.school.model.Teacher;
import com.school.util.DBConnection;

public class TeacherDAO {

    public void insertTeacher(Teacher teacher) {
        String sql = "INSERT INTO teachers (first_name, last_name, email, subject) VALUES (?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, teacher.getFirstName());
            statement.setString(2, teacher.getLastName());
            statement.setString(3, teacher.getEmail());
            statement.setString(4, teacher.getSubject());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Teacher selectTeacher(int id) {
        Teacher teacher = null;
        String sql = "SELECT * FROM teachers WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                String email = rs.getString("email");
                String subject = rs.getString("subject");
                teacher = new Teacher(id, firstName, lastName, email, subject);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teacher;
    }

    public List<Teacher> selectAllTeachers() {
        List<Teacher> teachers = new ArrayList<>();
        String sql = "SELECT * FROM teachers";
        try (Connection connection = DBConnection.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet rs = statement.executeQuery()) {
            while (rs.next()) {
                int id = rs.getInt("id");
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                String email = rs.getString("email");
                String subject = rs.getString("subject");
                teachers.add(new Teacher(id, firstName, lastName, email, subject));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teachers;
    }

    public boolean deleteTeacher(int id) {
        boolean rowDeleted = false;
        String sql = "DELETE FROM teachers WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }

    public boolean updateTeacher(Teacher teacher) {
        boolean rowUpdated = false;
        String sql = "UPDATE teachers SET first_name = ?, last_name = ?, email = ?, subject = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, teacher.getFirstName());
            statement.setString(2, teacher.getLastName());
            statement.setString(3, teacher.getEmail());
            statement.setString(4, teacher.getSubject());
            statement.setInt(5, teacher.getId());
            rowUpdated = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }
}
