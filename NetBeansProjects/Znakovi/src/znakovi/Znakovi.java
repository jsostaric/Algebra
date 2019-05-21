
package znakovi;

import java.util.Scanner;


public class Znakovi {

 
    public static void main(String[] args) {
        /*
        String firstName = "Jurica";
        String lastName = "Sostaric";
        
        System.out.println(firstName.substring(firstName.length()-1));
        
        String mojeIme = "Jurica";
        String tvojeIme = "jurica";
        
        if(mojeIme.equalsIgnoreCase(tvojeIme)) {
            System.out.println("Imena su ista");
        } else {
            System.out.println("Imena su različita");
        }
        
        
        String [] imena = {"Marko", "Ivana", "Marija", "Stjepan", "Đuro","Goran", "Ana", "Maja", "Tomislav", "Ivan"};
        
        System.out.println("Imena koja završavaju na n su:");
        for(String s : imena) {
            if(s.endsWith("n")) {
                System.out.println(s);
            }
        }
        
        System.out.println("Imena koja počinju sa a su:");
        for(String s : imena) {
            if(s.startsWith("A")) {
                System.out.println(s);
            }
        }
        */
        
        String fakultet = "Visoka škola za primijenjeno računarstvo";
        String[] rezPolje = fakultet.split(" ");
        for(String s : rezPolje) {
            System.out.println(s);
        }
        
        String mojeSelo = "     Sveti Petar u Šumi    ";
        
        System.out.println(mojeSelo.toLowerCase());
        System.out.println(mojeSelo.toUpperCase());
        System.out.println(mojeSelo.length());
        String selo = mojeSelo.trim();
        System.out.println(selo.trim());
        System.out.println(selo.length());
        
        //zadatak 1
        Scanner sc = new Scanner(System.in);
        String ime = "";
        String grad;
        
        
        do{
            System.out.println("Unesite ime i prezime:");
            ime = sc.nextLine();
        }while(ime.trim().length() > 17);
        
        System.out.println("Unesite grad rođenja:");
        grad = sc.nextLine();
        
        String[] punoIme = ime.split(" ");
        
        
        System.out.println("unijeli ste ime: " + punoIme[0]);
        System.out.println("unijeli ste prezime: " + punoIme[1]);
        
        System.out.println("Grad: " + grad);
        
        char[] poljeZnakova = grad.toCharArray();
        char[] samoglasnik = {'a','e','i','o','u'};
        
        
        
        for(int i = 0; i < samoglasnik.length; i++) {
          for(int j = 0; j < poljeZnakova.length; j++) {
              if(poljeZnakova[j] == samoglasnik[i]) {
                  System.out.println("grad ima samoglasnik: " + samoglasnik[i]);
              }
          } 
        }
        
     
        
        
        
        
        
    } //end of main...
    
}
