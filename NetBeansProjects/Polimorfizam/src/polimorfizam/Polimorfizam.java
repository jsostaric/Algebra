
package polimorfizam;

import abstraktneKlase.Pas;
import abstraktneKlase.Zivotinja;
import objectKlasa.Televizor;


public class Polimorfizam {


    public static void main(String[] args) {
       /*
        Auto auto = new Auto("Peugeot","407",11.0);
        
        auto.vozi();
        auto.stani();
        
        System.out.println("--------------------------");
        Auto sportskiAuto = new SportskiAuto(true, 3.2,"Nissan", "GTR");
        sportskiAuto.vozi();
        sportskiAuto.stani();
        System.out.println("--------------------------");
        //implicit cast
        Auto auto2 = sportskiAuto;
        auto2.vozi();
        //explicit cast
        if(auto2 instanceof SportskiAuto) {
            ((SportskiAuto)auto2).stani();
        }
        */
      
       Televizor tv = new Televizor("Srebrni", 50);
       System.out.println(tv);
       
       
    }//end of main..
    
}
