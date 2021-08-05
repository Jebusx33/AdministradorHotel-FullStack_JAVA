/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Jesus Arias
 */
@Entity

@Table(name = "Reserva")
public class Reserva implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id_reserva;
    @Basic
    int cantidadDias;
    int precionNoche;
    
    @OneToMany
    List<CheckDias> listaCheckDias ;

    public Reserva() {
    }

    public Reserva(int id_reserva, int cantidadDias, int precionNoche, List<CheckDias> listaCheckDias) {
        this.id_reserva = id_reserva;
        this.cantidadDias = cantidadDias;
        this.precionNoche = precionNoche;
        this.listaCheckDias = listaCheckDias;
    }

    public int getId_reserva() {
        return id_reserva;
    }

    public void setId_reserva(int id_reserva) {
        this.id_reserva = id_reserva;
    }

    public int getCantidadDias() {
        return cantidadDias;
    }

    public void setCantidadDias(int cantidadDias) {
        this.cantidadDias = cantidadDias;
    }

    public int getPrecionNoche() {
        return precionNoche;
    }

    public void setPrecionNoche(int precionNoche) {
        this.precionNoche = precionNoche;
    }

    public List<CheckDias> getListaCheckDias() {
        return listaCheckDias;
    }

    public void setListaCheckDias(List<CheckDias> listaCheckDias) {
        this.listaCheckDias = listaCheckDias;
    }
    
}
