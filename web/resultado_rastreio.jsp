<%-- 
    Document   : resultado_rastreio
    Created on : Nov 27, 2018, 9:24:32 PM
    Author     : cleber
--%>


<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html; charset=ISO-8859-1"  pageEncoding="UTF-8"%>
<jsp:useBean id="enc_dao" class="br.com.transportadora.encomenda.EncomendaDAO" scope="session"></jsp:useBean>
<jsp:useBean id="enc_mod" class="br.com.transportadora.encomenda.EncomendaModelo" scope="session"></jsp:useBean>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Transportadora</title>
        </head>
        <body>
            <div>
                <h1>Resultado do Rastreio</h1>   

            <%
                long id = Long.parseLong(request.getParameter("id"));
                enc_mod.setId_encomenda(id);
                try {

                    enc_dao.executaSQL("select * from encomenda where id_encomenda = '" + enc_mod.getId_encomenda() + "' ");

                    enc_dao.resultSet.next();
                    enc_mod.setStatus_encomenda(enc_dao.resultSet.getString("status_encomenda"));
                    out.println("<p >Sua encomenda está: " + enc_mod.getStatus_encomenda() + "</p>");
                } catch (SQLException ex) {
                    out.println("<p>Insira um Código Válido</p>");
                }


            %>


            <br>

        </div> 
    </body>
</html>
