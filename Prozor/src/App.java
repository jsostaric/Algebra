import java.awt.Color;
import java.io.ObjectInputStream.GetField;

public class App {

	public static void main(String[] args) {
		
		Prozor p1 = new Prozor();
		Kordinate kordinata = new Kordinate();
		kordinata.setKordinate(10, 10);
		
		p1.setVals("naslov", "Oznaka",true);
		p1.setBoja(200);
		
		p1.setBoja(new Color(10,255,20).getRGB());
		
		int boja = p1.getBoja();
		int povrsina = p1.area();
		
		System.out.println("Dimenzije: " + kordinata.getX() + "x"+ kordinata.getY());
		
		System.out.println("Površina prozora: " + p1.area());
		System.out.println("opseg prozora: " + p1.perimeter());
		System.out.println(p1.getBoja());
		p1.draw();
		
	} // end of main..

}
