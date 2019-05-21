
package klase;

import java.awt.Color;


public class Klase {


    public static void main(String[] args) {
        /*
        ispisiHello();
        String s = "pero";
        ispisi(s);
        //primjer overloadanja metode
        int i = 5;
        ispisi(5);
        
        int x = 1;
        int y = 2;
        int z = zbroji(x,y);
        System.out.println(z);
        
        Person person1 = new Person("Jurica", "Šoštarić");
        person1.setAge(35);
        person1.setHairColor("Brown");
        
        
        Person person2 = new Person();          
        person2.setName("Ivan", "Ivanić");
        person2.setAge(25);
        person2.setHairColor("Blue");      
        
        System.out.println("Age: " + person1.getAge());
        System.out.println("Hair Color: " + person1.getHairColor());
        
        System.out.println("*********** Person 2 ***********");
        
        System.out.println(person2.getName());
        System.out.println("Age: " + person2.getAge());
        System.out.println("Hair Color: " + person2.getHairColor());
        
        System.out.println("*********** Person 3 ***********");
        
        Person person3 = new Person("Maja" , "Majić");
        person3.setAge(22);
        person3.setHairColor("Black");
        
        System.out.println("Age: " + person3.getAge() + "\nHair Color: " + person3.getHairColor());
         */
        
  
        Prozor p1 = new Prozor("Prozor1", "Oznaka1", new Kordinate(10,60,10,60), new Boja(255,255,255), true);
        
       System.out.println("Width: " + p1.getWidth() + " Heigth: " + p1.getHeigth());
       System.out.println("Area: " + p1.getArea() + " Perimeter: " + p1.getPerimeter());
       
       Prozor p2 = new Prozor(); // instanciranje deafaultnog konstruktora
       //p2.getDetails();
       
       Prozor p3 = new Prozor("Prozor3", new Kordinate(0,5,0,5), new Boja (25,25,25));
       //p3.getDetails();
       
       p3.getDraw();
        
        
        
      
        
        
        
    } //end of main
    
    private static int zbroji(int x, int y) {
        //return x + y
        int z = x + y;
        return z;
    }
    
    private static void ispisi(int i) {
        System.out.println(i);
    }
    
    private static void ispisiHello() {
        System.out.println("Hello");
    }
    
    private static void ispisi(String s) {
        System.out.println(s);
    }
    
}
