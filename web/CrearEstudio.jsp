<%-- 
    Document   : CrearEstudio
    Created on : Mar 24, 2021, 8:07:05 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link href="./styles/forms.css" rel="stylesheet">
        <link href="./styles/formAnalista.css" rel="stylesheet">
        <title> CrearEstudio </title>
        <link rel="icon" type="image/png" href="https://cdn.evbstatic.com/s3-build/perm_001/8a4e23/django/images/favicons/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="https://cdn.evbstatic.com/s3-build/perm_001/477279/django/images/favicons/favicon-194x194.png" sizes="194x194">
    </head>
    <body style="height: 100%" >
         <%@include file="./HtmlParts/navbar2.jsp" %>
         
         <form action="ServletCrearEstudio" method="POST" class="d-flex flex-column flex-wrap align-items-center justify-content-center" style="height: 100%">
            
             <label for="descripcion"><b>Descripción del estudio:</b> </label> <br/>
            <textarea id = "descripcion" name="descripcion" class="form-control size" rows="10" cols="40" wrap = "hard"></textarea>
        

                <select name="Tablas" class="form-select size" aria-label="Default select example">
                <option selected>Elige tu sexo</option>
                <option value="hombre">Hombre</option>
                <option value="mujer">Mujer</option>
                <option value="otro">Otro</option>
            </select>
            
            <input class="btn btn-primary" type="submit">
            
            
         </form>
         
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
        
        
    </body>
</html>
