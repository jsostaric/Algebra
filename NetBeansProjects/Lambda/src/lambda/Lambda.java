package lambda;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.*;
import java.util.stream.Collectors;

public class Lambda {

    public static void main(String[] args) {
        
       MyInterface mi = text -> {
            return text;            
       };
        
       String value = mi.print("Hello");
        System.out.println(value);
       
        BinaryOperator<Integer> zbroj = (a,b) -> a+b;
        System.out.println(zbroj.apply(3,4));
        
        Consumer<String> consumer = MyInterface::ispis;
        consumer.accept("tekst1");
        consumer.accept("tekst2");
        consumer.accept("tekst3");
        
        Consumer<String> consumer2 = (x) -> 
                System.out.println(x.toLowerCase());
        consumer2.accept("TEKST");
        
        //Function 
        Function<Integer,String> converter = (i) ->
                Integer.toString(i);
        
        System.out.println(converter.apply(3).length());
        System.out.println(converter.apply(30).length());
        System.out.println(converter.apply(155).length());
        
        String result = calc((a)-> "Result: " + (a*2), 10);
            System.out.println(result);
        
        TwoArgInterface plusOperation = (a,b) -> a+b;
        System.out.println(plusOperation.operation(5, 2));
        
        //Streamovi
        List<String> daniUTjednu = new ArrayList<>();
        daniUTjednu.add("Ponedjeljak");
        daniUTjednu.add("Utorak");
        daniUTjednu.add("Srijeda");
        daniUTjednu.add("Četvrtak");
        daniUTjednu.add("Petak");
        daniUTjednu.add("Subota");
        daniUTjednu.add("Nedjelja");
        
        List<String> daniKojiPocinjuSlovomP = daniUTjednu.stream()
                                                        .filter(d -> d.startsWith("P"))
                                                        .collect(Collectors.toList());
        long varijabla = daniUTjednu.stream()
                                    .filter(d -> d.startsWith("P"))
                                    .count();
        
        System.out.println(daniKojiPocinjuSlovomP);
        System.out.println(varijabla);
        
        List<Integer> brojevi = new ArrayList<>();
        brojevi.add(5);
        brojevi.add(1);
        brojevi.add(55);
        brojevi.add(155);
        brojevi.add(10);
        brojevi.add(190);
        
       Integer maxB = brojevi.stream()
               .max(Comparator.comparing(Integer::valueOf))
               .get();
       
        System.out.println("Najveći broj je: " + maxB);
        
        
       double prosjek =  daniUTjednu.stream()
                .mapToInt(d -> d.length())
                .average()
                .getAsDouble();
       
        System.out.println(prosjek);
        
        double suma = daniUTjednu.stream()
                .mapToInt(d -> d.length())
                .sum();
        System.out.println(suma);
        
        
    }//end of main
    
    public static String calc(Function<Integer, String> bi, Integer i){
        return bi.apply(i);
    }
}
