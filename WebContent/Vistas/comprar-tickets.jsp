<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">

  <title>Trabajo Integrador: Comprar tickets</title>
</head>
<body>

<header>
    <!-- NavBar de Bootstrap -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="barra">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"> 
            <img src="imgs/codoacodo.png" alt="logo" width="120" class="d-inline-block align-text-center">Conf Bs As</a>
        </div>  
          <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown" >
            <ul class="navbar-nav size">
              <li class="nav-item">
                <a class="nav-link active" href="#">La conferencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Los oradores</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">El lugar y la fecha</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Conviértete en orador</a>
              </li>
              <li class="nav-item">
                <a class="nav-link ticket" href="FrontController?accion=comprar">Comprar Tickets</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-warning" href="#">Back Office</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
</header>    
          <br>          
          <div>
            <p class="h3 text-uppercase text-center">valor de ticket $200</p>
          </div>

        <!-- formulario para la compra de tickets-->

        <div class="container-fluid col-8">
          <form class="row g-3" id="compraEntradas" action="FrontController?accion=insertar" method="post">
            
            <div class="col-md-6">
              <input type="text" class="form-control" id="inputNombre" placeholder="Nombre" name="nombre"  aria-label="Nombre" >
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control" id="inputApellido" placeholder="Apellido" name="apellido"  aria-label="Apellido">
            </div>
            <div class="col-12">
              <input type="email" class="form-control" id="inputEmail" placeholder="Correo" name="mail" aria-label="Correo">
            </div>
            
            <div class="col-md-6">
              <label for="cantidad" class="form-label">Cantidad</label>
              <input type="text" class="form-control" id="cantidad" placeholder="Cantidad" name="cant">
            </div>
            <div class="col-md-6">
              <label for="categoria" class="form-label">Categoría</label>
              <select id="categoria" class="form-select" name="categoria">
                <option value="" selected>-- Seleccione --</option>
                <option value="1">Estudiante</option> 
                <option value="2">Trainee</option>
                <option value="3">Junior</option>
                <option value="4">General</option>                
              </select>
            </div>
        
            <div class="alert alert-primary " role="alert" >
              <p id="importeTotal">Total a Pagar: $</p>                                      
            </div>
            
            <div class="col">
                <button class="btn btn-success col-sm-12" onclick="borrar()" type="reset" id="btnBorrar" ;">Borrar</button>
                <a class="btn btn-outline-primary col-sm-12 " href="FrontController?accion=volver">Volver</a>
            </div>
            <div class="col">
                <button class="btn btn-success col-sm-12" onclick="precioFinal()" type="button"  id="btnResumen" ;">Resumen</button>                
                <button type="submit" class="btn btn-outline-primary col-sm-12 " >Comprar Tickets</button>
              </div>
           </form>
         </div>
          
          
        
        <br>
        <br>
        
        
        <!-- aca empieza el footer -->

        <footer class="footer">
          <div>
            <br>
            <ul class="nav justify-content-around">
              <li class="nav-item">
                <a class="nav-link textoFooter" href="#">Preguntas Frecuentes</a>
              </li>
              <li class="nav-item">
                <a class="nav-link textoFooter" href="#">Contactanos</a>
              </li>
              <li class="nav-item">
                <a class="nav-link textoFooter" href="#">Prensa</a>
              </li>
              <li class="nav-item">
                <a class="nav-link textoFooter" href="#">Conferencias</a>
              </li>
              <li class="nav-item">
                <a class="nav-link textoFooter" href="#">Terminos y condiciones</a>
              </li>
              <li class="nav-item">
                <a class="nav-link textoFooter" href="#">Privacidad</a>
              </li>
              <li class="nav-item">
                <a class="nav-link textoFooter" href="#">Estudiantes</a>
              </li>
            </ul>
            <br>
          </div>
        </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="js/tickets.js"></script>
</body>
</html>