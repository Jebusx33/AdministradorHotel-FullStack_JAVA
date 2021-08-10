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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Jesus Arias
 */
@Entity
@Table(name="Habitacion")
public class Habitacion implements Serializable {
   
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id_habitacion;
    @Basic
    int pisoHabit;
    String letraHabit;
    String tipoHabit;
    String nombreHabit;
    double precioNoche;
    
  
   
    public Habitacion() {
    }

    public Habitacion(int id_habitacion, int pisoHabit, String letraHabit, String tipoHabit, String nombreHabit, double precioNoche) {
        this.id_habitacion = id_habitacion;
        this.pisoHabit = pisoHabit;
        this.letraHabit = letraHabit;
        this.tipoHabit = tipoHabit;
        this.nombreHabit = nombreHabit;
        this.precioNoche = precioNoche;
    }

    public int getId_habitacion() {
        return id_habitacion;
    }

    public void setId_habitacion(int id_habitacion) {
        this.id_habitacion = id_habitacion;
    }

    public int getPisoHabit() {
        return pisoHabit;
    }

    public void setPisoHabit(int pisoHabit) {
        this.pisoHabit = pisoHabit;
    }

    public String getLetraHabit() {
        return letraHabit;
    }

    public void setLetraHabit(String letraHabit) {
        this.letraHabit = letraHabit;
    }

    public String getTipoHabit() {
        return tipoHabit;
    }

    public void setTipoHabit(String tipoHabit) {
        this.tipoHabit = tipoHabit;
    }

    public String getNombreHabit() {
        return nombreHabit;
    }

    public void setNombreHabit(String nombreHabit) {
        this.nombreHabit = nombreHabit;
    }

    public double getPrecioNoche() {
        return precioNoche;
    }

    public void setPrecioNoche(double precioNoche) {
        this.precioNoche = precioNoche;
    }


     
}
