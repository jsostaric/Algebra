
public class Prozor {

	private String naslov;
	private String oznaka;
	private int boja;
	private Kordinate kordinata;
	private boolean status;
	
	public Prozor() {
		System.out.println("Prozor1");
	}
	
	public Prozor(String naslov, Kordinate kordinata, int boja) {
		this.naslov = naslov;
		this.kordinata = kordinata;
		this.boja = boja;
	}
	
		
	//setter
	public void setVals(String naslov, String oznaka, boolean status) {
		this.naslov = naslov;
		this.oznaka = oznaka;		
		this.status = status;
	}
	
	public void getKordinate() {
		kordinata.getX();
		kordinata.getY();
	}
	
	public void setBoja (int boja) {
		this.boja = boja;
	}
	
	//getter
	public String getVals() {
		return naslov + oznaka + status;
	}	
	
	public int getBoja() {
		return boja;
	}
	
	public int width() {
		return kordinata.getX();
	}
	
	public int heigth() {
		return kordinata.getY();
	}
	
	public int area() {
		int x = width();
		int y = heigth();
		
		int povrsinaProzora = x * y;
		
		return  povrsinaProzora;
		
	}
	
	public int perimeter() {
		// računa opseg prozora
		int opseg = 2 * (width() + heigth());
		
		return opseg;
	}
	
	public void draw() {
		
		for(int i = 0; i < width(); i++) {
			for(int j = 0; j<heigth(); j++) {
				
				System.out.print(boja);
			}
			System.out.println();
		}
	}
	
	
	
	
}
