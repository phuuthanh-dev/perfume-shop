/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Spending;
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
                User u = new User(rs.getString("userName"), rs.getString("fullName"), rs.getString("password"),
                        rs.getString("address"), rs.getString("phone"), rs.getString("email"), rs.getString("Image"), rs.getString("BirthDay"), rs.getInt("roleID"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int checkAccountAdmin(String userName) {
        String sql = "select  from Users where [userName]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<User> getAllUsers() {
        List<User> list = new ArrayList<>();
        String sql = "select * from Users order by roleId asc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getString("userName"), rs.getString("fullName"), rs.getString("password"),
                        rs.getString("address"), rs.getString("phone"), rs.getString("email"), rs.getString("Image"), rs.getString("BirthDay"), rs.getInt("roleID")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public boolean checkUserNameDuplicate(String username) {
        String sql = "SELECT * FROM Users WHERE userName = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getString("userName"), rs.getString("fullName"), rs.getString("password"),
                        rs.getString("address"), rs.getString("phone"), rs.getString("email"), rs.getString("Image"), rs.getString("BirthDay"), rs.getInt("roleID"));
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void updateImage(String image, String userName) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET \n"
                + "      [Image] = ?\n"
                + " WHERE userName = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, image);
            st.setString(2, userName);

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(String name, String address, String phone, String email, String dob, String userName) {
        String sql = "UPDATE [dbo].[Users] SET \n";
        if (name != null) {
            sql += " [fullName] = " + "?";
        }
        if (address != null) {
            sql += ", [address] =" + "?";
        }
        sql += ", [phone] =" + "?";
        sql += ", [email] =" + "?";
        sql += ", [BirthDay] =" + "?";
        sql += " WHERE userName = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, address);
            st.setString(3, phone);
            st.setString(4, email);
            st.setString(5, dob);
            st.setString(6, userName);

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User getUserByUserName(String userName) {
        String sql = "SELECT * FROM [dbo].[Users] where UserName=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //set ?
            st.setString(1, userName);
            ResultSet rs = st.executeQuery();
            //1
            if (rs.next()) {
                User u = new User(rs.getString("userName"), rs.getString("fullName"), rs.getString("password"),
                        rs.getString("address"), rs.getString("phone"), rs.getString("email"), rs.getString("Image"), rs.getString("BirthDay"), rs.getInt("roleID"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insert(User c) {
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([UserName]\n"
                + "           ,[FullName]\n"
                + "           ,[Password]\n"
                + "           ,[RoleID]\n"
                + "           ,[BirthDay]\n"
                + "           ,[Phone])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, c.getUserName());
            st.setString(2, c.getFullName());
            st.setString(3, c.getPassword());
            st.setInt(4, c.getRoleID());
            st.setString(5, c.getBirthdate());
            st.setString(6, c.getPhone());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int countAllUser() {
        String sql = "select count(*) from Users";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void insertUser(String UserName, String FullName, String Password,
            int RoleID, String Email, String BirthDay, String Phone) {
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([UserName]\n"
                + "           ,[FullName]\n"
                + "           ,[Password]\n"
                + "           ,[RoleID]\n"
                + "           ,[Email]\n"
                + "           ,[BirthDay]\n"
                + "           ,[Phone])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, UserName);
            st.setString(2, FullName);
            st.setString(3, Password);
            st.setInt(4, RoleID);
            st.setString(5, Email);
            st.setString(6, BirthDay);
            st.setString(7, Phone);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteUser(String username) {
        String sql = "delete from Users where UserName= ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        UserDAO p = new UserDAO();
        p.insertUser("adminafa", "Phùng Hữu Thành", "123", 1, "phuuthanh2003@gmai.com", "2003-08-10", "0707064154");
        List<Spending> list = p.getTop5Customers();
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getTotalSpending());
        }
    }

    public List<Spending> getTop5Customers() {
        List<Spending> list = new ArrayList<>();
        String sql = "select top(5) u.*, sum(TotalMoney) as TotalMoney from Orders o inner join Users u on o.UserName = u.UserName group by u.Address, "
                + "u.BirthDay, u.Email, u.FullName, u.UserName, u.Password, u.Image, u.RoleID, u.UserID, u.Phone\n" + " order by TotalMoney desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getString("userName"), rs.getString("fullName"), rs.getString("password"),
                        rs.getString("address"), rs.getString("phone"), rs.getString("email"), rs.getString("Image"),
                        rs.getString("BirthDay"), rs.getInt("roleID"));
                list.add(new Spending(user, rs.getDouble("TotalMoney")));
            }
        } catch (Exception e) {
        }
        return list;
    }

   public List<User> getUsersBySearchName(String txtSearch) {
        List<User> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Users] where UserName LIKE ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //set ?
            st.setString(1, "%"+txtSearch+"%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getString("userName"), rs.getString("fullName"), rs.getString("password"),
                        rs.getString("address"), rs.getString("phone"), rs.getString("email"), rs.getString("Image"), rs.getString("BirthDay"), rs.getInt("roleID")));
            }
        } catch (Exception e) {
        }
        return list;
    }

}
