/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.transportadora.encomenda;

/**
 *
 * @author cleber
 */
public class EncomendaModelo {

    private long id_encomenda;
    private String status_encomenda;

    

    /**
     * @return the status_encomenda
     */
    public String getStatus_encomenda() {
        return status_encomenda;
    }

    /**
     * @param status_encomenda the status_encomenda to set
     */
    public void setStatus_encomenda(String status_encomenda) {
        this.status_encomenda = status_encomenda;
    }

    /**
     * @return the id_encomenda
     */
    public long getId_encomenda() {
        return id_encomenda;
    }

    /**
     * @param id_encomenda the id_encomenda to set
     */
    public void setId_encomenda(long id_encomenda) {
        this.id_encomenda = id_encomenda;
    }

}
