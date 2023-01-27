
package br.com.livraria.DTO;

/**
 *
 * @author admin
 */
public class Autor {
    private int autorId;
    private String nomeAutor;
    private String email;
    
    public int getAutorId() {
        return autorId;
   }
    
    public void setAutorId(int autorId) {
        this.autorId = autorId;
    }

    public String getNomeAutor(){
        return nomeAutor;
    }
    
    public void setNomeAutor(String nomeAutor){
        this.nomeAutor = nomeAutor;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail(String email){
        this.email = email;                 
    }
}
