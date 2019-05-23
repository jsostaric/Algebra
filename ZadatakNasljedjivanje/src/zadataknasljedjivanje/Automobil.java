
package zadataknasljedjivanje;


public class Automobil {
    
    private int spremnik;
    private double potrosnja;
    private String vrstaGoriva;
    private String tip;
    private String marka;
    
    public Automobil() {
        this.spremnik = 60;
        this.potrosnja = 6.0;
        this.vrstaGoriva = "benzin";
        this.tip = "Auto";
        this.marka = "Ford";
    }

    public int getSpremnik() {
        return spremnik;
    }

    public void setSpremnik(int spremnik) {
        this.spremnik = spremnik;
    }

    public double getPotrosnja() {
        return potrosnja;
    }

    public void setPotrosnja(double potrosnja) {
        this.potrosnja = potrosnja;
    }

    public String getVrstaGoriva() {
        return vrstaGoriva;
    }

    public void setVrstaGoriva(String vrstaGoriva) {
        this.vrstaGoriva = vrstaGoriva;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public String getMarka() {
        return marka;
    }

    public void setMarka(String marka) {
        this.marka = marka;
    }
    
    
    
    
    
}
