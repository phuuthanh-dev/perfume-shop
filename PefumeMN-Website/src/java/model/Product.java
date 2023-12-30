/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Product {

    private String name, describe, classifyStr;
    private String[] image;
    private int id, quantity, starRating;
    private double price, discount, salePrice;
    private Date date;
    private Category category;
    private Supplier supplier;

    public Product(String name, String[] image, String describe, String classifyStr, int id, int quantity, int starRating, double price, double discount, double salePrice, Date date, Category category, Supplier supplier) {
        this.name = name;
        this.image = image;
        this.describe = describe;
        this.classifyStr = classifyStr;
        this.id = id;
        this.quantity = quantity;
        this.starRating = starRating;
        this.price = price;
        this.discount = discount;
        this.salePrice = salePrice;
        this.date = date;
        this.category = category;
        this.supplier = supplier;
    }

    

    public Product() {
    }


    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String[] getImage() {
        return image;
    }

    public void setImage(String[] image1) {
        this.image = image1;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getClassifyStr() {
        return classifyStr;
    }

    public void setClassifyStr(String classifyStr) {
        this.classifyStr = classifyStr;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getStarRating() {
        return starRating;
    }

    public void setStarRating(int starRating) {
        this.starRating = starRating;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(double salePrice) {
        this.salePrice = salePrice;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    @Override
    public String toString() {
        return "Product{" + "name=" + name + ", image=" + image + ", describe=" + describe + ", classifyStr=" + classifyStr + ", id=" + id + ", quantity=" + quantity + ", starRating=" + starRating + ", price=" + price + ", discount=" + discount + ", salePrice=" + salePrice + ", date=" + date + ", category=" + category + ", supplier=" + supplier + '}';
    }

    

}
