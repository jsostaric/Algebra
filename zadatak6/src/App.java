
public class App {

	public static void main(String[] args) {
		
		int postotak = 75;
		
		if(postotak < 0 || postotak >100) {
			System.out.println("Nije postotak");
		}else if(postotak >= 90) {
			System.out.println("Ocjena je Odlièan(5)");
		}else if(postotak >= 80) {
			System.out.println("Ocjena je Vrlo dobar(4)");
		}else if(postotak >= 70) {
			System.out.println("Ocjena je Dobar(3)");
		}else if(postotak >= 60) {
			System.out.println("Ocjena je Dovoljan(2)");
		}else {
			System.out.println("Ocjena je Nedovoljan(1)");
		}
	}

}
