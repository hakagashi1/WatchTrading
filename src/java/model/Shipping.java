/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ZenBook
 */
public class Shipping {
    private int id;
    private String type;
    private int price;
    private String active;

    public Shipping() {
    }

    public Shipping(int id, String type, int price, String active) {
        this.id = id;
        this.type = type;
        this.price = price;
        this.active = active;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    

    @Override
    public String toString() {
        return "Shipping{" + "id=" + id + ", type=" + type + ", price=" + price + ", active=" + active + '}';
    }

 
    
    
}
