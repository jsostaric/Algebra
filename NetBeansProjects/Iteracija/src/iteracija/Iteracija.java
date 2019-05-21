package iteracija;

import java.util.Scanner;
import java.lang.Math;

public class Iteracija {

    public static void main(String[] args) {
        /*
        int broj = 1111;
        if(broj == 0) {
            System.out.println(1);
            return;
        }

        broj = Math.abs(broj);
        int counter = 0;
        while(broj > 0) {
            counter++;
            broj /= 10;
        }

        System.out.println(counter);


        int limit = 20;
        int suma = 0;
        int i = 1;

        do{
            suma += i;

            i++;

        }while(i <= limit);
        System.out.println("Suma: "+suma);
         

        int limit = 20;
        long faktorijel;
        
        for (int i = 1; i <= limit; i++) {
            faktorijel = 1L;
            for(int faktor = 2; faktor <=i;faktor++) {
                faktorijel *= faktor;
            }
            
            System.out.println(i + "! = " + faktorijel);
        }
        */
        
        double broj1, broj2;
        int operacija = 0;
        
 
        Scanner scanner = new Scanner(System.in);
        
        /*
        while(operacija != 5)  {
            System.out.println("********* Izbornik ***********");
            System.out.println("1. Zbrajanje");
            System.out.println("2. Oduzimanje");
            System.out.println("3. Množenje ");
            System.out.println("4. Dijeljenje");
            System.out.println("5. Izlaz");        
            System.out.println("******************************");

            System.out.println("unesite broj iz izbornika:");
            operacija = scanner.nextInt();
            
            if(operacija == 5) {
                continue;                
            }

            System.out.println("Unesite prvi broj:");
            broj1 = scanner.nextInt();

            System.out.println("unesite drugi broj:");
            broj2 = scanner.nextInt();
            
            
            switch(operacija) {
                case 1:
                    System.out.println("zbroj " + broj1 + " i " + broj2 + " iznosi: "+ (broj1+broj2));
                    break;
                case 2:
                    System.out.println("razlika " + broj1 + " i " + broj2 + " iznosi: "+ (broj1-broj2));
                    break;
                case 3:
                    System.out.println("umnožak " + broj1 + " i " + broj2 + " iznosi: "+ (broj1*broj2));
                    break;
                case 4:
                    System.out.println("količnik " + broj1 + " i " + broj2 + " iznosi: "+ (broj1/broj2));
                    break;                                  
                default:
                    System.out.println("Izaberi broj od 1 do 5");
                
            }
        }
        
        
        System.out.println("Unesite godinu:");
        int godina = scanner.nextInt();

        if ((godina % 100 != 0) || (godina % 400 == 0)) {
            if (godina % 4 == 0) {
                System.out.println("godina je prijestupna");
            } else {
                System.out.println("Godina nije prijestupna");
            }
        }
        */
        
        
        //sedmi zadatak
        for(int i = 2; i <=100; i++) {
            
            
            
        }
        
        
        
        
        
        scanner.close();
       
        
        
    }
}
