package kuzma.test.task1;
import java.util.Scanner;

public class MainExecution {

	public static void main(String[] args) {

		MyOpFactory opFactory = new MyOpFactory();
		Calculator calculator = new Calculator(opFactory);

		Scanner sc = new Scanner(System.in);
		String opCode = "";

		do {
			System.out.println("Enter the first number:");
			double firstNumber = sc.nextDouble();

			System.out.println("Enter the second number:");
			double secondNumber = sc.nextDouble();

			System.out
					.println("Enter the option code (+, -, /, *, ^).For exit enter (end):");
			opCode = sc.next();

			if (opFactory.getOpInstance(opCode) != null)
				calculator.exec(firstNumber, secondNumber, opCode);

		} while (!opCode.equals("end"));

	}

}
