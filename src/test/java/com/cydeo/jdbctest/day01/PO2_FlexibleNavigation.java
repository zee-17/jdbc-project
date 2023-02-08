package com.cydeo.jdbctest.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO2_FlexibleNavigation {


    String dbUrl = "jdbc:oracle:thin:@52.207.232.207:1521:XE";
    String dbUserName = "hr";
    String dbUserPassword = "hr";
    @Test
    public void task() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbUserPassword);


// It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )

        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME from EMPLOYEES");

rs.next();
        System.out.println(rs.getString(1)+ " " + rs.getString(2));

        rs.next();
        System.out.println(rs.getString(1)+ " " + rs.getString(2));

       // rs.last();
        System.out.println(rs.getString(1)+ " " + rs.getString(2));

        System.out.println("----------------\nget row num");
        System.out.println(rs.getRow()); // give us the rows num

        rs.absolute(10);  // David Bers
        System.out.println(rs.getString(1)+" "+rs.getString(2));
        System.out.println(rs.getRow());   // 10

        rs.close();
        statement.close();
        conn.close();
    }
}
