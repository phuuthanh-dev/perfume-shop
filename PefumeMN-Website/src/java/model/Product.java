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

    private String name, image1, image2, describe;
    private int id, quantity, starRating;
    private double price;
    private Date date;
    private Category category;

    public Product(String name, String image1, String image2, String describe, int id, int quantity, int starRating, double price, Date date, Category category) {
        this.name = name;
        this.image1 = image1;
        this.image2 = image2;
        this.describe = describe;
        this.id = id;
        this.quantity = quantity;
        this.price = price;
        this.date = date;
        this.category = category;
        this.starRating = starRating;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public int getStarRating() {
        return starRating;
    }

    public void setStarRating(int starRating) {
        this.starRating = starRating;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Product{" + "name=" + name + ", image1=" + image1 + ", image2=" + image2 + ", describe=" + describe + ", id=" + id + ", quantity=" + quantity + ", price=" + price + ", date=" + date + ", category=" + category + '}';
    }

}
