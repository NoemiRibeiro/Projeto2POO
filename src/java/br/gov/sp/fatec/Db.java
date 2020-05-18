/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.fatec;

import java.util.ArrayList;
/**
 *
 * @author NOEMI
 */
public class Db {
    private static ArrayList<Cliente> clientes;
    public static ArrayList<Cliente> getClientes(){
        if (clientes == null)
        {
            clientes = new ArrayList<>();
            Cliente teste = new Cliente();
            teste.setCliente("Teste", "111.111.111-11", "22.222.222-2", "teste@email.com", "(33)33333-3333", "Rua 4, 444");
            clientes.add(teste);
        }
        return clientes;
    }
    
    private static ArrayList<Fornecedor> fornecedores;
    public static ArrayList<Fornecedor> getFornecedores(){
        return fornecedores;
    }
    
    
}
