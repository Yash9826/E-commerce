/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import dto.Customer;
import dto.Shipping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
/**
 *
 * @author yashc
 */
public class CustomerDAO {
 
    private Connection con;
    
//    constructor for setting connection

    public CustomerDAO(Connection con) {
        this.con = con;
    }
    
    //  method to register customer and save data to table 
    public boolean saveCustomer(Customer c)
    {
        boolean f = false;
        try 
        {
//           data->database
             String q = "insert into customer(c_name,c_email,c_mobileno,c_city,c_password) values(?,?,?,?,?)";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, c.getName());
             ps.setString(2, c.getEmail());
             ps.setString(3, c.getMobileNo());
             ps.setString(4, c.getCity());
             ps.setString(5, c.getPassword());
             ps.executeUpdate();
             f = true;
             
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    
    //    method to authenticate customer to login
    
    public Customer getCustomerByEmailAndPassword(String email,String password)
    {
        Customer c = null;
        
        try 
        {
            String q = "Select * from customer where c_email=? and c_password=?";
            PreparedStatement pd = this.con.prepareStatement(q);
            pd.setString(1, email);
            pd.setString(2, password);
            
            ResultSet rs =  pd.executeQuery();
            if(rs.next())
            {
                c = new Customer();
//                data from db
//                set data to admin object
               c.setId(rs.getInt("c_id"));
              c.setName(rs.getString("c_name"));
               c.setEmail(rs.getString("c_email"));
               c.setMobileNo(rs.getString("c_mobileno"));
               c.setCity(rs.getString("c_city"));
               c.setPassword(rs.getString("c_password"));
               c.setR_date(rs.getTimestamp("r_date"));
        }
            }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return c;
    
    }
    
    
    
    //  method to save customer's product 
    public boolean saveProduct(Product p)
    {
        boolean f = false;
        try 
        {
//           data->database
             String q = "insert into product(p_name,p_qnty,p_pricing,p_mrp,c_id) values(?,?,?,?,?)";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, p.getP_name());
             ps.setInt(2, p.getQnty());
             ps.setString(3, p.getP_price());
             ps.setString(4, p.getP_mrp());
             ps.setInt(5, p.getC_id());
             ps.executeUpdate();
             f = true;
             
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    //  method to register customer and save data to table 
    public boolean saveShipping(Shipping s)
    {
        boolean f = false;
        try 
        {
//           data->database
             String q = "insert into shipping(s_address,s_city,s_pincode,customer_id) values(?,?,?,?)";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, s.getAddress());
             ps.setString(2, s.getCity());
             ps.setString(3, s.getPincode());
              ps.setInt(4, s.getCustomer_id());
             ps.executeUpdate();
             f = true;
             
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    public boolean getCity(String city)
    {
        boolean f = false;
        try 
        {
//           data->database
             String q = "select * from customer where city=?";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, city);
             
             ps.executeUpdate();
             f = true;
             
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
}
