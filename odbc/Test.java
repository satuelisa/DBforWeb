import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

public class Test {

    public static void connect() {
	try {
	    Class.forName("org.sqlite.JDBC");
	} catch (ClassNotFoundException e) {
	    System.out.println("Class missing: " + e.getMessage());
	    return;
	}
        Connection conn = null;
        try {
            String url = "jdbc:sqlite:/home/elisa/Github/DBforWeb/odbc/school.db";
            conn = DriverManager.getConnection(url);
            System.out.println("Connection established.");
	    String sql = "SELECT * FROM students";
            try {
		Statement stmt  = conn.createStatement();
		ResultSet rs  = stmt.executeQuery(sql);
		while (rs.next()) {
		    System.out.println(rs.getString("FirstName"));
		}
	    } catch (SQLException e) {
		System.out.println("Query failure " + e.getMessage());
	    }
	    
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
	    if (conn != null) {
		try {
		    conn.close();
		} catch (SQLException e) {
		    System.out.println("Unable to close connection" + e.getMessage());
		}	    
	    }
	}
    }
    
    public static void main(String[] args) {
        connect();
    }
}
