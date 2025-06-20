package Mysqlprogram;
import java.sql.*;
public class JDBC {

	public static void main(String[] args) throws Exception {

	String url = "jdbc:mysql://localhost:3306/employee";

	String username = "root";

	String password = "";
	
	Connection connect = DriverManager.getConnection(url, username, password);
	
	System.out.println("Driver Loaded");

}
}
