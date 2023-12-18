/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author Admin
 */
public class UserDAO extends DBContext {

    public User check(String username, String password) {
        String sql = "SELECT * FROM Users WHERE userName = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User a = new User(rs.getString("userName"), rs.getString("fullName"), rs.getString("password"),
                        rs.getString("address"), rs.getString("phone"), rs.getInt("roleID"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean checkUserNameDuplicate(String username) {
        String sql = "SELECT * FROM Users WHERE userName = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User a = new User(rs.getString("userName"), rs.getString("fullName"), rs.getString("password"),
                        rs.getString("address"), rs.getString("phone"), rs.getInt("roleID"));
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void insert(User c) {
        String sql = "INSERT INTO Users\n"
                + "           ([userName]\n"
                + "           ,[fullName]\n"
                + "           ,[password]\n"
                + "           ,[roleID]\n"
                + "           ,[phone])\n"
                + "     VALUES (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, c.getUserName());
            st.setString(2, c.getFullName());
            st.setString(3, c.getPassword());
            st.setInt(4, c.getRoleID());
            st.setString(5, c.getPhone());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
