
package sucelja;

import java.util.Scanner;


public class Sucelja {
    
    
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        PretvorbaCelzijus primjer = new PretvorbaCelzijus();
        
        System.out.println("Unesi temperaturu u stupnjevima Celzijusovim: ");
        double t = Double.parseDouble(sc.nextLine()); // potrebno za decimalni unos celzijusa
        
        System.out.println("Temp u Kelvinima: " + primjer.celzijusiUKelvine(t));
        System.out.println("Temp u fahr...: " + primjer.celzijusiUFahreinheite(t));
    }
}
