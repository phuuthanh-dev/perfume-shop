/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Supplier;

/**
 *
 * @author lvhho
 */
public class SupplierDAO extends DBContext {

    public List<Supplier> getAll() {
        List<Supplier> list = new ArrayList<>();
        String sql = "SELECT * FROM Suppliers";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Supplier s = new Supplier();
                s.setId(rs.getInt("SupplierID"));
                s.setCompanyName(rs.getString("CompanyName"));
                s.setConTactName(rs.getString("ContactName"));
                s.setCountry(rs.getString("Country"));
                s.setPhone(rs.getString("Phone"));
                s.setHomepage(rs.getString("HomePage"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Supplier> getSuppliersBySearch(String txtSearch) {
        List<Supplier> list = new ArrayList<>();
        String sql = "SELECT * FROM Suppliers WHERE CompanyName LIKE ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Supplier s = new Supplier();
                s.setId(rs.getInt("SupplierID"));
                s.setCompanyName(rs.getString("CompanyName"));
                s.setConTactName(rs.getString("ContactName"));
                s.setCountry(rs.getString("Country"));
                s.setPhone(rs.getString("Phone"));
                s.setHomepage(rs.getString("HomePage"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Supplier getSupplierById(int id) {
        String sql = "SELECT * FROM Suppliers WHERE SupplierID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //set ?
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            //1
            if (rs.next()) {
                Supplier s = new Supplier();
                s.setId(rs.getInt("SupplierID"));
                s.setCompanyName(rs.getString("CompanyName"));
                s.setConTactName(rs.getString("ContactName"));
                s.setCountry(rs.getString("Country"));
                s.setPhone(rs.getString("Phone"));
                s.setHomepage(rs.getString("HomePage"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insert(Supplier c) {
        String sql = "INSERT INTO [dbo].[Suppliers]\n"
                + "           ([CompanyName]\n"
                + "           ,[ContactName]\n"
                + "           ,[Country]\n"
                + "           ,[Phone]\n"
                + "           ,[HomePage])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, c.getCompanyName());
            st.setString(2, c.getContactName());
            st.setString(3, c.getCountry());
            st.setString(4, c.getPhone());
            st.setString(5, c.getHomepage());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteSupplier(int sid) {
        String sql = "delete from Suppliers where SupplierID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, sid);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        SupplierDAO p = new SupplierDAO();
        p.deleteSupplier(1);
        List<Supplier> list = p.getAll();

        for (Supplier supplier : list) {
            System.out.println(supplier.getCompanyName());
        }
    }

    public void editSupplier(int id, String companyName, String contactName, String country, String phone, String homepage) {
        String sql = "UPDATE [dbo].[Suppliers]\n"
                + "   SET [CompanyName] = ?\n"
                + "      ,[ContactName] = ?\n"
                + "      ,[Country] = ?\n"
                + "      ,[Phone] = ?\n"
                + "      ,[HomePage] = ?\n"
                + " WHERE [SupplierID] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, companyName);
            st.setString(2, contactName);
            st.setString(3, country);
            st.setString(4, phone);
            st.setString(5, homepage);
            st.setInt(6, id);
            st.executeUpdate();

        } catch (Exception e) {

        }
    }
    
    public int countAllSupplier() {
        String sql = "select count(*) from Suppliers";
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
}
