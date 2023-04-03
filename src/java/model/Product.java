/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


/**
 *
 * @author asus
 */
public class Product {
   private int id;
    private String name,image;
   private int price;
    private String title,categoryID;  
   private String description, manhinh;
       private int      timepin;
     private String       hdh,hang;

    public Product() {
    }

    public Product(int id, String name, String image, int price, String title, String categoryID, String description, String manhinh, int timepin, String hdh, String hang) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.categoryID = categoryID;
        this.description = description;
        this.manhinh = manhinh;
        this.timepin = timepin;
        this.hdh = hdh;
        this.hang = hang;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManhinh() {
        return manhinh;
    }

    public void setManhinh(String manhinh) {
        this.manhinh = manhinh;
    }

    public int getTimepin() {
        return timepin;
    }

    public void setTimepin(int timepin) {
        this.timepin = timepin;
    }

    public String getHdh() {
        return hdh;
    }

    public void setHdh(String hdh) {
        this.hdh = hdh;
    }

    public String getHang() {
        return hang;
    }

    public void setHang(String hang) {
        this.hang = hang;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", title=" + title + ", categoryID=" + categoryID + ", description=" + description + ", manhinh=" + manhinh + ", timepin=" + timepin + ", hdh=" + hdh + ", hang=" + hang + '}';
    }

    
}
