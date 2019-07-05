package modeli;

public class ProizvodUKosarici {
    
   private int id;
   private int kol;

    public ProizvodUKosarici(int id, int kol) {
        this.id = id;
        this.kol = kol;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getKol() {
        return kol;
    }

    public void setKol(int kolicina) {
        this.kol = kol;
    }
    
    
    
    
}
