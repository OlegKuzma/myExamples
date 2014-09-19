package kuzma.test.task2;
import java.awt.Color;
import java.awt.Component;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.DefaultCellEditor;
import javax.swing.JComponent;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;

public class DateCellEditor extends DefaultCellEditor {
	
	//Class<?>[] argTypes = new Class[] { String.class };
	Object value;
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public DateCellEditor() {

		super(new JTextField());

	}

	@Override
	public boolean stopCellEditing() {
		String s = (String) super.getCellEditorValue();
		// Here we are dealing with the case where a user
		// has deleted the string value in a cell, possibly
		// after a failed validation. Return null, so that
		// they have the option to replace the value with
		// null or use escape to restore the original.
		// For Strings, return "" for backward compatibility.
		if ("".equals(s)) {
			value = null;
			return super.stopCellEditing();
		}
		try {

			value = format.parse(s);
		} catch (ParseException e) {
			((JComponent) getComponent()).setBorder(new LineBorder(Color.red));
			return false;
		}
		return super.stopCellEditing();
	}

	// must return date type in format that we need
	@Override
	public Component getTableCellEditorComponent(JTable table, Object value,
			boolean isSelected, int row, int column) {
		this.value = null;
		((JComponent) getComponent()).setBorder(new LineBorder(Color.black));
		if (value instanceof Date) {
			Date d = (Date) value;
			value = format.format(d);
		}
		return super.getTableCellEditorComponent(table, value, isSelected, row,
				column);
	}
}