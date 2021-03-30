<%-- 
    Document   : PaginaPrincipal
    Created on : 24-mar-2021, 21:14:22
    Author     : Javier
--%>

<%@page import="java.util.List"%>
<%@page import="Entity.Evento"%>
<%@page import="Entity.EventoFacade"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <title> EvenbriteFeka </title>
        <link rel="icon" type="image/png" href="https://cdn.evbstatic.com/s3-build/perm_001/8a4e23/django/images/favicons/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="https://cdn.evbstatic.com/s3-build/perm_001/477279/django/images/favicons/favicon-194x194.png" sizes="194x194">
    </head>
    
    <%
        //TODO añadir los eventos en todos los jsp que llamen a la página principal
        List <Evento> eventos = (List<Evento>) session.getAttribute("eventos");
        boolean a = false;
    %>
    
    <body>
        <%@include  file="./HtmlParts/navbar2.jsp" %>

        <div class="card-group m-5" style="width: 50%">
            
            <%
                for (int i = 0; i < eventos.size(); i++) {
            %>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"> <%= eventos.get(i).getTitulo() %> </h5>
                          <p class="card-text"> <%= eventos.get(i).getDescripcion() %> </p>
                        </div>
                    </div>
            <%
                }
            %>
            
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </body>
</html>
