import java.lang.Math;

public class App {

	public static void main(String[] args) {
		double broj1 = 4.87;
		double broj2 = 2.43;
		
		int operacija = 1; // brojevi od 1-4 za zbrajanje, oduzimanje, množenje, djeljenje respektivno

		System.out.println("Izaberite broj:");
		System.out.println("1. Operacija zbrajanja");
		System.out.println("2. Operacija oduzimanja");
		System.out.println("3. Operacija množenja");
		System.out.println("4. Operacija dijeljenja\n");
		
		
		switch(operacija) {
		case 1:
			System.out.println("Vrijednost zbroja: " +broj1 + broj2);
			break;
		case 2:
			System.out.println("Vrijednost razlike: " + (broj1 - broj2));
			break;
		case 3:
			System.out.println("Vrijednost umnoška: " + broj1 * broj2);
			break;
		case 4:
			System.out.println("Vrijednost koliènika: " + broj1 / broj2);
			break;
		default:
			System.out.println("Molim Vas odaberite broj operacije od 1 do 4.");
		}
	}

}
