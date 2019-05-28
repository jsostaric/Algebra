package iznimkezadatak;


public class MojaIznimka extends Exception{
   
    
    public MojaIznimka()  {
        
    }
    
    public MojaIznimka(String poruka){
        super(poruka);
    }
}
