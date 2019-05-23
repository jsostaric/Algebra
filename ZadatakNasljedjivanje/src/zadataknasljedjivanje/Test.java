
package zadataknasljedjivanje;


public class Test extends Automobil {
    
    private double potrosioGoriva;
    private double prijedjenPut;

    public Test(double postrosioGoriva, double prijedjenPut) {
        this.potrosioGoriva = postrosioGoriva;
        this.prijedjenPut = prijedjenPut;
    }
    
    public Test() {
    }

    public double getPotrosioGoriva() {
        return potrosioGoriva;
    }

    public void setPotrosioGoriva(double potrosioGoriva) {
        this.potrosioGoriva = potrosioGoriva;
    }

    public double getPrijedjenPut() {
        return prijedjenPut;
    }

    public void setPrijedjenPut(double prijedjenPut) {
        this.prijedjenPut = prijedjenPut;
    }
    
    
    
}
