
package zadatak8;


import java.util.ArrayList;


public class Zadatak8 {


    public static void main(String[] args) {
     
        Funkcije ob = new Funkcije();
        ArrayList<Student> listaStudenata;
        
        ob.unesiUDokument();
        
        
        listaStudenata = ob.ucitajDatoteku();
        
        
      
        for(int i=0;i <listaStudenata.size();i++) {
            System.out.println(listaStudenata.get(i).toString());
        }
       
        
    }//end of main...
    
}
