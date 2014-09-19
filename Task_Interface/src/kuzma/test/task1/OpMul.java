package kuzma.test.task1;
public class OpMul implements Operation {

	@Override
	public double exec(double a, double b) {

		double result = a * b;

		return result;
	}

}