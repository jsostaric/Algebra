
package abstraktneKlase;


public abstract class Zivotinja {
    private String ime;
    
    public abstract void glasaj();
    
    public String dohvatiIme() {
        return ime;
    }
    
    public void postaviIme(String imeZivotinje) {
        ime = imeZivotinje;
    }
}
