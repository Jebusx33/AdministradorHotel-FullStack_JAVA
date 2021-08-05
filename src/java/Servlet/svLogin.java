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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jesus Arias
 */
@WebServlet(name = "svLogin", urlPatterns = {"/svLogin"})
public class svLogin extends HttpServlet {

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
      
        boolean siNo =false;
        Controladora control = new Controladora();
        siNo = control.contolarIngreso(request.getParameter("usuario"), request.getParameter("contrasenia"));
            System.out.println("El valor es: " + siNo);
            if (siNo== true) {
            HttpSession miSession = request.getSession(true);
            String usuario = request.getParameter("usuario");
            String contrasenia = request.getParameter("contrasenia");
            miSession.setAttribute("usuario", usuario);
            miSession.setAttribute("contrasenia", control);
            response.sendRedirect("panelControl.jsp");
        }else{
                System.out.println("Entro directo");
                response.sendRedirect("login_Error.jsp");
            }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
