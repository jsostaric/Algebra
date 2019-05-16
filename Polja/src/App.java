
import java.util.*;

public class App {

	public static void main(String[] args) {
		
		int polje[][] = new int[5][5];
		
		for(int i = 0; i < 5; i++) {
			for(int j = 0; j < 5; j++) {
				polje[i][j] = (int) (Math.random() * 5) +1;
			}			
		}
	
		
		for(int i = 0; i < 5; i++) {
			for(int j = 0; j < 5; j++) {
				System.out.print(polje[i][j] + "\t");
			}
			
			System.out.println();
		}
		
		
		// izraèun sume glavne dijagonale
		int suma = 0;		
		for(int i = 0; i < 5; i++) {
			suma += polje[i][i];			
		}
		
		System.out.println("Suma dijagonale je: " + suma + "\n");
		
		System.out.println("****************************\n");
		
		
		
		//izraèun sume sekundarne dijagonale
		suma = 0;
		for(int i=0; i <5; i++) {
			for(int j = 0; j < 5; j++) {
				if(i+j == (5-1)) {
					suma += polje[i][j];
				}
				
			}
		}
		
		System.out.println("Suma druge dijagonale je: " + suma);
		
		
		
		
		
		
	} // end of main...
	

}
