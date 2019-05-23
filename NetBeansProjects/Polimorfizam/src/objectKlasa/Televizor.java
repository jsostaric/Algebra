/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objectKlasa;

/**
 *
 * @author programer10
 */
public class Televizor {
    
    private String boja;
    private int velicinaDijagonale;

    public Televizor(String boja, int velicinaDijagonale) {
        this.boja = boja;
        this.velicinaDijagonale = velicinaDijagonale;
    }
    
    @Override
    public String toString() {
        //retutrn super.toString();
        return "Imate " + boja.toLowerCase() + " televizor, dijagonale incha: " + velicinaDijagonale;
    }
    
}
