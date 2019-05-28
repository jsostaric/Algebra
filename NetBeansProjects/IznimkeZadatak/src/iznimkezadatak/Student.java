package iznimkezadatak;

public class Student {
    private String ime;
    private String prezime;
    private int godina;
    private double prosjek;
    
    public Student() {
        this.ime = ime;
        this.prezime = prezime;
        this.godina = godina;
        this.prosjek = prosjek;
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

    public int getGodina() {
        return godina;
    }

    public void setGodina(int godina) {
        this.godina = godina;
    }

    public double getProsjek() {
        return prosjek;
    }

    public void setProsjek(double prosjek) {
        this.prosjek = prosjek;
    }

    @Override
    public String toString() {
        return "Student{" + "ime=" + ime + ", prezime=" + prezime + ", godina=" + godina + ", prosjek=" + prosjek + '}';
    }
    
    
}
