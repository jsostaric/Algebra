package zadatak8;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class Funkcije {

    public static void unesiUDokument() {
        StringBuilder sb = new StringBuilder();
        sb.append("Pero Peric;1;2.4\n");
        sb.append("Ivan Ivic;2;4.4\n");
        sb.append("Marko Markovic;4;3.56\n");

        try (BufferedWriter writer = new BufferedWriter(new FileWriter("zadatak8.txt", true))) {

            writer.write(sb.toString());
            writer.flush();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

    public ArrayList<Student> ucitajDatoteku() {

        ArrayList<Student> listaStudenata = new ArrayList<>();
        String tmp="";

        try (BufferedReader reader = new BufferedReader(new FileReader("zadatak8.txt"))) {
            int data;
            while ((data = reader.read()) != -1) {
                if ((char) data != '\n') {
                    tmp += String.valueOf((char) data);
                } else {
                    String ime, prezime;
                    int godina;
                    double prosjek;
                    String[] sp1 = tmp.split(";");
                    String[] sp2 = sp1[0].split(" ");
                    ime = sp2[0];
                    prezime = sp2[1];
                    godina = Integer.parseInt(sp1[1]);
                    prosjek = Double.parseDouble(sp1[2]);

                    Student st = new Student(ime, prezime, godina, prosjek);
                    listaStudenata.add(st);
                    tmp = "";
                }
            }

        } catch (IOException ioe) {
            ioe.printStackTrace();
        }

        return listaStudenata;
    }
}
