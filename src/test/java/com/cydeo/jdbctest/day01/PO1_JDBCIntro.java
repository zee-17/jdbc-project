package com.cydeo.jdbctest.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO1_JDBCIntro {

    String dbUrl = "jdbc:oracle:thin:@52.207.232.207:1521:XE";
    String dbUserName = "hr";
    String dbUserPassword = "hr";
    @Test
    public void task() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl,dbUserName,dbUserPassword);



// It helps us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution.It stores only data (there is no table info )


        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS");


rs.next();
        System.out.println("rs.getInt(1) = " + rs.getInt(1));


        while (rs.next()) {
    System.out.println(rs.getString(1) + " - " + rs.getString(2) + " - " + rs.getString(3) + " - " + rs.getString(4));

}




        rs = statement.executeQuery("select * from REGIONS");
        System.out.println("--------------second query----------");
while (rs.next()){
    System.out.println(rs.getString(1)+ "-" +rs.getString(2));
}




//while (rs.next()){
//    System.out.println();
//}












        rs.close();
        statement.close();
        conn.close();

    }
}
