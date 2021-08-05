/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

/**
 *
 * @author Jesus Arias
 */
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Hotel implements Serializable {
     @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id;
     @Basic
    
         
    int pisos;
    int cantHabitaciones;

    public Hotel() {
    }

    public Hotel(int id, int pisos, int cantHabitaciones) {
        this.id = id;
        this.pisos = pisos;
        this.cantHabitaciones = cantHabitaciones;
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
