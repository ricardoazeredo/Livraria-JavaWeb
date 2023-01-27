
package br.com.livraria.DTO;

/**
 *
 * @author admin
 */
public class LivroFisico extends Livros {
    
    
    public void MostrarDesconto(Livros livro){
        double desconto = livro.getValor();
        desconto -= desconto * 0.05;
        System.out.println("Valor do Livro Físico com desconto: "+ desconto);                
    }

}
