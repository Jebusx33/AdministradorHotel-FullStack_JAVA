/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import static java.awt.SystemColor.control;
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
@WebServlet(name = "svHabitacion", urlPatterns = {"/svHabitacion"})
public class svHabitacion extends HttpServlet {

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
        //obtenemos los datos del main.jsp

        int pisoHabit = Integer.parseInt(request.getParameter("pisoHabit"));
        String tipoHabit = request.getParameter("tipoHabit");
        String nombreHabit = request.getParameter("nombreHabit");
        double precioNoche = Double.parseDouble(request.getParameter("precioNoche"));
        String contrasenia = request.getParameter("contrasenia");

        //seteamos los datos trae la session y asigna los atributos para abrirlos en otro jsp
        request.getSession().setAttribute("pisoHabit", pisoHabit);
        request.getSession().setAttribute("tipoHabit", tipoHabit);
        request.getSession().setAttribute("nombreHabit", nombreHabit);
        request.getSession().setAttribute("precioNoche", precioNoche);
        request.getSession().setAttribute("contrasenia", contrasenia);

        Controladora contorol = new Controladora();
        contorol.crearHabitacion(nombreHabit,pisoHabit,tipoHabit,precioNoche);
        
       
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
