package com.fit.nlu.DHHCeramic.model;

import java.io.Serializable;
import java.util.Date;

public class Product extends BaseModel implements Serializable {
    private String name;
    private Float price;
    private int saleID;
    private int cateID;
    private int stock;
    private String description;
    private String image;
    private int isLike;
    private String size;
    private String manufacture;

    public Product(String name, Float price, int saleID, int cateID, int stock, String description, String image, int isLike, String size, String manufacture) {
        this.name = name;
        this.price = price;
        this.saleID = saleID;
        this.cateID = cateID;
        this.stock = stock;
        this.description = description;
        this.image = image;
        this.isLike = isLike;
        this.size = size;
        this.manufacture = manufacture;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Float getPrice() {
        return price;
    }
    public void setPrice(Float price) {
        this.price = price;
    }
    public int getSaleID() {
        return saleID;
    }
    public void setSaleID(int saleID) {
        this.saleID = saleID;
    }
    public int getCateID() {
        return cateID;
    }
    public void setCateID(int cateID) {
        this.cateID = cateID;
    }
    public int getStock() {
        return stock;
    }
    public void setStock(int stock) {
        this.stock = stock;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image = image;
    }
    public int getIsLike() {
        return isLike;
    }
    public void setIsLike(int isLike) {
        this.isLike = isLike;
    }
    public String getSize() {
        return size;
    }
    public void setSize(String size) {
        this.size = size;
    }
    public String getManufacture() {
        return manufacture;
    }
    public void setManufacture(String manufacture) {
        this.manufacture = manufacture;
    }
}
