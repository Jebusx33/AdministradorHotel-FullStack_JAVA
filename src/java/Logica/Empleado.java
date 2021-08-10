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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author Jesus Arias
 */
@Entity
@Table(name = "Empleado")
public class Empleado extends Persona implements Serializable {

    @Basic
    String cargo;
    
    @OneToOne
    Usuario user;
  

    public Empleado() {
    }

    public Empleado(String cargo, Usuario user) {
        this.cargo = cargo;
        this.user = user;
    }

    public Empleado(String cargo, Usuario user, int id, String nombre, String apellido, Date fecha_Nac, String numDocumento, String tipoDocumento, String direccion) {
        super(id, nombre, apellido, fecha_Nac, numDocumento, tipoDocumento, direccion);
        this.cargo = cargo;
        this.user = user;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Date getFecha_Nac() {
        return fecha_Nac;
    }

    public void setFecha_Nac(Date fecha_Nac) {
        this.fecha_Nac = fecha_Nac;
    }

    public String getNumDocumento() {
        return numDocumento;
    }

    public void setNumDocumento(String numDocumento) {
        this.numDocumento = numDocumento;
    }

    public String getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

}
