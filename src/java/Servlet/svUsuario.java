/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jesus Arias
 */
@WebServlet(name = "svUsuario", urlPatterns = {"/svUsuario"})
public class svUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //obtenemos los datos del main.jsp
     
        String usuario= request.getParameter("usuario");
        String contrasenia= request.getParameter("contrasenia");
        
        //seteamos los datos trae la session y asigna los atributos para abrirlos en otro jsp
          
            request.getSession().setAttribute("usuario",usuario);
            request.getSession().setAttribute("contrasenia",contrasenia);
            
             Controladora contorol = new Controladora();
             
             contorol.crearUsuario(usuario, contrasenia);
             
              response.sendRedirect("panelControl.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
