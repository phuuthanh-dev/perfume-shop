/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lvhho
 */
public class Supplier {
    private int id;
    private String companyName, contactName, country, phone, homepage;

    public Supplier() {
    }

    public Supplier(int id, String companyName, String contactName, String country, String phone, String homepage) {
        this.id = id;
        this.companyName = companyName;
        this.contactName = contactName;
        this.country = country;
        this.phone = phone;
        this.homepage = homepage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getContactName() {
        return contactName;
    }

    public void setConTactName(String conTactName) {
        this.contactName = conTactName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


    public String getHomepage() {
        return homepage;
    }

    public void setHomepage(String homepage) {
        this.homepage = homepage;
    }

    @Override
    public String toString() {
        return "Supplier{" + "id=" + id + ", companyName=" + companyName + ", conTactName=" + contactName + ", country=" + country + ", phone=" + phone + ", homepage=" + homepage + '}';
    }
    
    
}
