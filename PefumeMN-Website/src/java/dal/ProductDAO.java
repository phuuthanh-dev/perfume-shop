/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext {

    private CategoryDAO cd = new CategoryDAO();
    private DecimalFormat df = new DecimalFormat("###.##");

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Products]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getInt("ProductID"), rs.getInt("UnitsInStock"), rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),  rs.getDouble("Discount"),salePrice, rs.getDate("releaseDate"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    // 1> List products get by Category
    public List<Product> getProductsByCategoryid(int cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products";
        if (cid != 0) {
            sql += " where CategoryID = ?";
        } else {
            sql += " where 0 = ?";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getInt("ProductID"), rs.getInt("UnitsInStock"), rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),  rs.getDouble("Discount"),salePrice, rs.getDate("releaseDate"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    // 2> List products get by brand in year

    public List<Product> getProductsBrandByInYear(int year, Category category) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products WHERE YEAR(releaseDate) = ? ";
        if (category != null) {
            sql += " AND CategoryID =" + category.getId();
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, year);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
               double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getInt("ProductID"), rs.getInt("UnitsInStock"), rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),  rs.getDouble("Discount"),salePrice, rs.getDate("releaseDate"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    // 3> List products in TOP <int> BEST SELLERS
    public List<Product> getTopBestSellers(String number) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT TOP " + number + " * FROM Products ORDER BY QuantitySold desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getInt("ProductID"), rs.getInt("UnitsInStock"), rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),  rs.getDouble("Discount"),salePrice, rs.getDate("releaseDate"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    // 4> Get product HOT DEAL => select smallest finalPrice
    public Product getHotDeal() {
        String sql = "SELECT TOP 1 * FROM Products WHERE (UnitPrice - (UnitPrice * Discount)) \n"
                + "<= ALL(select (UnitPrice - (UnitPrice * Discount)) AS finalPrice FROM Products)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getInt("ProductID"), rs.getInt("UnitsInStock"), rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),  rs.getDouble("Discount"),salePrice, rs.getDate("releaseDate"), c);
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    // 5> List product on sale => random sp
    public List<Product> getProductsOnSale() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT TOP 2 * FROM Products ORDER BY NEWID()";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getInt("ProductID"), rs.getInt("UnitsInStock"), rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),  rs.getDouble("Discount"),salePrice, rs.getDate("releaseDate"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    // 6> List gift set 
    public List<Product> getGiflSets() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products WHERE CategoryID = 5";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(rs.getString("ProductName"), rs.getString("image1"), rs.getString("image2"),
                        rs.getString("describe"), rs.getInt("ProductID"), rs.getInt("UnitsInStock"), rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),  rs.getDouble("Discount"),salePrice, rs.getDate("releaseDate"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getListByPage(List<Product> list, int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    // Get sale price 
    public double getSalePrice(double price, double discount) {
        double result = price - (price * discount);
        String str = df.format(result);
        try {
            result = Double.parseDouble(str);
        } catch (Exception e) {
        }

        return result;
    }

    // Testcase demo
    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        List<Product> list = p.getGiflSets();
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getPrice());
        }
    }
}
