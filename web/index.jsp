<%-- 
    Document   : index
    Created on : Nov 27, 2018, 5:11:38 PM
    Author     : cleber
--%>

<%@page contentType="text/html; charset=ISO-8859-1"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transportadora</title>
    </head>
    <body>

        <h1>Rastreiamento de Encomenda</h1>
        <div>

            <form action="EncomendaControle.do" method="get" >

                <input type="text"  name="id" placeholder="Codigo da encomenda">
                <span>

                    
<button type="submit" name="acao" value="rastrear"  id="rastrear" >Rastreie</button>
                </span>

            </form>

        </div>
    </body>
</html>
