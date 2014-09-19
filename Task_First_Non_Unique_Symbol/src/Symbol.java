import java.util.LinkedHashSet;
import java.util.Set;

public class Symbol {

	
	public Character foundFirstUniqueSymbols(String text) {

		if (!text.matches("[a-z]+")) {
			throw new IllegalArgumentException("String has illegal symbols .");
		}

		Set<Character> nonUniqueSymbSet = new LinkedHashSet<Character>();
		boolean[] boolArray = new boolean[65536];
	
		for (int i = 0; i < text.length(); i++) {
		char ch = text.charAt(i);
			if (boolArray[charToPositivInt(ch)] == true) {
				nonUniqueSymbSet.add(ch);
			}

			boolArray[charToPositivInt(ch)] = true;
		}

		int count = 0;
		
		while (nonUniqueSymbSet.contains(text.charAt(count))) {
			if (count == text.length() - 1) {
				return  null;
			}
			count++;
		}
	//	Character character = text.charAt(count);
		return text.charAt(count);
	}

	public int charToPositivInt(char ch) {
		int positiv = 0;
		if (ch < 0) {
			//pCh = 32768 + ch;
			positiv = 65536 + ch;
		}
		//pCh = 32768 - ch;
		positiv = 65536 - ch;
		return positiv;

	}

}
