package kuzm.oleg.string.reverse.word;

public class MainString {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		String[] words={"one","two","three","aboodaboo"};
		WordReverse stringOfReverseWords = new WordReverse();
		System.out.println(stringOfReverseWords.reverseAndConcaternate(words));

	}

}
