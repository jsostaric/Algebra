package modeli;

public class Student {
   private String ime;
    String prezime;
    int godina;
    String jmbag;

    public Student(String ime, String prezime, int godina, String jmbag) {
        this.ime = ime;
        this.prezime = prezime;
        this.godina = godina;
        this.jmbag = jmbag;
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

    public String getJmbag() {
        return jmbag;
    }

    public void setJmbag(String jmbag) {
        this.jmbag = jmbag;
    }
    
    
}
