/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lvhho
 */
public class Cart {

    private List<Item> listItems;

    public Cart() {
        listItems = new ArrayList<>();
    }

    public Cart(List<Item> listItems) {
        this.listItems = listItems;
    }

    public List<Item> getListItems() {
        return listItems;
    }

    public void setListItems(List<Item> listItems) {
        this.listItems = listItems;
    }

    // 
    private Item getItemByID(int id) {
        for (Item item : listItems) {
            if (item.getProduct().getId() == id) {
                return item;
            }
        }
        return null;
    }

    //
    public int getQuantityByID(int id) {
        return getItemByID(id).getQuantity();
    }

    //
    public void addItem(Item t) {
        if (getItemByID(t.getProduct().getId()) != null) {
            Item m = getItemByID(t.getProduct().getId());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            listItems.add(t);
        }
    }

    // 
    public void removeItem(int id) {
        if (getItemByID(id) != null) {
            listItems.remove(getItemByID(id));
        }
    }
    // lay gia san pham ban dau - gia chua sale
    public Double getTotalPriceWithOutDiscount() {
        double total = 0;
        for (Item item : listItems) {
            total += (item.getQuantity() * item.getProduct().getPrice());
        }
        DecimalFormat df = new DecimalFormat("#.##");
        return Double.parseDouble(df.format(total));
    }

    // lay gia ban - gia san pham da sale
    public Double getTotalMoney() {
        double total = 0;
        for (Item item : listItems) {
            total += (item.getQuantity() * item.getPrice());
        }
        DecimalFormat df = new DecimalFormat("#.##");
        return Double.parseDouble(df.format(total));
    }

    // 
    public List<Product> getlistProducts() {
        List<Product> list = new ArrayList<>();
        for (Item item : listItems) {
            list.add(item.getProduct());
        }
        return list;
    }
}
