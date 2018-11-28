<%-- 
    Document   : resutado_rastreio
    Created on : Nov 27, 2018, 9:24:32 PM
    Author     : cleber
--%>


<%@page contentType="text/html; charset=ISO-8859-1"  pageEncoding="UTF-8"%>
<jsp:useBean id="encomendadao" class="br.com.transportadora.encomenda.EncomendaDAO" scope="session"></jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="box col-md-12">
                      <h3>Resultado rastreio</h3>   
               <%
                   CharSequence pesq = request.getParameter("pesquisa");
                   int resultados= 0;
                                              
                                            try{ 
                                            encomendadao.executaSQL("select * from encomenda where id_encomenda = '"+ pesq + "'");
        
            while (encomendadao.resultSet.next()){
            resultados++;
            
                %>
                    <div class=" col-md-3" >
                            <div class="product">
                                <div>
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detalhe_produtoview.jsp?id_prod=<%=produtodao.resultSet.getString("id_produto")%>">
                                                <img src="img/<%=produtodao.resultSet.getString("foto_produto")%>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detalhe_produtoview.jsp?id_prod=<%=produtodao.resultSet.getString("id_produto")%>">
                                                <img src="img/<%=produtodao.resultSet.getString("foto_produto")%>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detalhe_produtoview.jsp?id_prod=<%=produtodao.resultSet.getString("id_produto")%>" class="invisible">
                                    <img src="img/<%=produtodao.resultSet.getString("foto_produto")%>" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detalhe_produtoview.jsp?id_prod=<%=produtodao.resultSet.getString("id_produto")%>"><%=produtodao.resultSet.getString("nome_produto")%></a></h3>
                                    <p class="price">R$ <%=produtodao.resultSet.getString("preco_venda_produto")%></p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>   
<%   

            } 
            }catch (SQLException ex) {out.print("Erro" + ex);}
    
if(resultados ==0 && pesq != null)   
    {out.println("<p>Sua pesquisa não retornou resultados</p>");}
%> 

<br>
                </div> 
    </body>
</html>
