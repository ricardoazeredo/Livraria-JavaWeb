
package br.com.livraria.DAO;

import br.com.livraria.DTO.Autor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 *
 * @author admin
 */
public class AutorDAO {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Autor> lista = new ArrayList<>();
    ArrayList<Autor> infoAutor = new ArrayList<>();
    
    public void CadastrarAutor(Autor autor) throws ClassNotFoundException {
        String sql = "INSERT INTO autor(nome, email) VALUES (?, ?)";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, autor.getNomeAutor());
            pstm.setString(2, autor.getEmail());
            pstm.execute();
            pstm.close();
            
        } catch(SQLException e){
            System.out.println("Não foi possível cadastrar ");
        }
    }
    
    public ArrayList<Autor> PesquisarAutor() throws ClassNotFoundException {
        String sql = "SELECT * FROM autor";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                               
                Autor autor = new Autor();
                autor.setAutorId(rs.getInt("id")); 
                autor.setNomeAutor(rs.getString("nome"));
                
                lista.add(autor);
               
            }
            pstm.close();
        } catch(SQLException e){
            System.out.println("Não há Autores para ser exibidos");
        }
        return lista;
    }
    
    public ArrayList<Autor> PesquisarAutorPorId(int id) throws ClassNotFoundException{
        String sql = "SELECT * FROM autor WHERE id = "+ id;
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Autor autor = new Autor();
                autor.setAutorId(rs.getInt("id"));
                autor.setNomeAutor(rs.getString("nome"));
                
                infoAutor.add(autor);
            }
            pstm.close();            
        } catch(SQLException e) {
            System.out.println("Não há autor");
        }
        
        return infoAutor;
    }
}
