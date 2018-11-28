/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.transportadora.encomenda;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cleber
 */
@WebServlet(name = "ProdutoControle", urlPatterns = {"/ProdutoControle.do"})
public class EncomendaControle extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
         throws    ServletException, IOException,  SQLException  {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
//            out.println("<title>Servlet NovoServlet</title>");            
            out.println("</head>");
            out.println("<body>");
//            out.println("<h1>Servlet ProdutoControle at " + request.getContextPath() + "</h1>");
//              out.println("<a href="indexAdmin.jsp">Voltar para página Inicial +  "</a>");
            out.println("</body>");
            out.println("</html>");
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
     * @throws java.sql.SQLException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
             {
      
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
             {
       response.setContentType("text/html;charset=UTF-8");
       try (PrintWriter out = response.getWriter()) {

      int id = Integer.parseInt(request.getParameter("id"));
      
      
      String  acao = request.getParameter("acao");
      
      EncomendaModelo mod = new EncomendaModelo();

      mod.setId_encomenda(id);

      
      
      
      EncomendaDAO dao = new EncomendaDAO();   
      
      if(acao.equals("rastrear")) {
          
          dao.buscaStatus(id);
          response.sendRedirect("resultado_rastreio.jsp");
          out.println("<h1>Produto Cadastrado </h1>");
          out.println("<a href=index.jsp>Voltar para a Pagina Inicial</a>");
          
      }
      
       } 
    
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
