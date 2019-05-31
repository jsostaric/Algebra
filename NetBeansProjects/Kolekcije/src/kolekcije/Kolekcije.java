package kolekcije;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class Kolekcije {

    public static void main(String[] args) {
        
        Set<Integer> set = new HashSet();
        //Set<Integer> set = new TreeSet();
        set.add(1);
        set.add(500);
        set.add(10);
        set.add(2);
        set.add(400);
        set.add(400);
        //set.clear();
        System.out.println(set);
        System.out.println(set.isEmpty());
        System.out.println(set.size());
        System.out.println(set.remove(400));
        Iterator<Integer> iterator = set.iterator();
        while(iterator.hasNext()) {
            System.out.println(iterator.next());
        }
        Set<Integer> set2 = new HashSet();
        set2.add(1);
        set2.add(2);
        set2.add(3);
        //unija
        //set.addAll(set2);
        //razlika
        //set.removeAll(set2);
        //presjek
        //set.retainAll(set2);
        System.out.println(set.retainAll(set2));
        System.out.println(set);
        
        Map<String, String> gradovi = new HashMap<>();
        gradovi.put("ZG", "Zagreb");
        gradovi.put("RI", "Rijeka");
        gradovi.put("SK", "Sisak");
        gradovi.put("ZG", "Zagreb"); // neće biti dodan
        System.out.println(gradovi);
        System.out.println(gradovi.get("SK"));
        System.out.println(gradovi.containsKey("RI"));
        System.out.println(gradovi.containsValue("Zagreb"));
        
       ArrayList<Integer> lista = new ArrayList<>();
       
       lista.add(5);
       lista.add(23);
       lista.add(3);
       lista.add(62);
       lista.add(12312);
       lista.add(1);
       lista.add(1);
        
       System.out.println(lista);
       
       Collections.sort(lista);       
       System.out.println(lista);
       
       Collections.reverse(lista);
       System.out.println(lista);
       
       Collections.shuffle(lista);
       System.out.println(lista);
       
       Collections.replaceAll(lista, 1, 111);
       System.out.println(lista);
       
       //Sučelje Comparable
       List<Korisnik> korisnici = Korisnik.dohvatiKorisnike();
       
       for(Korisnik korisnik : korisnici) {
           System.out.println(korisnik.toString());
       }
       
       Collections.sort(korisnici);
       for(Korisnik korisnik : korisnici) {
           System.out.println(korisnik.toString());
       }
       
       
       List<Korisnik> sortirajKorisnike = korisnici
               .stream()
               .sorted(Comparator.comparing(k -> k.getPrezime()))
               .collect(Collectors.toList());
        System.out.println("\n");
        System.out.println(sortirajKorisnike);
        
        List<Korisnik> unazadSortiranje = korisnici
               .stream()
               .sorted(Comparator.comparing(Korisnik::getIme).reversed())
               .collect(Collectors.toList());
        System.out.println("\n");
        System.out.println(unazadSortiranje);
       
    }//end of main
    
}
