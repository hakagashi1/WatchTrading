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
public class PaymentDetails {
    private int id;
    private OrderDetails order;
    private Shipping shipping;

    public PaymentDetails() {
    }

    public PaymentDetails(int id, OrderDetails order, Shipping shipping) {
        this.id = id;
        this.order = order;
        this.shipping = shipping;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public OrderDetails getOrder() {
        return order;
    }

    public void setOrder(OrderDetails order) {
        this.order = order;
    }

    public Shipping getShipping() {
        return shipping;
    }

    public void setShipping(Shipping shipping) {
        this.shipping = shipping;
    }

    @Override
    public String toString() {
        return "PaymentDetails{" + "id=" + id + ", order=" + order + ", shipping=" + shipping + '}';
    }
    
    
}
