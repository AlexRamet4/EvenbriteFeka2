<%-- 
    Document   : CrearEstudio
    Created on : Mar 24, 2021, 8:07:05 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <title> CrearEstudio </title>
        <link rel="icon" type="image/png" href="https://cdn.evbstatic.com/s3-build/perm_001/8a4e23/django/images/favicons/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="https://cdn.evbstatic.com/s3-build/perm_001/477279/django/images/favicons/favicon-194x194.png" sizes="194x194">
    </head>
    <body>
         <%@include file="./HtmlParts/navbar2.jsp" %>
         
         <form action="ServletRegistrarse" method="POST" class="d-flex flex-column flex-wrap align-items-center justify-content-center" style="height: 100%">
            
            <input type="text" name="nombre" class="form-control size" placeholder="Nombre">
            
            
         </form>
        
        
    </body>
</html>
