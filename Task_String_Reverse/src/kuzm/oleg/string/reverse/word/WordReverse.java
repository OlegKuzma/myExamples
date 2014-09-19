package kuzm.oleg.string.reverse.word;

public class WordReverse {

	public String reverseAndConcaternate(String[] words) {
		
		String reverseString = new String();
		char space = ' ';

		for (int i = 0; i < words.length; i++) {
			
		  int lengthOfWord = words[i].length();
		  char[] charsArrayOfReverseWord = new char[lengthOfWord];
			
			for (int j = 0; j < lengthOfWord; j++) {
				
			  charsArrayOfReverseWord[j] = words[i].charAt(lengthOfWord - 1 - j);
				
			}
		  
		  reverseString += new String(charsArrayOfReverseWord) + space ;
		
		}

		return reverseString;
	}

}
