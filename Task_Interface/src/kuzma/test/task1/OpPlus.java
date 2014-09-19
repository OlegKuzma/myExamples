package kuzma.test.task1;
public class OpPlus implements Operation {

	@Override
	public double exec(double a, double b) {

		double result = a + b;

		return result;
	}

}
