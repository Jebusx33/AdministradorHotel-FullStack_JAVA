/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



/**
 *
 * @author Jesus Arias
 */
@Entity
@Table(name = "Reserva")
public class Reserva implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id_reserva;
    @Basic
    double costoTotal;
    @Temporal(TemporalType.DATE)
    Date fechaReserva;
    @Temporal(TemporalType.DATE)
    Date checkIn;
    @Temporal(TemporalType.DATE)
    Date checkPOut;

     @OneToMany
    List<Habitacion> listaHabitacion ;
      @OneToMany
    List<Huesped> listaHhuesped ;
      @OneToMany
    List<Empleado> listaEmpleado;
    public Reserva() {
    }

    public Reserva(int id_reserva, double costoTotal, Date fechaReserva, Date checkIn, Date checkPOut) {
        this.id_reserva = id_reserva;
        this.costoTotal = costoTotal;
        this.fechaReserva = fechaReserva;
        this.checkIn = checkIn;
        this.checkPOut = checkPOut;
    }

    public int getId_reserva() {
        return id_reserva;
    }

    public void setId_reserva(int id_reserva) {
        this.id_reserva = id_reserva;
    }

    public double getCostoTotal() {
        return costoTotal;
    }

    public void setCostoTotal(double costoTotal) {
        this.costoTotal = costoTotal;
    }

    public Date getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(Date fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckPOut() {
        return checkPOut;
    }

    public void setCheckPOut(Date checkPOut) {
        this.checkPOut = checkPOut;
    }


    
}
