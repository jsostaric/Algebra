package modeli;

public class KupljeniProizvodi {
       
    private String ime;
    private int kol;
    private float cijena;
    private String nacinpl;
    private String vrijeme;

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public int getKol() {
        return kol;
    }

    public void setKol(int kol) {
        this.kol = kol;
    }

    public float getCijena() {
        return cijena;
    }

    public void setCijena(float cijena) {
        this.cijena = cijena;
    }

    public String getNacinpl() {
        return nacinpl;
    }

    public void setNacinpl(String nacinpl) {
        this.nacinpl = nacinpl;
    }

    public String getVrijeme() {
        return vrijeme;
    }

    public void setVrijeme(String vrijeme) {
        this.vrijeme = vrijeme;
    }

    public KupljeniProizvodi(String ime, int kol, float cijena, String nacinpl, String vrijeme) {
        this.ime = ime;
        this.kol = kol;
        this.cijena = cijena;
        this.nacinpl = nacinpl;
        this.vrijeme = vrijeme;
    }
    
    
}
