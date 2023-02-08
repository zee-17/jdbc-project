package com.cydeo.jdbctest.day01;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

String dbUrl = "jdbc:oracle:thin:@52.207.232.207:1521:XE";
String dbUserName = "hr";
        String dbUserPassword = "hr";



    Connection conn = DriverManager.getConnection(dbUrl,dbUserName,dbUserPassword);



// It helps us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select * from regions");





            /*
            How to run query from Java file
                - Click over Query (dont choose anywhere )
                    - MAC --> CMD+ENTER
                    - WIN --> CTRL+ENTER
                - Choose session

             */


        // GETTING DATA
        // next() ---> Moves the cursor forward one row from its current position.



      //  rs.next();









        // pointer shows the first row

        // how to get data

        // rs.getInt(index)  --> it returns integer. Index start from 1 into SQL.It refers column position

        // it returns int
//        System.out.println(rs.getInt(1));  // 1
//        // it returns String
//        System.out.println(rs.getString(1));  // 1
//
//        // rs.getInt(columLabel)
//        System.out.println(rs.getInt("REGION_ID"));
//        System.out.println(rs.getString("REGION_ID"));
//
//        System.out.println(rs.getString(2));
//        rs.next();
//        System.out.println("region ID of second row " + rs.getString("REGION_NAME"));
//
//        System.out.println("region_Name of second row " + rs.getString(2));
while (rs.next()){
    System.out.println("------------------------");
    System.out.println(rs.getString(1) +" - "+ rs.getString(2));


}








        // close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
