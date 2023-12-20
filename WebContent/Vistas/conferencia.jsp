<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>TP Integrador I - SerafiniA 32949372</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
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
                <a class="nav-link text-warning" href="FrontController?accion=backoffice">Back Office</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
          <!-- Carrousel de Bootstrap -->
          <div id="carouselSlidesOnly" class="carousel slide position-relative d-flex align-items-center justify-content-end" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="imgs/ba1.jpg" class="d-block w-100" alt="BA1">
              </div>
              <div class="carousel-item">
                <img src="imgs/ba2.jpg" class="d-block w-100" alt="BA2">
              </div>
              <div class="carousel-item">
                <img src="imgs/ba3.jpg" class="d-block w-100" alt="BA3">
              </div>
            </div>
            <div class="position-absolute text-end col-md-6 col-12 text-light px-5">
              <div class="d-none d-md-block pt-5 mt-5 letra">
                <h1>
                  Conf Bs As
                </h1>
                <p>
                  Bs As llega por primera vez a Argentina. Un evento para compartir con
                  nuestra comunidad el conocimiento y experiencia de los expertos que
                  están creando el futuro de Internet. Ven a conocer a miembros del
                  evento, a otros estudiantes de Codo a Codo y los oradores de primer
                  nivel que tenemos para ti. ¡Te esperamos!
                </p>
              </div>
              <div class="d-none d-sm-block d-md-none text-center mt-5">
                <h1>
                  Conf Bs As
                </h1>
                <p>
                  Por primera vez a Argentina. Veni a conocer los miembros del
                  evento, estudiantes y oradores de primer
                  nivel que tenemos para ti. ¡Te esperamos!
                </p>
              </div>
              <div class="d-block d-sm-none text-center mb-0 pb-0 mt-5">
                <p class="mb-0 pt-3">
                  Conoce los miembros del
                  evento. ¡Te esperamos!
                </p>
              </div>
              <div class="pt-1 d-grid gap-2 d-md-block">
                <button type="button" class="btn btn-outline-light">Quiero ser orador</button>
                <button type="button" class="btn colorverde text-light">Comprar tickets</button>
              </div>
            </div>
          </div>

          <br>

          <!-- titulo tarjetas oradores-->

          <div class="oradores">
            <H6>CONOCE A LOS</H6>
            <h2>ORADORES</h2>
          </div>

          <!-- tarjetas oradores-->

          <div class="row row-cols-1 row-cols-md-3 g-4" id="tarjetas">
            <div class="col">
              <div class="card h-100">
                <img src="imgs/steve.jpg" class="card-img-top" alt="steve">
                <div class="card-body">
                  <div class="d-grid gap-2 d-md-block">
                    <button class="btn btn-warning btn-sm" type="button">JavaScript</button>
                    <button class="btn btn-primary btn-sm" type="button">React</button>
                  </div>                                    
                  <h5 class="card-title">Steve Jobs</h5>
                  <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Unde nisi iusto ipsa fugiat commodi sint, excepturi quibusdam corrupti laboriosam odit quae similique doloremque vero ex? Praesentium eligendi laboriosam tenetur consequuntur.</p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="imgs/bill.jpg" class="card-img-top" alt="bill">
                <div class="card-body">
                  <div class="d-grid gap-2 d-md-block">
                    <button class="btn btn-warning btn-sm" type="button">JavaScript</button>
                    <button class="btn btn-primary btn-sm" type="button">React</button>
                  </div> 
                  <h5 class="card-title">Bill Gates</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ullam molestias iure aliquam porro pariatur sint consequatur officiis voluptas minus facilis, commodi nam dolore velit magnam? Inventore blanditiis aliquam perspiciatis?</p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="imgs/ada.jpeg" class="card-img-top" alt="ada">
                <div class="card-body">
                  <div class="d-grid gap-2 d-md-block">
                    <button class="btn btn-secondary btn-sm" type="button">Negocios</button>
                    <button class="btn btn-danger btn-sm" type="button">Startups</button>
                  </div> 
                  <h5 class="card-title">Ada Lovelace</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Mollitia, consequuntur aut repellendus reprehenderit tempora repudiandae libero eligendi quasi, at placeat iure nulla deleniti nihil soluta harum minima pariatur vel nobis?</p>
                </div>
              </div>
            </div>
          </div>
          <br>

          <!-- tarjeta horizontal de bootstrap -->

          <div class="card mb-3" >
            <div class="row g-0">
              <div class="col-md-6">
                <img src="imgs/honolulu.jpg" class="img-fluid rounded-start" alt="honolulu">
              </div>
              <div class="col-md-6" id="fondoTarjeta">
                <div class="card-body">
                  <h5 class="card-title">Bs As - Octubre</h5>
                  <p class="card-text">Buenos Aires es la provincia y localidad mas grande del estado de Argentina, en los Estados Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honululu se refiere al area urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad(aproximadamente 600km2 de superficie).</p>
                  <button type="button" class="btn btn-outline-light">Conoce más</button>
                </div>
              </div>
            </div>
          </div>
          <br>

        <!-- titulo convertite en.. -->

        <div class="oradores">
          <H6>CONVERTITE EN UN</H6>
          <h2>ORADOR</h2>
          <h5>Anotate como orador para dar una charla ignite. Cuentanos de que quieres hablar!</h5>
        </div>

        <!-- formulario de contacto  -->

        <div class="row g-3 d-flex justify-content-center posicion">
          <div class="col-4">
            <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre">
          </div>
          <div class="col-4">
            <input type="text" class="form-control" placeholder="Apellido" aria-label="Apellido">
          </div>
        </div>
        <br>
        <div class="mb-4 col-8 mx-auto">
          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Sobre qué quieres hablar?"></textarea>
          <div>
            <p class="orador">Recuerda incluir un título para tu charla</p>
          </div>
        </div>
        <div class="d-grid gap-2 col-8 mx-auto">
          <button type="button" class="btn btn-success">Enviar</button>
        </div>
        <br>

      <!-- TICKETS -->

        <div class="container fluid d-flex justify-content-center ">
          <div class="card-group "  style="width: 46rem;">
            <div class="card border border-primary text-center mx-1">
              <div class="card-body">
                <p class="card-text h4">Estudiante</p>
                <p class="card-text">Tiene un descuento</p>
                <p class="card-text"> <strong>80%</strong></p>
                <p class="card-text text-muted"> <small> *presentar documentación</small></p>
              </div>
            </div>
            
            <div class="card border border-success text-center mx-1" >
              <div class="card-body">
                <p class="card-text h4">Trainee</p>
                <p class="card-text">Tiene un descuento</p>
                <p class="card-text"> <strong>50%</strong></p>
                <p class="card-text text-muted"><small> *presentar documentación</small></p>
              </div>
            </div>
            
            <div class="card border border-warning text-center mx-1" >
              <div class="card-body">
                <p class="card-text h4">Junior</p>
                <p class="card-text">Tiene un descuento</p>
                <p class="card-text"> <strong>15%</strong></p>
                <p class="card-text text-muted"><small> *presentar documentación</small></p>
              </div>
            </div>
          </div>
        </div>
         
      
          
          <div>
            <p class="text-uppercase pt-2 mb-0 text-center">
              <small>venta</small>
            </p>
            <p class="h3 text-uppercase text-center">valor de ticket $200</p>
          </div>

        <!-- formulario para la compra de tickets-->

        <div class="container-fluid col-8">
          <form class="row g-3" id="compraEntradas">
            
            <div class="col-md-6">
              <input type="text" class="form-control" id="inputNombre" placeholder="Nombre"  aria-label="Nombre" >
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control" id="inputApellido" placeholder="Apellido"  aria-label="Apellido">
            </div>
            <div class="col-12">
              <input type="email" class="form-control" id="inputEmail" placeholder="Correo" aria-label="Correo">
            </div>
            
            <div class="col-md-6">
              <label for="cantidad" class="form-label">Cantidad</label>
              <input type="text" class="form-control" id="cantidad" placeholder="Cantidad">
            </div>
            <div class="col-md-6">
              <label for="categoria" class="form-label">Categoría</label>
              <select id="categoria" class="form-select" >
                <option selected>Estudiante</option> 
                <option>Trainee</option>
                <option>Junior</option>
                <option>General</option>
              </select>
            </div>
        
            <div class="alert alert-primary " role="alert" >
              <p  id="importeTotal">Total a Pagar: $</p>
            </div>
            
            <div class="col">
                <button class="btn btn-success col-sm-12" onclick="borrar()" type="reset" id="btnBorrar" ;">Borrar</button>
            </div>
            <div class="col">
                <button class="btn btn-success col-sm-12" onclick="precioFinal()" type="button" id="btnResumen" ;">Resumen</button>
              </div>
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