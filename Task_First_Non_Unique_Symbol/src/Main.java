import java.util.Scanner;


public class Main {

	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		String string = scan.nextLine();

		Symbol symbol = new Symbol();

		Character firstUnique = symbol.foundFirstUniqueSymbols(string);
		System.out.println(firstUnique);

	}

}
