package kuzma.test.task1;
public class Calculator {

	private OperationFactory objOpFactory;

	public Calculator(OperationFactory objOpFactory) {

		this.objOpFactory = objOpFactory;

	}

	public double exec(double a, double b, String operation) {
		
		double result = objOpFactory.getOpInstance(operation).exec(a, b);
		System.out.println("= " + result);

		return result;
	}

}
