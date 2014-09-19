package kuzma.test.task2;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Timestamp;

public class MySQLAccess {

	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	private ResultSetMetaData rsMetaData = null;

	public MySQLAccess() {
		// try to connect
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager
					.getConnection("jdbc:mysql://localhost/itcompany?user=testuser&password=pass");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	// get all data in the table in the DB
	public ResultSet readDataBase() throws Exception {

		try {
			preparedStatement = connection
					.prepareStatement("SELECT FIRST_NAME, SECOND_NAME, AGE, EXP_YEARS, PROG_LANG, ON_LIVE, UPD_DATE from ITCOMPANY.DEVELOPERS");
			resultSet = preparedStatement.executeQuery();
		} catch (Exception e) {
			throw e;
		}
		return resultSet;
	}

	// get metadata
	public ResultSetMetaData getRSMetaData() {
		try {
			rsMetaData = readDataBase().getMetaData();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rsMetaData;
	}

	// do select by filters
	public ResultSet selectByColumnFilter(int columnIndex, String param)
			throws Exception {
		String nameColumn = readDataBase().getMetaData().getColumnName(
				columnIndex);
		preparedStatement = connection
				.prepareStatement("SELECT FIRST_NAME, SECOND_NAME, AGE, EXP_YEARS, PROG_LANG, ON_LIVE, UPD_DATE from ITCOMPANY.DEVELOPERS where "
						+ nameColumn + "= ?;");
		try {
			switch (columnIndex) {
			case 1:
			case 2:
			case 5:
				preparedStatement = connection
						.prepareStatement("SELECT FIRST_NAME, SECOND_NAME, AGE, EXP_YEARS, PROG_LANG, ON_LIVE, UPD_DATE from ITCOMPANY.DEVELOPERS where "
								+ nameColumn + " LIKE ?;");
				preparedStatement.setString(1, "%" + param + "%");
				break;
			case 3:
			case 4:
				preparedStatement.setInt(1, Integer.parseInt(param));
				break;
			case 6:
				preparedStatement.setBoolean(1, Boolean.parseBoolean(param));
				break;
			case 7:
				param = param + ".0";
				preparedStatement.setTimestamp(1, Timestamp.valueOf(param));
				break;
			}

			resultSet = preparedStatement.executeQuery();
		} catch (Exception e) {
			throw e;
		}
		return resultSet;
	}

	public void closePrepareStatement() {
		try {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
		} catch (Exception e) {

		}
	}

	public void closeConnection() {
		try {
			if (connection != null) {
				connection.close();
			}
		} catch (Exception e) {

		}
	}

}
