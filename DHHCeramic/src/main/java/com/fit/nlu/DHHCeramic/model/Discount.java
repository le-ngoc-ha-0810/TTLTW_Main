package com.fit.nlu.DHHCeramic.model;

import java.io.Serializable;
import java.util.Date;

public class Discount extends BaseModel implements Serializable {
    private String name;
    private String description;
    private String discountPercent;
    private Date startDate;
    private Date endDate;

    // Constructor

    public Discount(String name, String description, String discountPercent, Date startDate, Date endDate) {
        this.name = name;
        this.description = description;
        this.discountPercent = discountPercent;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public Discount() {
        super();
    }

    // Getters and setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(String discountPercent) {
        this.discountPercent = discountPercent;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }


    @Override
    public String toString() {
        return "Discount{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", discountPercent='" + discountPercent + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                '}';
    }
}
