package blitz;

import blitz.zadatak2.Iscrtaj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import zadatak3.Polaznik;

public class Blitz {

    public static void main(String[] args) {

        //zadatak 1 +
        System.out.println("   J     a    v     v    a");
        System.out.println("   J    a a    v   v    a a");
        System.out.println("J  J   aaaaa    v v    aaaaa");
        System.out.println(" JJ   a     a    v    a     a");

        //zadatak2 +
        Iscrtaj is = new Iscrtaj();
        is.iscrtaj(10, 10);

        //zadatak 3
        ArrayList<Polaznik> listaPolaznika = new ArrayList<Polaznik>();

        Polaznik p1 = new Polaznik("Pero", "Peric", 40);
        Polaznik p2 = new Polaznik("Ivan", "Ivić", 25);
        Polaznik p3 = new Polaznik("Đuro", "Đurić", 62);
        
        
        listaPolaznika.add(p1);
        listaPolaznika.add(p2);
        listaPolaznika.add(p3);
        
        
     
        
        for(int i=0 ; i<listaPolaznika.size(); i++) {
            
            System.out.println("godine: " +listaPolaznika.get(i).getDob() + "\n" + "ime i prezime: " +
                    listaPolaznika.get(i).getIme() + " "+ listaPolaznika.get(i).getPrezime());
        }
        
        
        //zadatak 4 = Polaznik null -  ispravno boolean false
        //zadatak 5 = 
        
        //zadatak 6 - public int k = 4;
        //zadatak 7 - petlja će se ponavljati
        //zadatak 8 - abstract
        //zadatak 9 - mogu imati isti naziv, ali različite tipove parametara
        //zadatak10 - neće kako bi mogli koristiti instancu bez parametara moramo napraviti u klasi konstruktor bez parametara
        
        
    }//end of main

}
