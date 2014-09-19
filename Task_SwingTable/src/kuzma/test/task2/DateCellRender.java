package kuzma.test.task2;
import java.text.DateFormat;
import java.text.Format;
import javax.swing.table.DefaultTableCellRenderer;

public class DateCellRender extends DefaultTableCellRenderer {

	private Format formatter;

	public DateCellRender(Format formatter) {
		this.formatter = formatter;
	}

	// specified formatter to format Object

	public void setValue(Object value) {
		// if formatter is null default date format
		if (formatter == null) {
			formatter = DateFormat.getDateInstance();
		}
		try {
			if (value != null) {
				value = formatter.format(value);
			}
		} catch (IllegalArgumentException e) {}

		super.setValue(value);

	}

}
