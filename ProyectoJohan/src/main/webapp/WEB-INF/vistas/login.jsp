<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Ingresar</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/footer.css">
    <script src="https://kit.fontawesome.com/e87692bdd7.js" crossorigin="anonymous"></script>
    <script src="js/validacion.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 

    <!-- Vnetana Emergente -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://kit.fontawesome.com/1d159cd404.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- Ventana Emergente -->
</head>
<body>
  <!-- ======================================== -->
  <!-- ENCABEZADO -->
  <!-- ======================================== -->
  <header class="header">
    <div class="container logo-nav-container">
      <a href="#" class="logo"><img src="img/Logo Team Digital Yelmos.jpeg" alt=""></a>
      <nav class="main-nav">
        <a href="/verRegistro" class="inscribirse"> Aún no tienes cuenta? </a>
        <a href="/verInicio" class="icons-nav">
          <i class="fa-solid fa-house"></i>
        </a>
      </nav>
    </div>
  </header>



  <main class="main">
    <div class="container">
      <section class="formulario">
        <h5>INICIO DE SESION</h5>
        <input class="controls" type="text" name="username"  id="username" placeholder="Usuario (Email)" >

        <input class="controls" type="password" name="contrasena" id="password" placeholder="Password" onkeypress="return soloLetras(event)">


        <!-- <a href="/iniciovistagerente.html"> -->
          <input class="buttons" type="submit" name="ingresar" id="ingresar" value="Ingresar" onclick="validation()">
        <!-- </a> -->
        <a href="#editEmployeeModal" data-toggle="modal" class="Link">¿Olvido su contraseña?</a>
      </section>
    </div>
    <div id="editEmployeeModal" class="modal fade">
      <div class="modal-dialog">
          <div class="modal-content">
              <div class="signup-form">
                  <form action="/examples/actions/confirmation.php" method="post">
                      <h2>Ingresa tu Correo</h2>
                      <p>Vamos a recuperar tu contreseña</p>
                      <hr>
                      <div class="form-group">
                          <input id="email" type="email" class=" form-control form-control-sm" size="64" maxlength="64" required placeholder="username@gmail.com" pattern="+@beststartupever.com"/>
                      <div class="modal-footer">
                          <input type="button" class="btn btn-danger btn-block" data-dismiss="modal" value="Cancelar">
                          <input type="submit" class="btn btn-danger btn-block" value="Enviar" onclick="validacionEmail()">
                      </div>
                  </form>
              </div>
          </div>
      </div>
  </div>
  </main>

  <footer class="footer">
    <div class="copyright">
        <small>&copy;  2022 <b>Gestion y control Yelmos</b> - Todos los Derechos Reservados</small>
    </div>    
  </footer>

  </body>
</html>
