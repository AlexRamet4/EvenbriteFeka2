<%-- 
    Document   : navbar2
    Created on : 27-mar-2021, 22:13:39
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% boolean pulsado = false; %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
    <div class="container-fluid" style="margin-bottom: 0px">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav" style="margin-bottom: 0px">
            <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Pricing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </li>
          </ul>
        </div>
        <div class="d-flex" style="margin-bottom: 0px">
            <button 
                id="logout"
                class="btn btn-primary me-2"> Cerrar Sesi&oacute;n </button>
        </div>
    </div>
</nav>

<script>
    let logOutButton = document.getElementById("logout");
    logOutButton.addEventListener("click", () => {
        location.href="http://localhost:8080/Evenbrite/IniciarSesion.jsp";
    });    
</script>