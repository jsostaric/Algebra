
public class App {

	public static void main(String[] args) {
		
		
		System.out.print("Prime numbers: ");
		for(int num = 2; num <= 100; num++) {
			
			boolean prime = false;
			
			for(int i = 2; i <= num/2; i++) {
				
				if(num % i == 0) {
					prime = true;
					break;
				}					
				
			}
			
			
			if(!prime)
				System.out.print(num + ", ");
			
		}

	}

}
