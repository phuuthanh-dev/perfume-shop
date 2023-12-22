/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;
import model.Supplier;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext {

    private CategoryDAO cd = new CategoryDAO();
    private SupplierDAO sd = new SupplierDAO();
    private DecimalFormat df = new DecimalFormat("###.##");

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Products]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
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
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
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
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
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
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
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
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    // 5> List product show in footer => random sp
    public List<Product> getFeaturedProducts() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT TOP 3 * FROM Products ORDER BY NEWID()";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
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
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
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

    //Search By Check
    public List<Product> searchByCheckBox(int[] cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products WHERE 1=1 ";
        if ((cid != null) && (cid[0] != 0)) {
            sql += " AND CategoryID in(";
            for (int i = 0; i < cid.length; i++) {
                sql += cid[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //Search by price
    public List<Product> searchByPrice(double price1, double price2, int[] cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Products WHERE 1=1";
        if (price1 != 0) {
            sql += " and UnitPrice >= " + price1;
        }
        if (price2 != 0) {
            sql += " and UnitPrice <= " + price2;
        }
        if ((cid != null) && (cid[0] != 0)) {
            sql += " AND CategoryID in(";
            for (int i = 0; i < cid.length; i++) {
                sql += cid[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //getnext9Product
    public List<Product> getNext9Product(int amount) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM products\n"
                + " ORDER BY ProductID\n"
                + "OFFSET ? ROWS\n"
                + " FETCH NEXT 9 ROWS ONLY";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, amount);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;

    }


    //searchbyname
    public List<Product> searchByName(String text) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from products\n"
                + "where [ProductName] like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + text + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }


    // getProduct by name
    public Product getProductByName(String name) {
        String sql = "SELECT * FROM Products WHERE ProductName =" + name;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if(rs.next()) {
                 Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);

                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

     public List<Product> getNext6Product(int amount) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM products\n"
                + " ORDER BY ProductID\n"
                + "OFFSET ? ROWS\n"
                + " FETCH NEXT 6 ROWS ONLY";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, amount);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s);
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    
    public int countAllProduct() {
        String sql = "select count(*) from Products";
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

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        int[] a = {0};
        int aa = p.countAllProduct();
        List<Product> list = p.getNext6Product(7);
        System.out.println(aa);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getName());
        }
    }
}
