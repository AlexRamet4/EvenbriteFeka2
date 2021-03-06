package Registro_InicioSesion;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Entity.Rol;
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
@WebServlet(urlPatterns = {"/ServletRegistrarse"})
public class ServletRegistarse extends HttpServlet {

    @EJB
    private UsuarioFacade usuarioFacade;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
                
        String nombre = new String(req.getParameter("nombre").getBytes("ISO-8859-1"), "UTF-8");
        String apellidos = new String(req.getParameter("apellidos").getBytes("ISO-8859-1"), "UTF-8");
        String domicilio = new String(req.getParameter("domicilio").getBytes("ISO-8859-1"), "UTF-8");
        String edad = new String(req.getParameter("edad").getBytes("ISO-8859-1"), "UTF-8");
        String ciudad = new String(req.getParameter("ciudad").getBytes("ISO-8859-1"), "UTF-8");
        String sexo = new String(req.getParameter("sexo").getBytes("ISO-8859-1"), "UTF-8");
        String correo = new String(req.getParameter("correo").getBytes("ISO-8859-1"), "UTF-8");
        String password = new String(req.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");
        String confPassword = new String(req.getParameter("confPassword").getBytes("ISO-8859-1"), "UTF-8");
        
        String mensaje = "";
        Usuario user = usuarioFacade.find(correo);

        if (!password.equals(confPassword)) {
            mensaje = "Las contraseñas no son iguales";
        } else if (user != null) {
            mensaje = "Este correo ya está en uso";
        } else {
            Usuario nuevoUsuario = new Usuario(correo, nombre, password, apellidos, domicilio, ciudad, sexo, Integer.parseInt(edad));
            nuevoUsuario.setIdRol(new Rol(3));
            usuarioFacade.create(nuevoUsuario);
            mensaje = "Has sido registrado con éxito!!!";
        }
        
        HttpSession session = req.getSession();
        session.setAttribute("mensajeRegistro", mensaje);
        
        RequestDispatcher rd;
        rd = req.getRequestDispatcher("Registrarse.jsp");
        rd.forward(req, res);
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
