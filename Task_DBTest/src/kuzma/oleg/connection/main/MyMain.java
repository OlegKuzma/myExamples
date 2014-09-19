package kuzma.oleg.connection.main;

import kuzma.oleg.connection.db.DBAccess;

public class MyMain {
	public static void main(String[] args) throws Exception {
		DBAccess dba = new DBAccess();
		dba.makeConnection();
	//	dba.createCoffeeTable();
	//	dba.updateCoffeeTable();
	//	dba.showCoffeeTable();
	//	dba.createSuppliersTable();
	//	dba.showSuppliersTable();
		dba.selectInTable();
	}
}

