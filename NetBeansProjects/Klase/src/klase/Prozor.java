
package klase;


public class Prozor {
    private String naslov;
    private String oznaka;
    private Kordinate kordinate;
    private Boja boja;
    private boolean status;
    
    public Prozor() {
        naslov = "Prozor";
        oznaka = "";
        kordinate = new Kordinate(0,80,0,25);
        boja = new Boja(0,0,0);
        status = false;        
    }
    
    public Prozor(String naslov, Kordinate kordinate, Boja boja) {
        this.naslov = naslov;
        this.oznaka = "";
        this.kordinate = kordinate;
        this.boja = boja;
        this. status = false;
    }
    
    public Prozor(String naslov,String oznaka, Kordinate kordinate, Boja boja, boolean status) {
       this.naslov = naslov;
       this.oznaka = oznaka;
       this.kordinate = kordinate;
       this.boja = boja;
       this.status = status;
    }
    
    public void getDetails() {
        System.out.println("####### Window Details ########");
        System.out.println("Naslov -> " + naslov);
        System.out.println("Oznaka -> " + oznaka);
        System.out.println("Kordinate:");
        System.out.println("\tx1: " + kordinate.getX1());
        System.out.println("\tx2: " + kordinate.getX2());
        System.out.println("\ty1: " + kordinate.getY1());
        System.out.println("\ty2: " + kordinate.getY2());
        System.out.println("Boja:");
        System.out.println("\tRed: " + boja.getR());
        System.out.println("\tGreen: " + boja.getG());
        System.out.println("\tBlue: " + boja.getB());
        System.out.println("################################");        
    }

    public String getNaslov() {
        return naslov;
    }

    public void setNaslov(String naslov) {
        this.naslov = naslov;
    }

    public String getOznaka() {
        return oznaka;
    }

    public void setOznaka(String oznaka) {
        this.oznaka = oznaka;
    }

    public Kordinate getKordinate() {
        return kordinate;
    }

    public void setKordinate(Kordinate kordinate) {
        this.kordinate = kordinate;
    }

    public Boja getBoja() {
        return boja;
    }

    public void setBoja(Boja boja) {
        this.boja = boja;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
  
    public int getWidth() {
        return kordinate.getX2() - kordinate.getX1();
    }
    
    public int getHeigth() {
        return kordinate.getY2() - kordinate.getY1();
    }
    
   public int getArea() {
       return getWidth() * getHeigth();
   }
    
   public int getPerimeter() {
       return 2 * (getWidth() + getHeigth());
   }
   
   public void getDraw() {
       
       char c = '*';
       for(int i = 0; i < getWidth(); i++) {
          
            for(int j = 0; j<getHeigth(); j++) {
                if(i % getWidth() == 0 || j % getHeigth() == 0 || i == getWidth()-1)
                    System.out.print(c);
            }
            
            System.out.println();
        }
   }
  
    
    
    
    
}
