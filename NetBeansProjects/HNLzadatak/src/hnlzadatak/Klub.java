
package hnlzadatak;

import java.util.ArrayList;


public class Klub {
    
    private static int idKlubaGenerator = 1;
    private int idKluba;
    
    private String imeKluba;
    private Trener trener;
    private boolean status;
    private ArrayList<Igrac> listaIgraca;

    public Klub(String imeKluba, Trener trener, boolean status, ArrayList<Igrac> listaIgraca) {
        this.idKluba = idKlubaGenerator++;
        this.imeKluba = imeKluba;
        this.trener = trener;
        this.status = status;
        this.listaIgraca = listaIgraca;
    }

    public int getIdKluba() {
        return idKluba;
    }   

    public String getImeKluba() {
        return imeKluba;
    }

    public void setImeKluba(String imeKluba) {
        this.imeKluba = imeKluba;
    }

    public Trener getTrener() {
        return trener;
    }

    public void setTrener(Trener trener) {
        this.trener = trener;
    }

    public ArrayList<Igrac> getListaIgraca() {
        return listaIgraca;
    }

    public void setListaIgraca(ArrayList<Igrac> listaIgraca) {
        this.listaIgraca = listaIgraca;
    }
    
    

    
  
    
}
