
package nasljedjivanje;


public class Osoba {
    protected String ime;
    protected String prezime;
    protected int oib;
    
    public Osoba(String ime, String prezime, int oib) {
        this.ime = ime;
        this.prezime = prezime;
        this.oib = oib;
    }
    
    public Osoba() {
        System.out.println("Pozivam defaultni konstruktor klase Osoba");
    }
    
    protected String getIme() {
        return ime;
    }
    
    protected String getPrezime() {
        return prezime;
    }
    
    private int getOib() {
        return oib;
    }
    
    
}
