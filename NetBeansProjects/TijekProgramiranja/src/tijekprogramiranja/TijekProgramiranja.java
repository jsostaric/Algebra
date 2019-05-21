package tijekprogramiranja;

import java.lang.Math;

public class TijekProgramiranja {

    public static void main(String[] args) {
        /*    
       char slovo = 'c';
       int a = 5;
       int b = 3;
       int c;
       
       //uvjetni operator
       c = a < b ? a : b;
       
       System.out.println(c);
       
       
        switch (slovo) {
            case 'a':
                System.out.println("Ispisuje slovo \"A\"");
                break;
            case 'b':
                System.out.println("Ispisuje slovo \"B\"");
                break;
            case 'c':
                System.out.println("Ispisuje slovo \"C\"");
                break;            
            default:
                System.out.println("Nije među prvima tri slovima abecede");
                break;
        }     
        */
        
        System.out.println("Prvi zadatak");
        int mjesec = 13;
        
        switch(mjesec) {
            default:
                System.out.println("neispravan unos");
                break;
            case 1:
                System.out.println("Siječanj");
                break;
            case 2:
                System.out.println("Veljača");
                break;
            case 3:
                System.out.println("Ožujak");
                break;
            case 4:
                System.out.println("Travanj");
                break;
            case 5:
                System.out.println("Svibanj");
                break;
            case 6:
                System.out.println("Lipanj");
                break;
            case 7:
                System.out.println("Srpanj");
                break;
            case 8:
                System.out.println("Kolovoz");
                break;
            case 9:
                System.out.println("Rujan");
                break;
            case 10:
                System.out.println("Listopad");
                break;
            case 11:
                System.out.println("Studeni");
                break;
            case 12:
                System.out.println("Prosinac");
                break;
        }
        
        //drugi zadatak
        System.out.println();
        System.out.println("Drugi zadatak");
        
        String ime = "Jurica";
        String prezime = "Šoštarić";
        String mjesto = "Osijek";
        
        System.out.println(ime +" " + prezime + "\n" + mjesto);
        
        //treći zadatak
        System.out.println();
        System.out.println("Treći zadatak");
        
        int a = 5;
        int b = 4;
        int c;
        
        c = a + b;
        System.out.println(c);
        
        //četvrti zadatak
        System.out.println();
        System.out.println("Četvrti zadatak");
        
        double apow = 2;
        double bpow = 2;
        double cpow;
        
        if(apow >= 0 && bpow >= 0) {
            System.out.println(cpow = Math.sqrt(Math.pow(apow, 2) + Math.pow(bpow, 2)));
            } else {
            System.out.println("Nije unesen validan broj");
        }
        
        
        //peti zadatak
        System.out.println();
        System.out.println("Peti zadatak");
        
        int djeljiv = 6;
        
        if(djeljiv % 5 == 0) {
            System.out.println("nema ostatka");
        }else{
            System.out.println("ostatak je " + djeljiv % 5);
        }
    }
}
