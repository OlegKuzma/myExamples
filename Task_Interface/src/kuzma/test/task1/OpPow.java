package kuzma.test.task1;
public class OpPow implements Operation {

	@Override
	public double exec(double a, double b) {

		double result = Math.pow(a, b);

		return result;
	}

}
