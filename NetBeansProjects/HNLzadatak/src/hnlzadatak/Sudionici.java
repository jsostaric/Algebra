
package hnlzadatak;


public class Sudionici {
    private String ime;
    private String prezime;
    private String funkcija;

    public Sudionici(String ime, String prezime, String funkcija) {
        this.ime = ime;
        this.prezime = prezime;
        this.funkcija = funkcija;
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

    public String getFunkcija() {
        return funkcija;
    }

    public void setFunkcija(String funkcija) {
        this.funkcija = funkcija;
    }
    
    
    
}
