package tokovi;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

public class Tokovi {

    public static void main(String[] args) throws IOException {
        //BINARNI TOKOVI
        String mojTekst = "tekst";
        
        try{
            OutputStream izlazniTok = new FileOutputStream("datoteka.txt");
            izlazniTok.write(mojTekst.getBytes());
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
        
        //čitanje
        try{
            InputStream ulazniTok = new FileInputStream("datoteka.txt");
            byte bajt = (byte) ulazniTok.read();
            while(bajt != -1) {
                System.out.println("Bajt: " + bajt);
                bajt = (byte) ulazniTok.read();
            }
            
            ulazniTok.close();
        }catch(IOException e) {
            
        }
        
        File file = new File("MojFile.txt");
        String s = "Ovo su java tokovi......";
        try (OutputStream output = new BufferedOutputStream(new FileOutputStream(file), 1024)){
            byte[] b = s.getBytes();
            output.write(b);
            output.flush();
        } catch (FileNotFoundException e) {
            
        }catch(IOException e) {
            
        }
        
        try (InputStream input = new BufferedInputStream(new FileInputStream(file), 1024)){
            byte b;
            while((b = (byte)input.read()) != -1) {
                System.out.println(b);
            }
        } catch (FileNotFoundException e) {
            
        }catch(IOException e) {
            
        }
        
        //ZNAKOVNI TOKOVI
        String filename = "MojaDatoteka.txt";
        String tekst = "Ovo će biti zapisano u datoteku";
        try(Writer w = new FileWriter(filename, true)) { //pisanje
            w.write(tekst);
        }catch(Exception e) {
            
        }
        
        
        //čitanje
        try(Reader r = new FileReader(filename)) {
              int data;
              while((data = r.read()) != -1) {
                  //System.out.println(data);
                  System.out.println((char)data);                  
                }      
        }catch(Exception e) {
                      
        }
        
        
        
        
    } // end of main...
    
}
