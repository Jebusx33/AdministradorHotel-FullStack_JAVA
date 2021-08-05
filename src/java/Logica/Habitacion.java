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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Jesus Arias
 */
@Entity
@Table(name="Habitacion")
public class Habitacion extends Hotel implements Serializable{
   
    @Basic
    String tipo;
    String nombreHabitacion;
    int capacidadPertsonas;
    
    @OneToMany
     List<Huesped> listaHuespedes ;
    @OneToMany
     List<Reserva> listaReservas ;

    public Habitacion() {
    }

    public Habitacion(String tipo, String nombreHabitacion, int capacidadPertsonas, List<Huesped> listaHuespedes, List<Reserva> listaReservas) {
        this.tipo = tipo;
        this.nombreHabitacion = nombreHabitacion;
        this.capacidadPertsonas = capacidadPertsonas;
        this.listaHuespedes = listaHuespedes;
        this.listaReservas = listaReservas;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNombreHabitacion() {
        return nombreHabitacion;
    }

    public void setNombreHabitacion(String nombreHabitacion) {
        this.nombreHabitacion = nombreHabitacion;
    }

    public int getCapacidadPertsonas() {
        return capacidadPertsonas;
    }

    public void setCapacidadPertsonas(int capacidadPertsonas) {
        this.capacidadPertsonas = capacidadPertsonas;
    }

    public List<Huesped> getListaHuespedes() {
        return listaHuespedes;
    }

    public void setListaHuespedes(List<Huesped> listaHuespedes) {
        this.listaHuespedes = listaHuespedes;
    }

    public List<Reserva> getListaReservas() {
        return listaReservas;
    }

    public void setListaReservas(List<Reserva> listaReservas) {
        this.listaReservas = listaReservas;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPisos() {
        return pisos;
    }

    public void setPisos(int pisos) {
        this.pisos = pisos;
    }

    public int getCantHabitaciones() {
        return cantHabitaciones;
    }

    public void setCantHabitaciones(int cantHabitaciones) {
        this.cantHabitaciones = cantHabitaciones;
    }
     
}
