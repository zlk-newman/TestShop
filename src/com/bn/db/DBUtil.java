package com.bn.db;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBUtil {
    public static Connection getConn()
    {
        Connection con=null;
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            String url="jdbc:mysql://localhost/testshop?useUnicode=true&characterEncoding=UTF-8";
            con = DriverManager.getConnection(url, "root", "");
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }

    public static void main(String[] args)
    {
        new DBUtil().getConn();

    }
}
