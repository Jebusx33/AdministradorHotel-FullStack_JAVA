/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Empleado;
import Logica.Huesped;
import Logica.Usuario;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jesus Arias
 */
public class ControladoraPersistencia {
    EmpleadoJpaController empJPA = new EmpleadoJpaController();
    HuespedJpaController huespJPA = new HuespedJpaController();
    PersonaJpaController persJPA = new PersonaJpaController();
    UsuarioJpaController userJPA = new UsuarioJpaController();
    HotelJpaController hotelJPA = new HotelJpaController();
    HabitacionJpaController HabJPA = new HabitacionJpaController();
    ReservaJpaController reservaJPA = new ReservaJpaController();
    CheckDiasJpaController CheckJPA = new CheckDiasJpaController();
    
     //recive el objeto creado
    public void CrearEmpl(Empleado emp ) {
        try {
            empJPA.create(emp);
        } catch (Exception ex) {//en el caso de no poder crear el cliente
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //traer clientes para listado
    public List<Empleado> traerEmpleados() {
        return empJPA.findEmpleadoEntities();
    }
    
        
     //recive el objeto creado
    public void CrearHuesped(Huesped huesp ) {
        try {
            huespJPA.create(huesp);
        } catch (Exception ex) {//en el caso de no poder crear el cliente
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
      //traer clientes para listado
    public List<Huesped> traerHuespedes() {
        return huespJPA.findHuespedEntities();
    }

    public List<Usuario> getUsuarios() {
       List<Usuario> listaUsuarios;
       listaUsuarios = userJPA.findUsuarioEntities();
    return listaUsuarios;
    }
    
}
