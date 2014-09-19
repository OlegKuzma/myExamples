package kuzma.test.task2;
public class Main {

	public static void main(String[] args) throws Exception {

		final MyDialog dialogFrame = new MyDialog();

		// creating and showing this application GUI
		javax.swing.SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				dialogFrame.createAndShowGUI();
			}
		});

	}

}