
package hnlzadatak;

import java.util.ArrayList;


public class Utakmica {
    private static int idUtakmiceGenerator = 1;
    private int idUtakmice;
    
    private ArrayList<Klub> klubovi;
    private ArrayList<Integer> golovi;
    //private ArrayList<Igrac> strijelci1;
    //private ArrayList<Igrac> strijelci2;
    private ArrayList<ArrayList<Igrac>> strijelci;
    
   public Utakmica(ArrayList<Klub> klubovi, ArrayList<Integer> golovi) {
       this.idUtakmice = idUtakmiceGenerator++;
       this.klubovi = klubovi;
       this.golovi = golovi;
       strijelci = new ArrayList<ArrayList<Igrac>>();
       strijelci.add(new ArrayList<>());
       strijelci.add(new ArrayList<>());
   }
   
   public ArrayList<Klub> dohvatiklubove() {
       return klubovi;
   }
   
   public ArrayList<Integer> golovi() {
       return golovi;
   }
   
   public ArrayList<ArrayList<Igrac>> dohvatiStrijelce() {
       ArrayList<ArrayList<Igrac>> s = new ArrayList<ArrayList<Igrac>>();       
       return s;
   }
   
   public void ispisiRezultat() {
       System.out.println("Rezultat utakmice: ");
       for(int i =0; i <klubovi.size(); i++) {
           System.out.println(klubovi.get(i).getImeKluba());
           System.out.println("\tBroj golova: "+ golovi.get(i));
           System.out.print("\tStrijelci: ");
           for(int j=0;j<strijelci.get(i).size(); j++) {
               System.out.print(strijelci.get(i).get(j).getIme()+ " " + strijelci.get(i).get(j).getPrezime() + ",  " );
           }
           System.out.println();
       }
   }

   public void dodajZgoditak(Klub klub, String strijelac) {
       ArrayList<Igrac> listaIgraca = klub.getListaIgraca();
       int flag=0;
       int indexIgraca =0;
       for(int i=0;i<listaIgraca.size();i++) {
           if(listaIgraca.get(i).getIme().equalsIgnoreCase(strijelac)) {
               flag=1;
               indexIgraca = i;
           }
       }
       if(flag == 0) {
           System.out.println("Igrac ne postoji");
       }else{
           for(int i=0;i<klubovi.size();i++) {
               if(klubovi.get(i).getImeKluba().equalsIgnoreCase(klub.getImeKluba())) {
                   strijelci.get(i).add(klubovi.get(i).getListaIgraca().get(indexIgraca));
                   Integer brojG = golovi.get(i);
                   brojG++;
                   golovi.set(i, brojG);
               }
           }
       }
   }
   
   
   
}
