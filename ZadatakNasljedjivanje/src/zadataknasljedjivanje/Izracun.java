/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zadataknasljedjivanje;

/**
 *
 * @author programer10
 */
public class Izracun {

    public static void usporedi(Test objekt1, Test objekt2) {
        double a1_potrosio = objekt1.getPotrosioGoriva();
        double a1_presao = objekt1.getPrijedjenPut();

        double a2_potrosio = objekt2.getPotrosioGoriva();
        double a2_presao = objekt2.getPrijedjenPut();

        double a1_km_l = a1_presao / a1_potrosio;
        double a1_l_naSto = 100.00 / a1_km_l;

        double a2_km_l = a2_presao / a2_potrosio;
        double a2_l_naSto = 100.00 / a2_km_l;

        System.out.println("Prosjecna potrosnja za a1: " + a1_l_naSto + "   prosjecna potrosnja za a2: " + a2_l_naSto);

        if (a1_l_naSto < objekt1.getPotrosnja()) {
            System.out.println("Automobil 1 trosi manje od deklarirane potrosnje!");
        } else {
            System.out.println("Automobil 1 trosi vise od deklarirane potrosnje!");
        }

        if (a2_l_naSto < objekt2.getPotrosnja()) {
            System.out.println("Automobil 2 trosi manje od deklarirane potrosnje!");
        } else {
            System.out.println("Automobil 2 trosi vise od deklarirane potrosnje!");
        }

        if (a1_l_naSto < a2_l_naSto) {
            System.out.println("Automobil 1 je stedljiviji");
        } else {
            System.out.println("Automobil 2 je stedljiviji");
        }
    }
}
