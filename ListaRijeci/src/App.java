import java.util.ArrayList;
import java.util.Scanner;

public class App {

	public static void main(String[] args) {
		String rijec;
        int brojRijeci = 0;
        
        ArrayList<String> rijeci = new ArrayList<>();
        
        Scanner s = new Scanner(System.in);        
        
        //upit za korisnika koliko rijeci zeli unijeti
        System.out.println("Koliko rijeci zelite unijeti?");
        brojRijeci = s.nextInt();
        
        for(int i = 0 ; i<brojRijeci; i++) {
            System.out.println("unesite " + (i+1)+ ". rijec:");
            rijec = s.next(); 
            
            if(rijeci.contains(rijec)) {
               do {
            	   System.out.println("unesite " + (i+1)+ ". rijec:");
            	   rijec = s.next();
               }while(rijeci.contains(rijec));
               
                
            }
            
            rijeci.add(rijec);           
        }
        
        System.out.println(rijeci);

	}

}
