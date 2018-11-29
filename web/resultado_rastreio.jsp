<%-- 
    Document   : resultado_rastreio
    Created on : Nov 27, 2018, 9:24:32 PM
    Author     : cleber
--%>


<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html; charset=ISO-8859-1"  pageEncoding="UTF-8"%>
<jsp:useBean id="enc_dao" class="br.com.transportadora.encomenda.EncomendaDAO" scope="session"></jsp:useBean>


    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <div>
                <h3>Resultado do Rastreio</h3>   

            <%
                String id = request.getParameter("id");
               if(id != null ){
                try {
                    int id_enc = Integer.parseInt(id);
                    
                
                    enc_dao.executaSQL("select * from encomenda where id_encomenda = '" + id_enc + "' ");

                    enc_dao.resultSet.next();
            %>

            <p >Sua encomenda está: <%enc_dao.resultSet.getString("status_encomenda");
            
                
                %></p><%

                } catch (SQLException ex) {
                    out.print("Encomenda Inexistente");
                }}else{out.println(%><p>Insira um numero</p><%);}
            %>


            <br>

        </div> 
    </body>
</html>
