/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author yashc
 */
public class Product {

    private int p_id;
    private String p_name;
    private int qnty;
    private String p_price;
    private String p_mrp;
    private int c_id;

//    constructor
    public Product(int p_id, String p_name, String p_price, String p_mrp, int c_id) {
        this.p_id = p_id;
        this.p_name = p_name;
        
        this.p_price = p_price;
        this.p_mrp = p_mrp;
        this.c_id = c_id;
    }

    public Product(String p_name, int qnty, String p_price, String p_mrp, int c_id) {
        this.p_name = p_name;
        this.qnty = qnty;
        this.p_price = p_price;
        this.p_mrp = p_mrp;
        this.c_id = c_id;
    }
    
//    default constructor
    public Product() {
    }

    // getters and setters
    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getP_price() {
        return p_price;
    }

    public void setP_price(String p_price) {
        this.p_price = p_price;
    }

    public String getP_mrp() {
        return p_mrp;
    }

    public void setP_mrp(String p_mrp) {
        this.p_mrp = p_mrp;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public int getQnty() {
        return qnty;
    }

    public void setQnty(int qnty) {
        this.qnty = qnty;
    }

}
