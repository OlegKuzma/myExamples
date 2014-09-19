package kuzma.test.task2;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Timestamp;

import java.util.ArrayList;
import java.util.Date;

import javax.swing.table.AbstractTableModel;

public class DBTableModel extends AbstractTableModel {
	// arrays for storing data
	private ArrayList<String> columnNames = new ArrayList<String>();
	private ArrayList<Class<?>> columnTypes = new ArrayList<Class<?>>();
	private ArrayList<ArrayList<Object>> data = new ArrayList<ArrayList<Object>>();

	@Override
	public int getRowCount() {
		synchronized (data) {
			return data.size();
		}
	}

	@Override
	public int getColumnCount() {
		return columnNames.size();
	}

	@Override
	public Object getValueAt(int row, int column) {
		synchronized (data) {
			return data.get(row).get(column);
		}
	}

	public String getColumnName(int column) {
		return columnNames.get(column);
	}

	public Class<?> getColumnClass(int column) {
		return columnTypes.get(column);
	}

	public boolean isCellEditable(int row, int column) {
		return true;
	}

	public void setValueAt(Object obj, int row, int column) {
		synchronized (data) {
			data.get(row).set(column, obj);
		}
	}

	public void setDataSource(ResultSet rs) throws SQLException,
			ClassNotFoundException {
		// get the metadata to get information about columns
		MySQLAccess access = new MySQLAccess();
		ResultSetMetaData rsMetaData = access.getRSMetaData();
		// clear arrays before add new data
		columnNames.clear();
		columnTypes.clear();
		data.clear();
		// get count of columns
		int columnCount = rsMetaData.getColumnCount();
		// get names and types of columns
		for (int i = 0; i < columnCount; i++) {
			columnNames.add(rsMetaData.getColumnName(i + 1));
			Class<?> type = Class.forName(rsMetaData.getColumnClassName(i + 1));
			if (type == Timestamp.class) {
				type = Class.forName("java.util.Date");
			}
			columnTypes.add(type);
		}
		// announce that the table structure change
		fireTableStructureChanged();
		// get data from the DB and save for the table in the dialog
		while (rs.next()) {
			ArrayList<Object> rowData = new ArrayList<Object>();
			for (int i = 0; i < columnCount; i++) {

				if (columnTypes.get(i) == Date.class) {
					Timestamp timestamp = rs.getTimestamp(i + 1);
					Date date = timestamp;
					rowData.add(date);
				} else if (columnTypes.get(i) == String.class) {
					rowData.add(rs.getString(i + 1));
				} else if (columnTypes.get(i) == Integer.class) {
					rowData.add(rs.getInt(i + 1));
				} else {
					rowData.add(rs.getObject(i + 1));
				}
			}
			synchronized (data) {
				data.add(rowData);
				this.fireTableRowsInserted(data.size() - 1, data.size() - 1);
			}
		}
		// close a prepare statement when get all the data
		access.closePrepareStatement();
	}

}
