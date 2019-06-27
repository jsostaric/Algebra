package modeli;
import java.sql.*;

public class Baza {
    public Connection conn;
    public Statement stmt;
    public Baza() { conn=null; stmt=null; }
    public void connect() throws SQLException, ClassNotFoundException {
        Class.forName("com.microsoft.sqlserver.jdbc.SqlServerDriver");
        conn = DriverManager.getConnection("jdbc:sqlserver://localhost","sa","SQL");
        stmt = conn.createStatement();
        stmt.execute("use LosFilm");
    }    
    
    public void disconnect() throws SQLException {
        stmt.close();
        conn.close();
    }
    
    public ResultSet selectupit(String s) throws SQLException{
        Statement st = conn.createStatement();
        return st.executeQuery(s);
    }
    
    public int upit(String s) throws SQLException{
        return stmt.executeUpdate(s);
    }
}
