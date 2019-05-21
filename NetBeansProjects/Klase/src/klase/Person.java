
package klase;


public class Person {
    
    private String firstName;
    private String lastName;    
    private String hairColor;
    private int age;
    
    
    //parametarski konstruktor
    public Person(String firstName, String lastName) {
        System.out.println(firstName + " " + lastName);
    }  
    
    //defaultni konstruktor
    public Person() {
        
    }
    
    
    public String getName() {
        return firstName + " " + lastName;
    }

    public void setName(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }
    
    public void setAge(int age) {
        this.age = age;
    }
    
    public int getAge() {
        return age;
    }
    
    public void setHairColor(String hairColor) {
        this.hairColor = hairColor;
    }
    
    public String getHairColor() {
        return hairColor;
    }

   
    
    
}
