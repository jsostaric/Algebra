package kolekcije;

import java.util.ArrayList;
import java.util.List;

public class Korisnik implements Comparable {
    private String ime,prezime;
    private int id;

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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Korisnik{" + "ime=" + ime + ", prezime=" + prezime + ", id=" + id + '}';
    }
    
    @Override
    public int compareTo(Object o) {
        Korisnik k = (Korisnik) o;
        if(id == k.getId() ) {
            return 0;
        }else if(id > k.getId()){
            return 1;
        }else {
            return -1;
        }
    }
    
    public static List<Korisnik> dohvatiKorisnike() {
        List<Korisnik> korisnici = new ArrayList<>();
        
        Korisnik k2 = new Korisnik();
        k2.setId(2);
        k2.setIme("Ivo");
        k2.setPrezime("Juric");
        korisnici.add(k2);
        Korisnik k1 = new Korisnik();
        k1.setId(1);
        k1.setIme("Miro");
        k1.setPrezime("Mirić");
        korisnici.add(k1);
        Korisnik k3 = new Korisnik();
        k3.setId(3);
        k3.setIme("Miro");
        k3.setPrezime("Juric");
        korisnici.add(k3);
     
        return korisnici;
    }
}
