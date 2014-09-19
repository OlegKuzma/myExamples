import java.io.*;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.*;

import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;

public class MyFrame {
	//method creates nodes for the tree and makes incorrect file.txt name in red
	private static DefaultMutableTreeNode getNode(File f) {
		DefaultMutableTreeNode result = new DefaultMutableTreeNode(f.getName());
		//checks files.txt
		if (f.isFile() && f.getName().endsWith(".txt")) {
			boolean correct = read(f);
			if (correct) {
			} else {
				// paint filename with red
				result.setUserObject("<html><font color = red>" + f.getName());
			}
		}
		if (f.isDirectory()) {
			File[] children = f.listFiles();
			if (children != null) {
				for (File child : children) {
					result.add(getNode(child));
				}
			}
		}
		return result;
	}

	//method reads and checks the brackets in files.txt
	public static boolean read(File fileName) {
		FileInputStream fis;
		try {
			fis = new FileInputStream(fileName);
			BufferedInputStream bis = null;
			try {
				bis = new BufferedInputStream(fis);
				int opened = 0;
				while (bis.available() > 0) {
					char c = (char) bis.read();
					if (c == '(') {
						opened++;
					}
					if (c == ')') {
						opened--;
						if (opened < 0) {
							break;
						}
					}
				}
				bis.close();
				fis.close();
				return opened == 0;
			} catch (IOException e) {
				try {
					fis.close();
					return false;
				} catch (IOException ex) {
					return false;
				}

			}
		} catch (FileNotFoundException e) {
			return false;
		}
	}

	public static void main(String[] args) {
		
		//Create and set up the window.
		final JFrame frame = new JFrame("Bracket matching");
		frame.setPreferredSize(new Dimension(300, 400));
		frame.setLocation(200, 100);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		//Creating Panel
		final JPanel panel = new JPanel();
		panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
		//Add panel to the window
		frame.add(panel);
		
		//Creating File
		final File file = new File("");
		
		//Creating Tree
		final JTree tree = new JTree(getNode(file));
		
		//Creating Panel for button and textField
		JPanel northPanel = new JPanel();
		Border northBorder = BorderFactory
				.createTitledBorder("Choose the folder");
		northPanel.setBorder(northBorder);
		frame.add(northPanel, BorderLayout.NORTH);

		//Create text field
		final JTextField input = new JTextField(16);
		northPanel.add(input);
	
		// Creating Button
		JButton myButton = new JButton("Folder");
		myButton.setPreferredSize(new Dimension(70, 30));
		northPanel.add(myButton);
		
		// Creating file selection window
		final JFileChooser dialog = new JFileChooser();
		dialog.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);

		// Open a file selection window by pressing
		myButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dialog.showOpenDialog(frame);
			}
		});

		// Track the path of the selected file and display it in a Tree
		dialog.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				input.setText(dialog.getSelectedFile().toString());

				File file = new File(input.getText());
				JScrollPane js = new JScrollPane(tree);
				
				tree.setModel(new DefaultTreeModel(getNode(file)));
				tree.repaint();
				panel.add(js);
				tree.setVisible(true);
				panel.revalidate();

			}
		});

		
		//Display the window.
		frame.pack();
		frame.setVisible(true);
	}
}