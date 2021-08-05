/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Jesus Arias
 */
@Entity
public class CheckDias implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id_check;
    @Basic
    @Temporal(TemporalType.DATE)
    Date checkIn;//date
    @Temporal(TemporalType.DATE)
    Date checkOut; //date

    public CheckDias() {
    }

    public CheckDias(int id_check, Date checkIn, Date checkOut) {
        this.id_check = id_check;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
    }

    public int getId_check() {
        return id_check;
    }

    public void setId_check(int id_check) {
        this.id_check = id_check;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(Date checkOut) {
        this.checkOut = checkOut;
    }

}
