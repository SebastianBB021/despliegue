<!DOCTYPE html>
<html lang="es" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/inicio.css"/>
    <link rel="stylesheet" href="css/nav.css"/>
    <link rel="stylesheet" href="css/footer.css"/>
    <script src="https://kit.fontawesome.com/e87692bdd7.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Inicio</title>
</head>
<body>
    <!-- ======================================== -->
    <!-- ENCABEZADO -->
    <!-- ======================================== -->
    <header class="header">
        <div class="container logo-nav-container">
            <a href="#" class="logo"><img src="img/Logo Team Digital Yelmos.jpeg" alt=""></a>
            <nav class="main-nav">
                <ul class="list-main-nav">
                        <li class="nav-item"><a href="/verInicio">Inicio</a></li>
                        <li class="nav-item"><a href="/verServicios">Servicios</a></li>
                        <li class="nav-item"><a href="/verQuienesSomos">Quiénes somos</a></li>
                        <li class="nav-item"><a href="/verLogin">Iniciar Sesion</a></li>  
                        <li class="nav-item" id="sign-up"><a href="/verRegistro">Únete</a></li> 
                </ul>
            </nav>
        </div>
    </header>

    <!-- ======================================== -->
    <!-- MAIN CONTENT -->
    <!-- ======================================== -->
    <main class="main">
        <div class="container">
            <h2>Yelmos Ltda</h2>
            <!-- ======================================== -->
            <!-- Carrusel -->
            <!-- ======================================== -->
            <div id="carouselExampleControls" class="carousel slide w-100" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active" data-bs-interval="2500">
                    <img src="img/delivery-employees-working-together.jpg" class="d-block w-100" alt="Rerservas">
                    <a href='https://www.freepik.com/photos/delivery-woman'>Delivery woman photo created by freepik - www.freepik.com</a>
                  </div>

                  <div class="carousel-item" data-bs-interval="2500">
                    <img src="img/paper-box-packaging-delivery-concept.jpg" class="d-block w-100" alt="Nosotros">
                    <a href='https://www.freepik.com/photos/generosity'>Generosity photo created by rawpixel.com - www.freepik.com</a>
                  </div>
                  
                  <div class="carousel-item" data-bs-interval="2500">
                    <img src="img/pexels-elevate-1267325.jpg" class="d-block w-100" alt="Servicios">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
            </div>

            <!-- ======================================== -->
            <!-- Servicios -->
            <!-- ======================================== -->
            <h2>Servicios</h2>
            <section class="section-ser">
                <figure class="figure-ser">
                    <img src="img/Events.jpg" alt="">
                    <figcaption>
                        <h3>Eventos</h3>
                        <p>Realizamos prestamos de implementos para tus eventos y queden decorados de la mejor manera.</p>
                    </figcaption>                
                </figure>
                <figure>
                    <img src="img/packagaing.jpg" alt="">
                    <figcaption>
                        <h3>Packing</h3>
                        <p>Empacamos y distribuimos los productos que no soliciten con una seguridad garantizada.</p>
                    </figcaption> 
                </figure>
                <figure>
                    <img src="img/pexels-sy-donny-1841841.jpg" alt="">
                    <figcaption>
                        <h3>Material P.O.P</h3>
                        <p>Creamos todos el material con el logo de tu marca, siempre de la mejor calidad.</p>
                    </figcaption> 
                </figure>          
        </section>        
       </div>
        

       <h2>Desarrolladores</h2>
       <section class="container-fluid">
            <div class="row w-75 mx-auto ">
                <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-5">
                    <img src="img/Sebastian.jpg" alt="Sebastian Barragan Basto" width="180" height="160">
                    <div class="descripcion">
                        <h3>Sebastian Barragan</h3>
                        <p>Aprendiz Sena<br> sebastinbarragan02@gmail.com</p>
                        <span></span>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-5">
                    <img src="img/Johan.jpeg" alt="Sebastian Barragan Basto" width="180" height="160">
                    <div class="descripcion">
                        <h3>Johan PeÃ±a</h3>
                        <p>Aprendiz Sena <br> francojohan321@gmail.com</p>
                        <span></span>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-5" style="position:static;">
                    <img src="img/icons8-user-skin-type-7-96.png" alt="Sebastian Barragan Basto" width="180" height="160">
                    <div class="descripcion">
                        <h3>Sergio Chisica</h3>
                        <p>Aprendiz Sena <br> sergiochicruz2@gmail.com</p>
                        <!-- <span>Lo que no te mata te infecta</span> -->
                    </div>
                </div>
            </div>
        </section> 

    </main>

    <!-- ======================================== -->
    <!-- PIE DE PAGINA -->
    <!-- ======================================== --> 
    <footer class="footer">
        <div class="footer-top">
            <div class="box">
                <h2>Contáctanos</h2>
                <p>Tel. 3172224453</p>
                <p>yelmosltda@yahoo.es</p>
            </div>
            <div class="box">
                <h2>Encuéntranos</h2>
                <p>Carrera 70D #79-15</p>
            </div>
            <div class="box">
                <h2>Síguenos</h2>
                <a href="https://instagram.com/yelmos_2023?igshid=ZDdkNTZiNTM=" class="icons">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="https://www.facebook.com/profile.php?id=100090302693704" class="icons">
                    <i class="fa-brands fa-facebook"></i>
                </a>
            </div>
        </div>
        <div class="copyright">
            <small>&copy;  2022 <b>Gestion y control Yelmos</b> - Todos los Derechos Reservados</small>
        </div>    
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>