
package hnlzadatak;

import java.util.ArrayList;
import java.util.Scanner;


public class HNLzadatak {


    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        Trener t1 = new Trener("Pero","Peric", "Trener");
        Trener t2 = new Trener("Ivo","Ivic", "Trener");
        
        //prvi klub
        Igrac igrac11 = new Igrac("i1","p2", "igrac");
        Igrac igrac12 = new Igrac("i2","p2", "igrac");
        Igrac igrac13 = new Igrac("i3","p3", "igrac");
        ArrayList<Igrac> listaIgraca1 = new ArrayList<>();
        listaIgraca1.add(igrac11);
        listaIgraca1.add(igrac12);
        listaIgraca1.add(igrac13);
        
        //drugi klub
        Igrac igrac21 = new Igrac("i1","p1", "igrac");
        Igrac igrac22 = new Igrac("i2","p2", "igrac");
        Igrac igrac23 = new Igrac("i3","p3", "igrac");
        ArrayList<Igrac> listaIgraca2 = new ArrayList<>();
        listaIgraca2.add(igrac21);
        listaIgraca2.add(igrac22);
        listaIgraca2.add(igrac23);
        
       Klub klub1 = new Klub("Dinamo", t1, true, listaIgraca1);
       Klub klub2 = new Klub("Hajduk", t2, true, listaIgraca2); 
       
       ArrayList<Integer> golovi = new ArrayList<>();
       golovi.add(0);
       golovi.add(0);
       
       ArrayList<Klub> klubovi = new ArrayList<>();
       klubovi.add(klub1);
       klubovi.add(klub2);
       
       Utakmica u1 = new Utakmica(klubovi,golovi);
       
       u1.dodajZgoditak(klub1, "i1");
       u1.dodajZgoditak(klub1, "i2");
       u1.dodajZgoditak(klub2, "i1");
       
       u1.ispisiRezultat();
       
       
       
       
        
        
    }
    
}
