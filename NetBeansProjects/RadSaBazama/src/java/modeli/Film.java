
package modeli;


public class Film {
    int id;
    String ime;
    int trajanje;
    String glavniGlumci;

    public Film(int id, String ime, int trajanje, String glavniGlumci) {
        this.id = id;
        this.ime = ime;
        this.trajanje = trajanje;
        this.glavniGlumci = glavniGlumci;
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

    public String getGlavniGlumci() {
        return glavniGlumci;
    }

    public void setGlavniGlumci(String glavniGlumci) {
        this.glavniGlumci = glavniGlumci;
    }
    
    
}
