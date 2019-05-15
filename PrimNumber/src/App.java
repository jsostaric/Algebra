
public class App {

	public static void main(String[] args) {
		
		System.out.print("Prime numbers: ");
		
		for(int i = 2; i <=100;i++) {
			
			boolean prime = false;
			
			for(int j = 2; j <= i/2; j++) {
				
				if(i % j == 0) {
					prime = true;
					break;
				}
			}
			
			if(!prime) {
				System.out.print(i + ", ");
			}
		}

	}

}
