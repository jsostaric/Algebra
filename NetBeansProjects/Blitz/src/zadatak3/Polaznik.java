
package zadatak3;


public class Polaznik {
    
    private int dob;
    private String ime;
    private String prezime;
    
    public Polaznik(String ime, String prezime, int dob) {
        this.ime = ime;
        this.prezime = prezime;
        this.dob = dob;
    }
    
    public Polaznik(String ime, String prezime) {
        
    }
     public Polaznik (String ime) {
         
     }
     public Polaznik(int godina) {
         
     }

    public int getDob() {
        return dob;
    }

    public void setDob(int dob) {
        this.dob = dob;
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
}
