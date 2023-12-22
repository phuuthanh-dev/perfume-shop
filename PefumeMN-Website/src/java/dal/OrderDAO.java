/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import model.Cart;
import model.Item;
import model.User;

/**
 *
 * @author lvhho
 */
public class OrderDAO extends DBContext {

    //
    public void addOrder(User cus, Cart cart) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try {
            // lay id user
            String sql = "SELECT [UserID] FROM [dbo].[Users] WHERE UserName = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cus.getUserName());
            ResultSet resultCusID = st.executeQuery();
            String resultCusIDStr = resultCusID.toString();
            int cusID = 0;
            try {
                cusID = Integer.parseInt(resultCusIDStr);
            } catch (Exception e) {
            }

            // add vao bang Order
            String sql1 = "INSERT INTO [dbo].[Orders]\n"
                    + "           ([Date]\n"
                    + "           ,[UserID]\n"
                    + "           ,[TotalMoney])\n"
                    + "     VALUES (?,? ,?)";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            st1.setString(1, date);
            st1.setInt(2, cusID);
            st1.setString(1, date);
            st1.executeUpdate();

            // Lay ra orderID cuar Order vua tao
            String sql2 = "SELECT Top 1 [OrderID] FROM [dbo].[Orders] ORDER BY  [OrderID] DESC";
            PreparedStatement st2 = connection.prepareStatement(sql2);
            ResultSet rs = st2.executeQuery();

            // add thong tin vao bang OrderDetails
            if (rs.next()) {
                int oID = rs.getInt(1);
                for (Item item : cart.getListItems()) {
                    String sql3 = "INSERT INTO [dbo].[OrderDetails]\n"
                            + "           ([OrderID]\n"
                            + "           ,[ProductID]\n"
                            + "           ,[Quantity]\n"
                            + "           ,[UnitPrice]\n"
                            + "           ,[Discount])\n"
                            + "     VALUES (?,?,?,?,?)";
                    PreparedStatement st3 = connection.prepareStatement(sql3);
                    st3.setInt(1, oID);
                    st3.setInt(2, item.getProduct().getId());
                    st3.setInt(3, item.getQuantity());
                    st3.setDouble(4, item.getProduct().getPrice());
                    st3.setDouble(5, item.getProduct().getDiscount());
                    st3.executeUpdate();
                }
            }

            // add vao bang orderDetail
        } catch (Exception e) {
        }
    }
}
