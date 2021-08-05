/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import java.io.IOException;
import java.text.ParseException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jesus Arias
 */
@WebServlet(name = "svEmpleado", urlPatterns = {"/svEmpleado"})
public class svEmpleado extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
     
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //obtenemos los datos del main.jsp
      
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String tipoDocumento = request.getParameter("tipoDocumento");
        String numDocumento = request.getParameter("numDocumento");
        String fechaNac = request.getParameter("fecha_Nac");
        String direccion = request.getParameter("direccion");
        String cargo = request.getParameter("cargo");
        
        
        
        //seteamos los datos trae la session y asigna los atributos para abrirlos en otro jsp
      
        request.getSession().setAttribute("nombre", nombre);
        request.getSession().setAttribute("apellido", apellido);
        request.getSession().setAttribute("tipoDocumento", tipoDocumento);
        request.getSession().setAttribute("numDocumento", numDocumento);
        request.getSession().setAttribute("fechaNac", fechaNac);
        request.getSession().setAttribute("direccion", direccion);
        request.getSession().setAttribute("cargo", cargo);
       
        //conecto con la logica
        Controladora contorol = new Controladora();
        try {
            contorol.crearEmp(0, nombre, apellido, tipoDocumento, numDocumento, fechaNac, direccion, cargo);
        } catch (ParseException ex) {
            System.err.println("error al crear  Empleado en servelet");;
        }
        
         //respondemos al jsp que queremos mostrar los datos
        response.sendRedirect("panelControl.jsp");
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
