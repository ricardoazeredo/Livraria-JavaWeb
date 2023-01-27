/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.livraria.DTO;

/**
 *
 * @author admin
 */
public class LivroDigital extends Livros {
        
    public void MostrarDesconto(Livros livro){
        double desconto = livro.getValor();
        desconto -= desconto * 0.1;
        System.err.println("Valor do Livro Digital" + livro.getNomeLivro() +" com desconto: " + desconto);                
    }
}
