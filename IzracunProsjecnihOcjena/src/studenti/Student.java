
package studenti;

import java.util.ArrayList;


public class Student {
    
    private static String ustanova;
    private int godina;
    private ArrayList<String> listaKolegija;
    private ArrayList<Integer> ocjeneKolegija;
    
    private String ime;
    private String prezime;
    private int maticniBroj;

    public Student(String ustanova, int godina, ArrayList<String> listaKolegija, ArrayList<Integer> ocjeneKolegija, String ime, String prezime, int maticniBroj) {
        this.ustanova = ustanova;
        this.godina = godina;
        this.listaKolegija = listaKolegija;
        this.ocjeneKolegija = ocjeneKolegija;
        this.ime = ime;
        this.prezime = prezime;
        this.maticniBroj = maticniBroj;
    }

    public static String getUstanova() {
        return ustanova;
    }

    public static void setUstanova(String ustanova) {
        Student.ustanova = ustanova;
    }

    public int getGodina() {
        return godina;
    }

    public void setGodina(int godina) {
        this.godina = godina;
    }

    public ArrayList<String> getListaKolegija() {
        return listaKolegija;
    }

    public void setListaKolegija(ArrayList<String> listaKolegija) {
        this.listaKolegija = listaKolegija;
    }

    public ArrayList<Integer> getOcjeneKolegija() {
        return ocjeneKolegija;
    }

    public void setOcjeneKolegija(ArrayList<Integer> ocjeneKolegija) {
        this.ocjeneKolegija = ocjeneKolegija;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public int getMaticniBroj() {
        return maticniBroj;
    }

    public void setMaticniBroj(int maticniBroj) {
        this.maticniBroj = maticniBroj;
    }

    @Override
    public String toString() {
        return "Student{" + "godina=" + godina + ", listaKolegija=" + listaKolegija + ", ocjeneKolegija=" + ocjeneKolegija + ", ime=" + ime + ", prezime=" + prezime + ", maticniBroj=" + maticniBroj + '}';
    }
        
    
    
    
}
