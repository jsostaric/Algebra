package iznimke;

import java.util.ArrayList;

public class Iznimke {

    public static void main(String[] args) {
        
        /*
            ArrayList<String> nizovi = new ArrayList<>();
        
        try {
            int a = 10;
            int b = 0;
            System.out.println(a/b);
            System.out.println("linija koda 1");
            
            
        }catch(Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
            System.out.println("linija koda 2");
            
        */
        
        int broj = 0;
        String unos = "234d";
        int[] polje = {1,2,3};
        try {
            //1. greška
           // broj = new Integer(unos);
            //2.greška
           // broj = polje[5];
            //3.greška
            broj = broj/0;
        }catch(NumberFormatException e) {
            System.out.println("Greška pri konverziji znakovnog niza u broj");
        }catch(ArrayIndexOutOfBoundsException e) {
            System.out.println("Greška pri pristupu elementu iz polja");
        }catch(ArithmeticException e) {
            System.out.println("Greška prilikom dijeljenja sa nulom");
        }catch(Exception e) {
            System.out.println("Sve ostale greške");
        }finally{
            System.out.println("Završetak programa");
        }
    
        
        
    } //end of main

}
