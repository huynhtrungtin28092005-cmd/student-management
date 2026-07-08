package com.studentmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.studentmvc.model.User;
import com.studentmvc.util.DBConnection;

public class UserDAO {

    public User login(String username, String password) {

        User user = null;

        String sql = "SELECT * FROM users WHERE username=? AND password=?";

        try (
            Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
        ) {

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                user = new User();

                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

}