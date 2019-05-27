/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blitz.zadatak2;


public class Iscrtaj {
    
    int x;
    int y;    
    
    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }
    
    
    
    public void iscrtaj(int x, int y) {
        for(int i =0; i<=x;i++) {
            for(int j = 0; j<=y; j++) {
                
               if(i%2 != 0) {
                   System.out.print("o");
               }else {
                System.out.print("*");
                   
               }          
            }
            System.out.println();
        }
    }
}
