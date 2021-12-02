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
public class User {

    private int id;
    private String user;
    private String pass;
    private String first_name;
    private String last_name;
    private String telephone;
    private boolean isSell;
    private boolean isAdmin;
    private String email;

    public User() {
    }

    public User(int id, String user, String pass, String first_name, String last_name, String telephone, boolean isSell, boolean isAdmin, String email) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.first_name = first_name;
        this.last_name = last_name;
        this.telephone = telephone;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isIsSell() {
        return isSell;
    }

    public void setIsSell(boolean isSell) {
        this.isSell = isSell;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", first_name=" + first_name + ", last_name=" + last_name + ", telephone=" + telephone + ", isSell=" + isSell + ", isAdmin=" + isAdmin + ", email=" + email + '}';
    }

    

}
