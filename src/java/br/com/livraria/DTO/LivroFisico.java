
package br.com.livraria.DTO;

/**
 *
 * @author admin
 */
public class LivroFisico extends Livros {
    
    
    public double MostrarDesconto(double valor){
        double desconto = valor;
        return desconto -= desconto * 0.05;                        
    }

}
