/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import java.io.IOException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jesus Arias
 */
@WebServlet(name = "svHuesped", urlPatterns = {"/svHuesped"})
public class svHuesped extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
            
            //obtenemos los datos del main.jsp
            
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String tipoDocumento = request.getParameter("tipoDocumento");
            String numDocumento = request.getParameter("numDocumento");
            String fechaNac = request.getParameter("fecha_Nac");
            String direccion = request.getParameter("direccion");
            String profesion = request.getParameter("profesion");
            
            //seteamos los datos trae la session y asigna los atributos para abrirlos en otro jsp
            
            request.getSession().setAttribute("nombre", nombre);
            request.getSession().setAttribute("apellido", apellido);
            request.getSession().setAttribute("tipoDocumento", tipoDocumento);
            request.getSession().setAttribute("numDocumento", numDocumento);
            request.getSession().setAttribute("fechaNac", fechaNac);
            request.getSession().setAttribute("direccion", direccion);
            request.getSession().setAttribute("profesion", profesion);
            
            //conecto con la logica
            Controladora contorol = new Controladora();
            contorol.crearHuesp(0, nombre, apellido, tipoDocumento, numDocumento, fechaNac, direccion, profesion);
            
            //respondemos al jsp que queremos mostrar los datos
            response.sendRedirect("panelControl.jsp");
        } catch (ParseException ex) {
           System.err.println("error al crear Hueped en servelet");;
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
