
package polja;

import java.text.DecimalFormat;
import java.util.*;

public class Polja {

    public static void main(String[] args) {
        /*
        int polje[] = new int[100];
        int broj = 45;
        
        //unos vrijednosti u polja
        for(int i = 0; i<100; i++) {
            polje[i] = i+1;
        }
        
        //prolazak kroz polja i traženja polja sa vrijednosti varijable 'broj'
        for(int i = 0; i <=100-1; i++) {
            if(broj == polje[i]) {
                System.out.println("traženi broj vrijednosti " + broj + " se nalazi na polju " + i);
            }
        }       
        
        
        String[] polje = {"Milica", "Gojko", "Rastislav", "Milivoj", "Laars"};
        
        for(String ime : polje) {
            System.out.println(ime);
        }
        
        Arrays.sort(polje);
        System.out.println("\nSortirano\n");
        for(String ime : polje) {
            System.out.println(ime);
        }
        
        Arrays.fill(polje, "Donald");
        System.out.println("\nNastelano\n");
        for(int i = 0; i < polje.length; i++) {
            System.out.println(polje[i]);
        }
        
        
        int p[] = new int[5];
        
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Unesi prvi broj:");
        p[0] = scanner.nextInt();
        System.out.println("Unesi drugi broj:");
        p[1] = scanner.nextInt();
        System.out.println("Unesi treći broj:");
        p[2] = scanner.nextInt();
        System.out.println("Unesi četvrti broj:");
        p[3] = scanner.nextInt();
        System.out.println("Unesi peti broj:");
        p[4] = scanner.nextInt();
        
        System.out.println("\n");
        Arrays.sort(p);
        for(int broj : p) {
            System.out.println(broj);
        }
        
        
        
        int polje[] = new int[5];
        for(int i = 0; i < polje.length; i++) {
            polje[i] = (int) (Math.random() * 5) + 1;
        }
        
        for(int broj : polje) {
            System.out.println(broj + " ");
        }
        
        
        int arr[][] = new int[5][5];
        
        for(int i = 0; i < 5; i++) {
            for(int j = 0; j < 5; j++) {
                arr[i][j] = (int) (Math.random() * 5) + 1;
            }
        }
        
        
        int suma  = 0;        
        
        for(int i = 0; i<5;i++) {
            for(int j = 0; j<5;j++) {
                System.out.print(arr[i][j] + "\t");
                
                if(i == j) {
                    suma += arr[i][j];
                }
            }
            System.out.println();
            
            
        }
        
        System.out.println(suma);
        
        //polje koristimo za spremanje podataka o mjerenjima temperature za svakih od 7 dana u tjednu
        // broj mjerenja nije isti za svaki dan u tjednu
        
       double[][] mjerenjaTemperatureUTjednu = new double[7][];
       
       //ponedjeljak - ima 5 mjerenja
       mjerenjaTemperatureUTjednu[0] = new double[5];
       
       //utorak - ima 8 mjerenja
       mjerenjaTemperatureUTjednu[1] = new double[8];
       
       //srijeda - ima 4 mjerenja
       mjerenjaTemperatureUTjednu[2] = new double[4];
       
       //četvrtak - ima dva mjerenja
       mjerenjaTemperatureUTjednu[3] = new double[2];
       
       //petak - ima 6 mjerenja
       mjerenjaTemperatureUTjednu[4] = new double[6];       
       
       //subota - ima 3 mjerenja
       mjerenjaTemperatureUTjednu[5] = new double[3];
       
       //nedjelja - ima 2 mjerenja
       mjerenjaTemperatureUTjednu[6] = new double[2];
               
        DecimalFormat twoDForm = new DecimalFormat("#.##");
        
        //koristeći metodu za kreiranje slučajnih brojeca napunimo polje slučajnim vrijednostima u opsegu -30 .....30
        for(int i = 0; i<mjerenjaTemperatureUTjednu.length; i++) {
            for(int j = 0; j< mjerenjaTemperatureUTjednu[i].length; j++) {
                mjerenjaTemperatureUTjednu[i][j] = (Math.random() * 60) +1;
            }
        }
        
        //ispis mjerenja temperature
        for(int i = 0; i < mjerenjaTemperatureUTjednu.length; i++) {
            System.out.println("---------------");
            System.out.println((i+1)+". dan:");
            System.out.println("---------------");
            
            for(int j=0; j<mjerenjaTemperatureUTjednu[i].length; j++) {
                System.out.println((j+1) + ". mjerenje "+
                twoDForm.format(mjerenjaTemperatureUTjednu[i][j])+ " stupnjeva Celzijusa");
            }
        }
       

        //ArrayList
        ArrayList<Integer> ocjene = new ArrayList<>();
        
        int broj_predmeta;
        
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Unesite broj predmeta:");
        broj_predmeta = scanner.nextInt();
        
        int o = 0;
        
        for(int i = 0; i < broj_predmeta; i++) {
            
            do{
                System.out.println("unesite ocjenu za "+ (i+1) +". predmet:");
                o = scanner.nextInt();
                
            }while(o < 0 || o >5 );
            ocjene.add(o);
        }
        
        int negativna = 0;
        double rezultat;
        double suma = 0;
        
        for(int i = 0; i < ocjene.size(); i++) {
            if(ocjene.get(i).intValue() == 1) {
                negativna = 1;
            }
            suma += ocjene.get(i).doubleValue();
        }
        if(negativna == 1) {
            System.out.println("učenik je nedovoljan");
        }else{
            rezultat = (double)suma/ocjene.size();
            System.out.println("Prosjek ocjena je " + rezultat);
        }
        
        
        
      //liste u listi
      ArrayList<ArrayList<Integer>> listaListe = new ArrayList<ArrayList<Integer>>();
      int broj = 0;
      
      Scanner s = new Scanner(System.in);
      
      System.out.println("Koliko zelite redova: ");
      broj = s.nextInt();
      
      int brojStupaca;
      
      ArrayList<Integer> tmp;
      
      for(int i = 0; i < broj; i++) {
          brojStupaca = 0;
          System.out.println("Koliko zelite stupaca za red "+i+":");
          brojStupaca = s.nextInt();
          tmp = new ArrayList<>();
          for(int j = 0; j<brojStupaca; j++) {
              System.out.println("unesi " + (j+1)+ ".");
              tmp.add(s.nextInt());
          }
          listaListe.add(tmp);
      }
      
      for(int i = 0; i < listaListe.size(); i++) {
              for(int j = 0; j < listaListe.get(i).size(); j++) {
                  System.out.print(listaListe.get(i).get(j) + "\t");
              }
        System.out.println();
          
      }
        
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
                System.out.println("unesite " + (i+1)+ ". rijec:");
                rijec = s.next();
                
            }
            
            rijeci.add(rijec);           
        }
        
        System.out.println(rijeci);
        */
        
        
        ArrayList<ArrayList<Integer>> listaListe = new ArrayList<ArrayList<Integer>>();
        
        Scanner s = new Scanner(System.in);
        
        ArrayList<Integer> tmp;
        
        
        for(int i = 0; i<10; i++) {
            for(int j = 0; j <11; j++) {
                tmp = new ArrayList();
                listaListe.add(tmp);                
            }            
        }
        
        int o = 0;
        for(int i=0;i<30;i++){
            System.out.println("unesite " + (i+1)+ ". ocjenu");
            o = s.nextInt();
            ArrayList tmp2 = listaListe.get(o);
            if(!tmp2.isEmpty()) {
                int statistika = listaListe.get(o).get(0);
                statistika += 1;
                listaListe.get(o).set(0, statistika);
            }else{
                listaListe.get(o).add(1);
            }
        }
        
        System.out.println(listaListe);
        
        
        
    } //end of main...
    
}
