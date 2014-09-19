package kuzma.oleg.connection.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBAccess {

	private Connection connect = null;
	private Statement statement = null;
	private ResultSet resultSet = null;
	private PreparedStatement preparedStatement = null;

	public void makeConnection() throws Exception {
		try {

			Class.forName("com.mysql.jdbc.Driver");

			connect = DriverManager
					.getConnection("jdbc:mysql://localhost/coffeebreake?user=coffeecafe&password=123");
			statement = connect.createStatement();
			System.out.println("Connection is successful!");

		} catch (Exception e) {

		}
	}

	public void createCoffeeTable() throws Exception {
		try {

			String createTableCoffees = "CREATE TABLE coffees (COF_NAME VARCHAR(32), SUP_ID INTEGER, PRICE FLOAT, SALES INTEGER, TOTAL INTEGER)";

			// statement = connect.createStatement();

			statement.executeUpdate(createTableCoffees);

			statement
					.executeUpdate("INSERT INTO coffees VALUES ('Colombian', 101, 7.99, 0, 0)");
			statement
					.executeUpdate("INSERT INTO coffees VALUES ('French_Roast', 49, 8.99, 0, 0)");
			statement
					.executeUpdate("INSERT INTO coffees VALUES ('Espresso', 150, 9.99, 0, 0)");
			statement
					.executeUpdate("INSERT INTO coffees VALUES ('Colombian_Decaf', 101, 8.99, 0, 0)");
			statement
					.executeUpdate("INSERT INTO coffees VALUES ('French_Roast_Decaf', 49, 9.99, 0, 0)");

			System.out.println("Create is successful!");

		} catch (Exception e) {

		}
	}

	public void createSuppliersTable() throws Exception {
		try {

			String createSuppliers = "create table SUPPLIERS (SUP_ID INTEGER, SUP_NAME VARCHAR(40), STREET VARCHAR(40), CITY VARCHAR(20), STATE CHAR(2), ZIP CHAR(5))";
			statement.executeUpdate(createSuppliers);

			statement.executeUpdate("insert into SUPPLIERS values (101, "
					+ "'Acme, Inc.', '99 Market Street', 'Groundsville', "
					+ "'CA', '95199')");
			statement.executeUpdate("insert into SUPPLIERS values (49, "
					+ "'Superior Coffee', '1 Party Place', 'Mendocino', 'CA', "
					+ "'95460')");
			statement.executeUpdate("insert into SUPPLIERS values (150, "
					+ "'The High Ground', '100 Coffee Lane', 'Meadows', 'CA', "
					+ "'93966')");

			System.out.println("Create table Suppliers is successful!");
		} catch (Exception e) {

		}
	}
	
	public void selectInTable() throws SQLException{
		String query = "SELECT COFFEES.COF_NAME FROM COFFEES, SUPPLIERS WHERE SUPPLIERS.SUP_NAME='Acme, Inc.' and SUPPLIERS.SUP_ID=COFFEES.SUP_ID";
		resultSet = statement.executeQuery(query);
		while(resultSet.next()){
			
			String coffeeName = resultSet.getString("COF_NAME");
			System.out.println(coffeeName);
		}
	}

	public void updateCoffeeTable() throws SQLException {
		String updateString1 = "UPDATE COFFEES SET SALES = 55 ";
		statement.executeUpdate(updateString1);
		String updateString = "UPDATE COFFEES SET SALES = 75 WHERE COF_NAME = 'Colombian'";
		statement.executeUpdate(updateString);

		preparedStatement = connect
				.prepareStatement("UPDATE COFFEES SET SALES = ? WHERE COF_NAME = ?");
		preparedStatement.setInt(1, 77);
		preparedStatement.setString(2, "Espresso");
		preparedStatement.executeUpdate();

		System.out.println("Update is successful!");
	}

	public void showCoffeeTable() throws SQLException {
		String queryShowTable = "SELECT * FROM coffees";
		resultSet = statement.executeQuery(queryShowTable);
		writeResult(resultSet);
	}

	public void showSuppliersTable() throws SQLException {
		String selectSuppliers = "SELECT * FROM SUPPLIERS";
		resultSet = statement.executeQuery(selectSuppliers);
		writeResultSuppliers(resultSet);
	}

	private void writeResult(ResultSet resultSet) throws SQLException {
		System.out
				.println("__________________________________________________________________");
		System.out.println("COF_NAME                |" + "SUP_ID   |" + "PRICE   |" + "SALES    |" + "TOTAL      |");
		System.out
				.println("__________________________________________________________________");
		while (resultSet.next()) {
			String coffeeName = resultSet.getString("COF_NAME");
			int supId = resultSet.getInt("SUP_ID");
			float price = resultSet.getFloat("PRICE");
			int sales = resultSet.getInt("SALES");
			int total = resultSet.getInt("TOTAL");

			System.out.println(coffeeName);
			System.out.print("_______________________:");
			System.out.print(supId + "        ");
			System.out.print(price + "      ");
			System.out.print(sales + "       ");
			System.out.println(total + "    ");

		}
		System.out
				.println("__________________________________________________________________");
	}

	private void writeResultSuppliers(ResultSet resultSet) throws SQLException {
		System.out
				.println("________________________________________________________________________________");
		System.out.println("SUP_ID     " + " SUP_NAME           "
				+ " STREET          " + " CITY         " + " STATE     " + " ZIP ");
		System.out
				.println("________________________________________________________________________________");
		while (resultSet.next()) {
			int supId = resultSet.getInt("SUP_ID");
			String supName = resultSet.getString("SUP_NAME");
			String street = resultSet.getString("STREET");
			String city = resultSet.getString("CITY");
			String state = resultSet.getString("STATE");
			String zip = resultSet.getString("ZIP");

			System.out.print(supId + "      ");
			System.out.print(supName + "      ");
			System.out.print(street + "      ");
			System.out.print(city + "      ");
			System.out.print(state + "      ");
			System.out.println(zip + "      ");
		}
		System.out
				.println("________________________________________________________________________________");
	}
	
	public void useMetaData() throws Exception {
		try{
			
		}catch(Exception e){
			
		}
		
	}
}
