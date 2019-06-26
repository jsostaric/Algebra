package modeli;

public class Film {
    private int id;
    private String ime;
    private int trajanje;
    private String glavniGlumac;

    public Film(int id, String ime, int trajanje, String glavniGlumac) {
        this.id = id;
        this.ime = ime;
        this.trajanje = trajanje;
        this.glavniGlumac = glavniGlumac;
    }

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

    public int getTrajanje() {
        return trajanje;
    }

    public void setTrajanje(int trajanje) {
        this.trajanje = trajanje;
    }

    public String getGlavniGlumac() {
        return glavniGlumac;
    }

    public void setGlavniGlumac(String glavniGlumac) {
        this.glavniGlumac = glavniGlumac;
    }
    
    
    
}
