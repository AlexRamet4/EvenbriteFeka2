/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Registro_InicioSesion;

import Entity.Usuario;
import dao.UsuarioFacade;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Javier
 */
@WebServlet(name = "ServletIniciarSesion", urlPatterns = {"/ServletIniciarSesion"})
public class ServletIniciarSesion extends HttpServlet {

    @EJB
    private UsuarioFacade usuarioFacade;

    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String correo = new String(req.getParameter("correo").getBytes("ISO-8859-1"), "UTF-8");
        String password = new String(req.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");
        
        String mensaje = "";
        Usuario user = usuarioFacade.find(correo);
        
        if (user == null) {
            mensaje = "Ese correo no existe";
        } else if (!user.getPassword().equals(password)) {
            mensaje = "La contraseña no es correcta";
        } else {
            mensaje = "ok";
        }
        
        HttpSession session = req.getSession();
        session.setAttribute("mensajeInicioSesion", mensaje);
        
        if (mensaje.equals("ok")) {
            session.setAttribute("usuario", user.getEmail());
            RequestDispatcher rd;
            rd = req.getRequestDispatcher("PaginaPrincipal.jsp");
            rd.forward(req, res);
        } else {
            RequestDispatcher rd;
            rd = req.getRequestDispatcher("IniciarSesion.jsp");
            rd.forward(req, res);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
