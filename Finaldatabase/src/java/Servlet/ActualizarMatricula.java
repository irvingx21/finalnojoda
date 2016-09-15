/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
public class ActualizarMatricula extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        
        String fechadematriculacionanterior = request.getParameter("fechadematriculacionanterior");
        String fechadematriculacionactual = request.getParameter("fechadematriculacionactual");
        String caduca = request.getParameter("caduca");
        String jefatura = request.getParameter("jefatura");
        String totaldematricula = request.getParameter("totaldematricula");
        String revision = request.getParameter("revision");
        String multa = request.getParameter("multa");
        String placaactual = request.getParameter("placaactual");
        String cedulapropietario = request.getParameter("cedulapropietario");
        String codigo = request.getParameter("codigo");
     
        Consultas co=new Consultas();
        if (co.actualizarmatricula(fechadematriculacionanterior, fechadematriculacionactual, caduca, jefatura, totaldematricula, revision, multa, placaactual, cedulapropietario,codigo) ) {
            response.sendRedirect("q3.jsp");
        }else{
            response.sendRedirect("perfil.jsp");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
//actualizamatricula