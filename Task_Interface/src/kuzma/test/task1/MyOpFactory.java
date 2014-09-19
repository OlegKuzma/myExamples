package kuzma.test.task1;
public class MyOpFactory implements OperationFactory {

	@Override
	public Operation getOpInstance(String oper) {

		switch (oper) {

		case "+":
			OpPlus opPlus = new OpPlus();
			return opPlus;
		case "-":
			OpMinus opMinus = new OpMinus();
			return opMinus;
		case "/":
			OpDiv opDiv = new OpDiv();
			return opDiv;
		case "*":
			OpMul opMul = new OpMul();
			return opMul;
		case "^":
			OpPow opPow = new OpPow();
			return opPow;
		default:
			return null;
		}
	}
}
