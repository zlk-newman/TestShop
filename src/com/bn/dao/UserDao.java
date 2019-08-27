package com.bn.dao;

import com.bn.db.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
public class UserDao {
    public String CheckLogin(String username, String password){
        String id = null;
        String sql="select * from user_info where user_account='"+username+"' and user_password='"+password+"' ";
        Statement stat = null;
        ResultSet rs = null;
        Connection conn = new DBUtil().getConn();
        try{
            stat = conn.createStatement();
            rs = stat.executeQuery(sql);
            while (rs.next()) {
                id = rs.getString("user_id");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            try{rs.close();}catch(Exception e){e.printStackTrace();}
            try{stat.close();}catch(Exception e){e.printStackTrace();}
            try{conn.close();}catch(Exception e){e.printStackTrace();}
        }
        return id;
    }

    public static void main(String[] args) {
        System.out.println("");
    }
}

