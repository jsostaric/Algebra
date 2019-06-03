package gui;

import javax.swing.JFrame;

public class GUI {

    public static void main(String[] args) {
        
        Prozor prozor = new Prozor("Primjer");
        
        //podesiti zatvaranje prozora
        prozor.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        //podesi veličinu prozora
        prozor.setSize(600, 400);
        
        //podesi poziciju
        prozor.setLocation(200,200);
        
        //prikaži prozor
        prozor.setVisible(true);
    }
    
}
