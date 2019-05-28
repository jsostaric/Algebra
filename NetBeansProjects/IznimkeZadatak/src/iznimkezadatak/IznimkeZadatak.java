package iznimkezadatak;

import java.util.ArrayList;
import java.util.Scanner;

public class IznimkeZadatak {

    public static void main(String[] args) {
       
        Scanner sc = new Scanner(System.in);
        ArrayList<Student> listaStudenata = new ArrayList<>();
        
        int izbornik = 0;
        
        Scanner sc1 = new Scanner(System.in);
        
        do{
            System.out.println("Izaberi broj:");
            System.out.println("1. Unos Studenta");
            System.out.println("2. kraj");
            System.out.println("---------------------");
            
            izbornik = sc.nextInt();
            
            
            if(izbornik == 1) {
               Student student = new Student();
                System.out.println("unesite ime studenta:");
                String ime = sc1.nextLine();
                student.setIme(ime);
                
                System.out.println("Unesite prezime studenta: ");
                String prezime = sc1.nextLine();
                student.setPrezime(prezime);
                boolean flag = false;
                try{
                    System.out.println("Unesite godinu studiranja: ");
                    int godina = sc1.nextInt();
                    
                    if(godina <1 || godina > 5) {
                        throw new MojaIznimka("godina nije u intervalu");
                      
                    } 
                    //provjeriGodinu(godina);
                    if(!flag)
                        student.setGodina(godina);
                    
                    System.out.println("Unesite prosjek ocjena: ");
                    double prosjek = sc1.nextDouble();  
                     if(prosjek <1 || prosjek > 5) {
                         try{
                            throw new MojaIznimka("prosjek nije u intervalu");
                            
                         }catch(MojaIznimka ex) {
                             ex.printStackTrace();
                         }
                    }
                    //provjeriProsjek(prosjek);
                    student.setProsjek(prosjek);
                }catch(MojaIznimka e) {
                    System.out.println(e.getMessage());
                    
                }
                
                listaStudenata.add(student);
            }
            
            
        }while(izbornik < 2);
        
        for(int i = 0; i<listaStudenata.size();i++) {
            System.out.println(listaStudenata.get(i).toString());
        }
        
    } //end of main...
    
    public static void provjeriGodinu(int godina) throws MojaIznimka{
        if(godina < 1 || godina >5) {
            throw new MojaIznimka("godina mora biti od 1 do 4. uneseno: " + godina);
        }        
    }
    
    public static void provjeriProsjek(double prosjek) throws MojaIznimka{
        if(prosjek < 1 || prosjek >5) {
            throw new MojaIznimka("Prosjek ne može biti manji od 1 ili veći od 5");
        }
    }
    
    
    
}
