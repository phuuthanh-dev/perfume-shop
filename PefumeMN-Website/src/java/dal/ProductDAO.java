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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
                        rs.getString("describe"),
                        rs.getString("QuantityPerUnit"),
                        rs.getInt("ProductID"),
                        rs.getInt("UnitsInStock"),
                        rs.getInt("StarRating"),
                        rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"),
                        salePrice,
                        rs.getDate("releaseDate"),
                        c, s
                );
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
            if (rs.next()) {
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
        } catch (Exception e) {
        }
        return null;
    }

    //
    public void updateValueProduct(Product product, int value) {
        try {
            String sql = "UPDATE [dbo].[Products] SET [UnitsInStock] = (UnitsInStock - ?) AND [QuantitySold] = (QuantitySold + ?) WHERE [ProductName] = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, value);
            st.setInt(2, value);
            st.setString(2, product.getName());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    //
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
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
        String sql = "select sum([UnitsInStock]) from Products";
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
    
    public int countAllTypeProduct() {
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

    public List<Product> getTop10SellerProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select top(10) *\r\n"
                + "from Products\r\n"
                + "order by QuantitySold desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Product getProductByID(int id) {
        String sql = "SELECT * FROM Products WHERE ProductID =" + id;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                String image = rs.getString("image");
                String[] images = image.split(",");
                Category c = cd.getCategoryById(rs.getInt("CategoryID"));
                Supplier s = sd.getSupplierById(rs.getInt("SupplierID"));
                double salePrice = getSalePrice(rs.getDouble("UnitPrice"), rs.getDouble("Discount"));
                Product p = new Product(
                        rs.getString("ProductName"),
                        images,
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

        } catch (Exception e) {
        }
        return null;
    }

    public int getSumQuantitySold() {
        String sql = "select SUM([QuantitySold]) from Products";
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

    public void deleteProduct(int pid) {
        String sql = "delete from Products where ProductID= ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int getNumberProductsByDiscount(double discount) {
        String sql = "select count(*) from products where discount >= ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setDouble(1, discount);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void insertProduct(String name, String image, double price, String describe, int quantity,
            String quantityunit, String date, double discount, int supplierID, int categoryID) {
        String sql = "INSERT INTO [dbo].[Products] (\n"
                + "    [ProductName], \n"
                + "    [SupplierID], \n"
                + "    [CategoryID], \n"
                + "    [QuantityPerUnit], \n"
                + "    [UnitPrice], \n"
                + "     [UnitsInStock],\n"
                + "	[image],\n"
                + "	[describe],\n"
                + "	[releaseDate],\n"
                + "	[Discount],\n"
                + "	[status]\n"
                + "	)\n"
                + "VALUES (N'" + name + "','" + supplierID + "','" + categoryID + "','" + quantityunit + "','" + price + "','" + quantity + "','" + image + "',N'" + describe + "','" + date
                + "','" + discount + "','1')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();

        } catch (Exception e) {

        }
    }

    public void editProduct(String name, String image, double price, String describe, int quantity,
            String quantityunit, String date, double discount, int supplierID, int categoryID, int productID) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [ProductName] = ?\n"
                + "   ,[SupplierID] = ?\n"
                + "      ,[CategoryID] = ?\n"
                + "      ,[QuantityPerUnit]=? \n"
                + "      ,[UnitPrice] =? \n"
                + "      ,[UnitsInStock] =? \n";

        if (!(image.equals(""))) {
            sql += "      ,[image] =? \n";
        }
        sql += "      ,[describe] =? \n"
                + "      ,[releaseDate] =? \n"
                + "      ,[Discount] =? \n"
                + " WHERE [ProductID]=?";
        System.out.println(sql);
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, supplierID);
            st.setInt(3, categoryID);
            st.setString(4, quantityunit);
            st.setDouble(5, price);
            st.setInt(6, quantity);
            if (!image.equals("")) {
                st.setString(7, image);
                st.setString(8, describe);
                st.setString(9, date);
                st.setDouble(10, discount);
                st.setInt(11, productID);
                st.executeUpdate();
                return;
            } else {
                st.setString(7, describe);
                st.setString(8, date);
                st.setDouble(9, discount);
                st.setInt(10, productID);
                st.executeUpdate();
            }

        } catch (Exception e) {

        }

    }

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        int[] a = {0};
        p.editProduct("tat", "", 1, "", 1, "10ml", "2019-10-10", 0, 1, 1, 1);
        List<Product> list = p.getAll();
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getName());
            System.out.println(list.get(i).getImage()[0]);
        }
    }
}
