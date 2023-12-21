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
public class SupplierDAO extends DBContext{
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
                s.setFax(rs.getString("Fax"));
                s.setHomepage(rs.getString("HomePage"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
     
     public Supplier getSupplierById(int id) {
        String sql = "SELECT * FROM Suppliers WHERE SuppilerID =?";
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
                s.setFax(rs.getString("Fax"));
                s.setHomepage(rs.getString("HomePage"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
