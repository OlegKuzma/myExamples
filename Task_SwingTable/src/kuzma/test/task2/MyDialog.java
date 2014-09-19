package kuzma.test.task2;
import java.awt.BorderLayout;
import java.awt.Dimension;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;

import javax.swing.WindowConstants;

public class MyDialog extends JFrame {

	private JDialog dialog = new JDialog(this, "Table dialog");
	private JButton button = new JButton("Close");
	private JPanel panelForFilters = new JPanel();
	private JPanel panel = new JPanel(new BorderLayout());
	private JPanel panelForButton = new JPanel(new BorderLayout());

	private JTextField filterText1 = new JTextField(8);
	private JTextField filterText2 = new JTextField(8);
	private JTextField filterText3 = new JTextField(8);
	private JTextField filterText4 = new JTextField(8);
	private JTextField filterText5 = new JTextField(8);
	private JTextField filterText6 = new JTextField(8);
	private JTextField filterText7 = new JTextField(9);
	private JTable table;

	private SimpleDateFormat formatter;
	private DateCellRender render;

	private MySQLAccess mySqlAccess = new MySQLAccess();
	private ResultSet resultSet = mySqlAccess.readDataBase();
	private DBTableModel model = new DBTableModel();

	public MyDialog() throws Exception {
		// create the table
		table = prepareTable();

		// close the dialog and connection with DB when click button "Close"
		button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				mySqlAccess.closeConnection();
				setVisible(false);
				dispose();

			}
		});
		// filters for each column
		filterTextListener(filterText1, 1, model);
		filterTextListener(filterText2, 2, model);
		filterTextListener(filterText3, 3, model);
		filterTextListener(filterText4, 4, model);
		filterTextListener(filterText5, 5, model);
		filterTextListener(filterText6, 6, model);
		filterTextListener(filterText7, 7, model);
		// prepare panel: add table, button and filters, set layouts
		panel = preparePanel();
		// add panel to dialog
		dialog.add(panel);
		// disable default close operation for dialog
		dialog.setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);

	}

	public void createAndShowGUI() {

		dialog.pack();
		dialog.setVisible(true);

	}

	private void filterTextListener(final JTextField filter, final int column,
			final DBTableModel tableModel) {

		filter.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {

				try {
					// new select by column filter
					resultSet = mySqlAccess.selectByColumnFilter(column,
							filter.getText());
					// display in table new select
					table = getTable(tableModel, resultSet);
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});

	}

	private JTable prepareTable() throws SQLException {

		if (resultSet != null || resultSet.isClosed() == false) {
			table = getTable(model, resultSet);
			formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			render = new DateCellRender(formatter);
			table.setDefaultRenderer(Date.class, render);
			table.setDefaultEditor(Date.class, new DateCellEditor());
		} else {
			table = new JTable(7, 7);
		}

		return table;
	}

	private JTable getTable(DBTableModel model, ResultSet rs) {

		try {
			model.setDataSource(rs);
			table = new JTable(model);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return table;

	}

	private JPanel preparePanel() {

		panelForFilters.setLayout(new BoxLayout(panelForFilters,
				BoxLayout.X_AXIS));
		panelForFilters.add(filterText1);
		panelForFilters.add(filterText2);
		panelForFilters.add(filterText3);
		panelForFilters.add(filterText4);
		panelForFilters.add(filterText5);
		panelForFilters.add(filterText6);
		panelForFilters.add(filterText7);

		JScrollPane scrollPane = new JScrollPane(table);
		scrollPane.setPreferredSize(new Dimension(850, 135));
		scrollPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);

		panelForButton.add(button, BorderLayout.EAST);

		panel.add(panelForFilters, BorderLayout.NORTH);
		panel.add(scrollPane, BorderLayout.CENTER);
		panel.add(panelForButton, BorderLayout.PAGE_END);

		return panel;
	}
}
