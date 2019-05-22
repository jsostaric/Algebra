package funkcije;

import java.util.ArrayList;


public class Funkcije {
	
	double sumaOcjena;
	double prosjek;

	
	//izračunati prosjek ocjena za studente
	public double prosjekOcjenaStudenata(ArrayList<Integer> ocjene) {
		
		for(int i : ocjene) {
			sumaOcjena += i;
		}
		
		prosjek = sumaOcjena / ocjene.size();
		
		
		
		return prosjek;
	}
	
	//prosjek ocjena po kolegiju
	
	
	
	
	//prosjek ocjena svih studenata
	
	
	
}
