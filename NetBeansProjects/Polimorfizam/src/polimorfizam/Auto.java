package polimorfizam;

public class Auto {

    private String marka, model;
    private double ubrzanje;
    
    public Auto(String marka, String model, double ubrzanje) {
        this.marka= marka;
        this.model = model;
        this.ubrzanje = ubrzanje;
    }

    public String getMarka() {
        return marka;
    }

    public void setMarka(String marka) {
        this.marka = marka;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public double getUbrzanje() {
        return ubrzanje;
    }

    public void setUbrzanje(double ubrzanje) {
        this.ubrzanje = ubrzanje;
    }
    
    public void vozi() {
        System.out.println("Auto vozi...");                
    }
    
    public void stani() {
        System.out.println("Auto se zaustavio...");
    }
        
}
