package modeli;

public class Proizvod {
    
    private int id;
    private String ime;
    private int kolicina;
    private float cijena;
    private int kategorija;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public int getKolicina() {
        return kolicina;
    }

    public void setKolicina(int kolicina) {
        this.kolicina = kolicina;
    }

    public float getCijena() {
        return cijena;
    }

    public void setCijena(float cijena) {
        this.cijena = cijena;
    }

    public int getKategorija() {
        return kategorija;
    }

    public void setKategorija(int kategorija) {
        this.kategorija = kategorija;
    }

    public Proizvod(int id, String ime, int kolicina, float cijena, int kategorija) {
        this.id = id;
        this.ime = ime;
        this.kolicina = kolicina;
        this.cijena = cijena;
        this.kategorija = kategorija;
    }
    
    
}
