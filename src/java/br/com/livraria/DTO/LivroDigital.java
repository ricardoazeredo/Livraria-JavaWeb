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
        
    public double MostrarDesconto(double valor){
        double desconto = valor;
        return desconto -= desconto * 0.1;
    }
}
