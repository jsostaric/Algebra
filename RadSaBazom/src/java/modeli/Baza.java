package modeli;
import java.sql.*;

public class Baza {
    public Connection conn;
    public Statement stmt;
    public Baza() { 
        conn=null; 
        stmt=null; 
    }
    
    public void connect() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RadSaBazom", "root", "");
        stmt = conn.createStatement();
        stmt.executeUpdate("use losfilm");
    }
    
    public void disconnect() throws SQLException {
        stmt.close();
        conn.close();
    }
    
    public ResultSet selectUpit(String s) throws SQLException{
        Statement st = conn.createStatement();
        return st.executeQuery(s);
    }
    
    public int upit(String s) throws SQLException{
        return stmt.executeUpdate(s);
    }
    
}
