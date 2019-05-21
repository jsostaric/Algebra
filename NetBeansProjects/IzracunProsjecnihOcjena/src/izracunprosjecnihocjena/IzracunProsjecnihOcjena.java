
package izracunprosjecnihocjena;

import java.util.ArrayList;
import java.util.Scanner;
import studenti.Student;


public class IzracunProsjecnihOcjena {
    
    public static void main(String[] args) {
        
        /*
        Student:
            - ustanova(ista za sve studente)
            - godina
            - lista kolegija (5)
            - ocjene kolegija
        
        - ukupan broj studenata (potreban unos)
        - za sve studente unijeti podatke
        - izračunati i ispisati prosjek ocjena
            -prosjek ocjena za studente
            - prosjek ocjena po kolegiju te za sve studente
        - Funkcije za izračuna moraju biti smještene u odvojenoj klasi i drugom paketu. mora im se moći pristupiti samo preko naziva klase
        - unos podataka i ispis rezultata radi se u klasi test koja se također nalčazi u drugom paketu.
        
        TRI PAKETA:
        
        KLASE:
        P1 - Student
        P2 - Funkcije
        P3 - Main
        */
        
        Scanner s = new Scanner(System.in);
        ArrayList<Student> listaStudenata = new ArrayList<>();
        
        int brojStudenata = 0;
        
        System.out.println("Koliko želite unijeti studenata?");
        brojStudenata = s.nextInt();
        
        String[] kolegij = {"Matematika", "Fizika", "Kemija", "Biologija", "Vjeronauk"};
        
        String ustanova;
        int godina;
        ArrayList<String> listaKolegija;
        ArrayList<Integer> listaOcjena;
        
        String ime;
        String prezime;
        int maticniBroj;        
        
        Student student;
        
        Scanner s2 = new Scanner(System.in);
        
        System.out.println("Unesite Ustanovu: ");
        ustanova = s.nextLine();
        s.next();
        
        Scanner s3;
        
        for(int i = 0; i < brojStudenata; i++) {
            listaKolegija = new ArrayList<>();
            listaOcjena =  new ArrayList<>();
            
            System.out.println("Unesite godinu za studenta " + (i+1));
            godina = s2.nextInt();
            
            for(int j = 0; j < kolegij.length; j++) {
                System.out.println("Unesite ocjenu za kolegij " + kolegij[j] + " (student " + (i+1)+")");
                listaOcjena.add(s2.nextInt());
                listaKolegija.add(kolegij[i]);
            }
            s3 = new Scanner(System.in);
            
            System.out.println("Unesite ime studenta "+ (i+1)+": ");
            ime = s3.nextLine();
            
            System.out.println("Unesite prezime studenta " + (i+1)+": ");
            prezime = s3.nextLine();
            
            System.out.println("Unesite matični broj studenta " +  (i+1)+": ");
            maticniBroj = s3.nextInt();
            
            student = new Student(ustanova, godina, listaKolegija, listaOcjena, ime, prezime, maticniBroj);
            listaStudenata.add(student);
        }
        
        for(int i= 0; i <listaStudenata.size(); i++) {
            System.out.println(listaStudenata.get(i).toString());
        }
        
        
        
        
    } // end of main...
    
}
