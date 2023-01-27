
package br.com.livraria.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexaoDAO {
    public Connection conexaoDB() throws ClassNotFoundException{
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/livraria?user=root&password=";
            conn = DriverManager.getConnection(url);
        } catch (SQLException e){
             System.out.println("não conectou");       
        }
        
        return conn;
    }
}
