package kuzma.test.task1;
public class OpDiv implements Operation {

	@Override
	public double exec(double a, double b) {

		double result = a / b;

		return result;
	}

}