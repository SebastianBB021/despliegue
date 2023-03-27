<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Cuenta</title>
    <link rel="stylesheet" href="css/signup.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/footer.css">
    
  
    <script src="https://kit.fontawesome.com/e87692bdd7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
    
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/global.js"></script>
    <link type="text/javascript" src="/webapp/WEB-INF/vistas/usuarios.jsp"></link>

    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="css/usuarios.css" />
    <link rel="stylesheet" href="css/msg.css" />
    <link rel="stylesheet" href="css/logo.css" />
</head>
<body>
    <!-- ======================================== -->
    <!-- ENCABEZADO -->
    <!-- ======================================== -->
    <header class="header">
      <div class="container logo-nav-container">
        <a href="#" class="logo"><img src="img/Logo Team Digital Yelmos.jpeg" alt=""></a>
        <nav class="main-nav">
          <a href="/verInicio" class="icons-nav">
            <i class="fa-solid fa-house"></i>
          </a>
        </nav>
      </div>
    </header>
    
    <br>
    <br>
    <!-- ======================================== -->
    <!-- MAIN CONTENT -->
    <!-- ======================================== -->
    <main class="main">
      <div id="id_div_modal_registra" >
        <div class="container">
          <form method="post" accept-charset="UTF-8" action="registraActualizaUsuarios" class="formulario animate__bounceIn" id="id_form_registra">
            <section class="form-login">
              <h5>Crear Cuenta</h5>
              <p>Al finalizar reinicie el formulario, su usuario ya se habra creado <br> <a href="/verLogin">Ingrese Aqui</a></p>
              <div class="form-row">
                <div class="form-group col">
                    <label>Nombre</label>
                    <input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese nombre: " type="text"/>
                </div>
                <div class="form-group col">
                    <label>Apellido</label>
                    <input class="form-control" id="id_reg_apellido" name="apellido" placeholder="Ingrese apellido: " type="text" />
                </div>
            </div>
            <br>
            <div class="form-row">
                <div class="form-group col">
                    <label>Documento</label>
                    <input class="form-control" id="id_reg_documento" name="documento" placeholder="Ingrese documento: " type="text"/>
                </div>
                <div class="form-group col">
                  <label for="departamento">Clave:</label>
                  <input type="password" class="form-control password1" id="id_reg_contraseña" name="contrasena" placeholder="Ingrese contraseña: " />
                  <span class="fa fa-fw fa-eye password-icon show-password"></span>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col">
                    <label>Email</label>
                    <input  class="form-control" id="id_reg_email" name="email" placeholder="Ingrese email: " type="text"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col">
                    <label>Estado</label>
                    <input class="form-control" id="id_reg_estado" name="estado" placeholder="Ingrese estado: " type="text"/>
                </div>
                <div class="form-group col">
                    <label>Rol</label>
                    <select class="form"  id="id_reg_rol" name="rol">
                        <option value=" "> -Seleccione- </option>
                    </select>
                </div>
            </div>
            <br>
            <div class="form-group">
                <div class="buttons">
                    <button type="button" class="buttons" id="id_btn_registra">Registrar</button>
                    <button type="reset" class="buttons">Borrar Datos</button>
                    <p><a href="#">�Alguna duda?</a></p>
                </div>
            </div>
            </section>
        </form>
        </div>
      </div>
    </main>


    <script type="text/javascript">


      $.getJSON("listaRol", {}, function(data){
        $.each(data, function(i,item){
          $("#id_reg_rol").append("<option value="+item.idRol+">"+ item.nombre + "</option>");
          $("#id_act_rol").append("<option value="+item.idRol+">"+ item.nombre + "</option>");
        });
      });
      /*Eliminar*/
      /*Limpiar Formulario*/
      function limpiarFormulario(){
        $('#id_reg_nombre').val('');
        $('#id_reg_apellido').val('');
        $('#id_reg_documento').val('');
        $('#id_reg_contraseña').val('');
        $('#id_reg_email').val('');
        $('#id_reg_estado').val('');
        $('#id_reg_rol').val('');
      }
      /*Limpiar Formulario*/
      /*Agregar*/
      $("#id_btn_registra").click(function(){
        var validator = $('#id_form_registra').data('bootstrapValidator');
        validator.validate();

        if(validator.isValid()){
          $.ajax({
            type: "POST",
            url: "insertarUsuarioRegistro",
            data: $('#id_form_registra').serialize(),
            success: function(data){
              listarDatos(data.lista);
              $('#id_div_modal_registra');
              mostrarMensaje(data.mensaje);
              limpiarFormulario();
              validator.resetForm();
            },
            error: function(){
              mostrarMensaje(MSG_ERROR);
            }
          });
        }
      });

      window.addEventListener("load", function() {

// icono para mostrar contraseña
showPassword = document.querySelector('.show-password');
showPassword.addEventListener('click', () => {

    // elementos input de tipo clave
    password1 = document.querySelector('.password1');
    password2 = document.querySelector('.password2');

    if ( password1.type === "text" ) {
        password1.type = "password"
        password2.type = "password"
        showPassword.classList.remove('fa-eye-slash');
    } else {
        password1.type = "text"
        password2.type = "text"
        showPassword.classList.toggle("fa-eye-slash");
    }
  });
});

      /*Agregar*/
    </script>
    <script type="text/javascript">
      $('#id_form_registra').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
              "nombre": {
                selector : '#id_reg_nombre',
                    validators: {
                        notEmpty: {
                            message: 'El nombre es un campo obligatorio'
                        },
                        stringLength :{
                          message:'El nombre es de 2 a 100 caracteres',
                          min : 2,
                          max : 100
                        }
                    }
                },
                "apellido": {
                  selector : '#id_reg_apellido',
                    validators: {
                        notEmpty: {
                            message: 'El apellido es un campo obligatorio'
                        },
                        stringLength :{
                          message:'El apellido es de 2 a 100 caracteres',
                          min : 2,
                          max : 100
                        }
                    }
                },
                "documento": {
                  selector: "#id_reg_documento",
                    validators:{
                        notEmpty: {
                             message: 'El documento es obligatorio'
                        },
                        regexp: {
                            regexp: /^[0-9]{6,10}$/,
                            message: 'el documento es de 6 a 10'
                        },
                    }
                },
                "contrasena": {
                  selector : '#id_reg_contraseña',
                    validators: {
                      notEmpty: {
                            message: 'La contraseña es un campo obligatorio'
                        },
                        regexp: {
                            regexp: /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[$@!%?&.]).{6,12}$/,
                            message: 'Incluya Mayuscula,Minuscula,Numeros y Signos'
                        },
                    }
                },
                "email": {
                  selector : '#id_reg_email',
                    validators:{
                        notEmpty: {
                             message: 'El correo es obligatorio'
                        },
                        emailAddress: {
                            message: 'El correo no es valido'
                        },
                    }
                },
                "estado": {
                  selector : '#id_reg_estado',
                    validators: {
                      notEmpty: {
                            message: 'El deporte un campo obligatorio'
                        },
                    }
                },
                "rol.idRol": {
                selector : '#id_reg_rol',
                    validators: {
                      notEmpty: {
                            message: 'El deporte un campo obligatorio'
                        },
                    }
                },
              
            }   
        });
    </script>


     <br>
     <br>
     <br>

    <!-- ======================================== -->
    <!-- PIE DE PAGINA -->
    <!-- ======================================== --> 
    <footer class="footer">
        <div class="copyright">
            <small>&copy;  2022 <b>Gestion y control Yelmos</b> - Todos los Derechos Reservados</small>
        </div>    
      </footer>
</body>
</html>