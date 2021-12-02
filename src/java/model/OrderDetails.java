/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author ZenBook
 */
public class OrderDetails {
    private int id;
    private User user;
    private List<OrderItem> list;
    private boolean status;

    public OrderDetails() {
    }

    public OrderDetails(int id, User user, List<OrderItem> list) {
        this.id = id;
        this.user = user;
        this.list = list;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<OrderItem> getList() {
        return list;
    }

    public void setList(List<OrderItem> list) {
        this.list = list;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "OrderDetails{" + "id=" + id + ", user=" + user + ", list=" + list + ", status=" + status + '}';
    }

    
    
    
}
