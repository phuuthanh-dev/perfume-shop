/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;
import model.Wallet;

/**
 *
 * @author lvhho
 */
public class WalletDAO extends DBContext {

    public void addWallet(Wallet wallet) {
        try {
            String sql = "INSERT INTO [dbo].[Wallets]\n"
                    + "           ([UserName]\n"
                    + "           ,[Balance])\n"
                    + "     VALUES (?, ?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, wallet.getUserName());
            st.setDouble(2, wallet.getBalance());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    // 
    public Wallet getWalletByUserName(String name) {
        try {
            String sql = "SELECT * FROM [dbo].[Wallets] WHERE UserName = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            if(rs.next()) {
                int id = rs.getInt(1);
                String userName = rs.getString(2);
                double balance = rs.getDouble(3);
                Wallet w = new Wallet(userName, balance);
                return w;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    // 
    public void inputMoney(String userName, double value) {
        try {
            String sql = "UPDATE [dbo].[Wallets] SET [Balance] = (Balance + ?) WHERE UserName = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setDouble(1, value);
            st.setString(2, userName);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    // 
    public void decuctionMoney(String userName, double value ){
        try {
            String sql = "UPDATE [dbo].[Wallets] SET [Balance] = (Balance - ?) WHERE UserName = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setDouble(1, value);
            st.setString(2, userName);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
}
