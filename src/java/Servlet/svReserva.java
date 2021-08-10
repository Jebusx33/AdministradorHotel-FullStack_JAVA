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
@WebServlet(name = "svReserva", urlPatterns = {"/svReserva"})
public class svReserva extends HttpServlet {

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
        try {
            processRequest(request, response);
            //obtenemos los datos del main.jsp
            
            String fechaReserva = request.getParameter("fechaReserva");
            String checkIn = request.getParameter("checkIn");
            String checkPOut = request.getParameter("checkPOut");
            double costoTotal = Double.parseDouble(request.getParameter("costoTotal")) ;
            //seteamos los datos trae la session y asigna los atributos para abrirlos en otro jsp
            
            request.getSession().setAttribute("fechaReserva", fechaReserva);
            request.getSession().setAttribute("checkIn", checkIn);
            request.getSession().setAttribute("checkPOut", checkPOut);
            request.getSession().setAttribute("costoTotal", costoTotal);
            //conecto con la logica
            Controladora contorol = new Controladora();
 
            contorol.crearReserva(fechaReserva, checkIn, checkPOut, costoTotal);
            
            //respondemos al jsp que queremos mostrar los datos
            response.sendRedirect("panelControl.jsp");
        } catch (ParseException ex) {
            System.err.println("error al crear Hueped en servelet");
        }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
