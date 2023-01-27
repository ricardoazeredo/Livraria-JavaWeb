
package br.com.livraria.DTO;

public class Livros {
    private int livroId;
    private String nomeLivro;
    private String isbn;
    private double valor;
    private int autorId;
    
    
    public int getLivroID(){
        return livroId;
    }
    
    public void setLivroID(int livroId ){
        this.livroId = livroId;
    }
    
    public String getNomeLivro(){
        return nomeLivro;
    }
    
    public void setNomeLivro(String nomeLivro){
        this.nomeLivro = nomeLivro;
    }
    
    public String getIsbn(){
        return isbn;
    }
    
    public void setIsbn(String isbn){
        this.isbn = isbn;
    }
    
   public double getValor(){
       return valor;
   }     
   
   public void setValor(double valor){
       this.valor = valor;
   }
   
   public int getAutorId(){
       return autorId;
   }
   
   public void setAutorId(int autorId) {
       this.autorId = autorId;
   }       
}
