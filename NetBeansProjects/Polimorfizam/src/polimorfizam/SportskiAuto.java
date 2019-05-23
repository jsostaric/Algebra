package polimorfizam;

public class SportskiAuto extends Auto{
    private boolean imaPomicniKrov;
    
    public boolean isImaPomicniKrov() {
        return imaPomicniKrov;
    }
    
    public void setImaPomicniKrov(boolean pomicniKrov) {
        this.imaPomicniKrov = imaPomicniKrov;
    }
    
    public SportskiAuto(boolean imaPomicniKrov, double ubrzanje, String marka, String model) {
        super(marka, model, ubrzanje);
        this.imaPomicniKrov = imaPomicniKrov;
    }
    
    @Override
    public void vozi() {
        System.out.println("Sportski auto juri");
    }
    
    @Override
    public void stani() {
        System.out.println("Sportski auto se zaustavlja");
    }
}
