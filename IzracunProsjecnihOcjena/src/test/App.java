package test;

import java.util.ArrayList;
import funkcije.Funkcije;
import java.util.Scanner;

import funkcije.Funkcije;
import studenti.Student;

public class App {

	public static void main(String[] args) {
		
		Scanner s = new Scanner(System.in);
		
		ArrayList<Student> listaStudenata = new ArrayList<>();
		
		int brojStudenata = 0;
		
		System.out.println("Koliko studenata želite unijeti?");
		brojStudenata = s.nextInt();
		
		String[] kolegij = {"Matematika", "Fizika","Kemija","Biologija","Informatika"};
		
		String ustanova;
		int godina;
		ArrayList<String> listaKolegija;
		ArrayList<Integer> listaOcjena;
		
		String ime;
		String prezime;
		int maticniBroj;
		
		Student student;
		Funkcije func = new Funkcije();;
		
		Scanner s2 = new Scanner(System.in);
		
		System.out.println("Unesite ustanovu: ");
		ustanova = s.nextLine();
		s.hasNext();
		Scanner s3;
		
		for(int i=0; i<brojStudenata;i++) {
			listaKolegija = new ArrayList<>();
			listaOcjena = new ArrayList<>();
			
			System.out.println("Unesite godinu za studenta " + (i+1) + ": ");
			godina = s2.nextInt();
			
			for(int j=0;j<kolegij.length; j++) {
				System.out.println("Unesite ocjenu za kolegij " + kolegij[j] + " (student " + (i+1)+")");
				listaOcjena.add(s2.nextInt());
				listaKolegija.add(kolegij[j]);
			}
			
			s3 = new Scanner(System.in);
			System.out.println("Unesite ime studenta " + (i+1) + ": ");
			ime = s3.nextLine();
			
			System.out.println("Unesite prezime studenta " + (i+1) + ": ");
			prezime = s3.nextLine();
			
			System.out.println("Unesite matični broj studenta " + (i+1) + ": ");
			maticniBroj = s3.nextInt();
			
			student = new Student(ustanova, godina, listaKolegija, listaOcjena, ime, prezime, maticniBroj);
			listaStudenata.add(student);
		}
		
		for(int i=0; i < listaStudenata.size(); i++) {
			System.out.println(listaStudenata.get(i).toString());
			
			System.out.println("Prosjek ocjena Studenata:");
			System.out.println(func.prosjekOcjenaStudenata(listaStudenata.get(i).getOcjeneKolegija()));
		}
		
		
		
		
	} // end of main...

}
