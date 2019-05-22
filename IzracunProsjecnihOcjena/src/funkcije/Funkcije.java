package funkcije;

import java.util.ArrayList;
import studenti.Student;

public class Funkcije {

    public static void izracunajProsjek(ArrayList<Student> listaStudenata) {

        for (int i = 0; i < listaStudenata.size(); i++) {

            int suma = 0;
            int brojac = 0;
            double prosjek = 0.0;

            for (int j = 0; j < listaStudenata.get(i).getOcjeneKolegija().size(); j++) {
                suma += listaStudenata.get(i).getOcjeneKolegija().get(j);
            }

            prosjek = (double) suma / (double) listaStudenata.get(i).getOcjeneKolegija().size();
            System.out.println(listaStudenata.get(i).getIme() + " "
                    + listaStudenata.get(i).getPrezime() + " ("
                    + listaStudenata.get(i).getMaticniBroj() + ")ima prosjek: " + prosjek);
        }
    }

    public static void izracunajProsjekKolegija(String[] kolegij,ArrayList<Student> listaStudenata) {

        ArrayList<String> listaKolegija = new ArrayList<>();
        
        ArrayList<Integer> sumaOcjena = new ArrayList<>();
        for(int i = 0; i < kolegij.length; i++) {
            listaKolegija.add(kolegij[i]);            
            sumaOcjena.add(0);
        }
        
        for(int i=0;i<listaStudenata.size(); i++) {
            ArrayList<String> lk = listaStudenata.get(i).getListaKolegija();
            ArrayList<Integer> lo = listaStudenata.get(i).getOcjeneKolegija();
            
            for(int j=0;j<lk.size(); j++) {
                int trenutno_stanje = sumaOcjena.get(j);
                trenutno_stanje += lo.get(j);
                sumaOcjena.set(j,trenutno_stanje);
            }
        }
        
        for(int i=0;i<listaKolegija.size(); i++) {            
                System.out.println("prosjek ocjena za kolegij " + listaKolegija.get(i) + " je: " + (double)sumaOcjena.get(i)/(double)listaStudenata.size());            
        }        
    }
}
