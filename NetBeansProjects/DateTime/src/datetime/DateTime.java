package datetime;

import java.time.Clock;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;

public class DateTime {

    public static void main(String[] args) {
       
        //sistemsko vrijeme postavljeno na UTC-u
        Clock clockUtc = Clock.systemUTC();
        //sistemsko vrijeme
        Clock clockDefault = Clock.systemDefaultZone();
        //vrijeme u milisekundama - timestamp
        long vrijemeMs = clockDefault.millis();
        
        System.out.println(vrijemeMs);
        
        System.out.println("\n" + clockUtc);
        
        System.out.println("\n" + clockDefault);
        
        /*
        LocalDate datum = LocalDate.now();
        System.out.println("godina: " + datum.getYear());
        System.out.println("mjesec: " + datum.getMonth());
        System.out.println("dan: " + datum.getDayOfMonth());
        
        
        LocalTime vrijeme = LocalTime.now();
        System.out.println("Sati: " + vrijeme.getHour());
        System.out.println("minute: " + vrijeme.getMinute());
        System.out.println("sekunde: " + vrijeme.getSecond());
        */
        
        LocalDate datum = LocalDate.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        String rezultat = dtf.format(datum);
        System.out.println(rezultat);
        
        LocalDateTime ldt = LocalDateTime.now();
        DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("hh:mm:ss'T'dd.MM.yyyy");
        String rezultat2 = ldt.format(dtf2);
        System.out.println(rezultat2);
        
        LocalDate d1 = LocalDate.now().minusYears(2).minusDays(56);
        LocalDate d2 = LocalDate.now();
        
        Period period = Period.between(d1, d2);
        
        System.out.println(period.getYears() + " godina");
        System.out.println(period.getMonths()+ " mjeseci");
        System.out.println(period.getDays() + " dana");
        
        
       
    }
    
}
