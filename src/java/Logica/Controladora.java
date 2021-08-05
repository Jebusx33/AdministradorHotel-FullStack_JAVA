/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Jesus Arias
 */
public class Controladora {

    ControladoraPersistencia controlPersi = new ControladoraPersistencia();
    private List <Usuario> listaUsuarios;
    
    public void crearEmp(int id, String nombre, String apellido, String tipoDocumento,
            String numDocumento, String fechaNac, String direccion, String cargo) throws ParseException {

        Empleado emp = new Empleado();

        emp.setId(id);
        emp.setNombre(nombre);
        emp.setApellido(apellido);
        // Date fechaDeNac = new Date(fechaNac);
        SimpleDateFormat formatEmp = new SimpleDateFormat("yyyy-mm-dd");
        Date fechaDeNac = formatEmp.parse(fechaNac);
        emp.setFecha_Nac(fechaDeNac);
        emp.setNumDocumento(numDocumento);
        emp.setTipoDocumento(tipoDocumento);
        emp.setDireccion(direccion);
        emp.setCargo(cargo);

        controlPersi.CrearEmpl(emp);
    }

    //para traer lista de Empleados
    public List<Empleado> traerEmpleados() {
        return controlPersi.traerEmpleados();
    }

    public void crearHuesp(int id, String nombre, String apellido, String tipoDocumento,
            String numDocumento, String fechaNac, String direccion, String profesion) throws ParseException {

        Huesped huesp = new Huesped();

        huesp.setNombre(nombre);
        huesp.setApellido(apellido);
        // Date fechaDeNac = new Date(fechaNac);
        SimpleDateFormat formatEmp = new SimpleDateFormat("yyyy-mm-dd");
        Date fechaDeNac = formatEmp.parse(fechaNac);
        huesp.setFecha_Nac(fechaDeNac);
        huesp.setNumDocumento(numDocumento);
        huesp.setTipoDocumento(tipoDocumento);
        huesp.setDireccion(direccion);
        huesp.setProfesion(profesion);

        controlPersi.CrearHuesped(huesp);
    }

    //para traer lista de Empleados
    public List<Huesped> traerHuespedes() {
        return controlPersi.traerHuespedes();
    }

    public boolean contolarIngreso(String usuario, String contrasenia) {
        boolean siNo = false;
        listaUsuarios = controlPersi.getUsuarios();
    
        for (Usuario usu : listaUsuarios) {
            if (usu.getUsuario().equals(usuario) && usu.getContrasenia().endsWith(contrasenia)) {
                siNo= true;
            }
        }
        
        return siNo;
    }

}
