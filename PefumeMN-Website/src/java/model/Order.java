package model;

import java.util.Date;

public class Order {

    private String userName;
    private int orderId;
    private double total;
    Date date;

    public Order(int orderId, Date date, String userName,  double total) {
        this.userName = userName;
        this.orderId = orderId;
        this.total = total;
        this.date = date;
    }

    public Order() {

    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Order{" + "userName=" + userName + ", orderId=" + orderId + ", total=" + total + ", date=" + date + '}';
    }

    
}
