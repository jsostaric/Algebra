package guizadatak;

import javax.swing.JFrame;

public class GUIZadatak {

    public static void main(String[] args) {
       
        Prozor prozor = new Prozor("Kalkulator");
        
        prozor.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        prozor.setSize(800,400);
        prozor.setLocation(400,200);
        prozor.setVisible(true);
        
    }
    
}
