<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva Clietne</title>
    

    <!-- FUENTES -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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

    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="css/reservas.css" />
    <link rel="stylesheet" href="css/logo.css" />
    <link rel="stylesheet" href="css/msg.css" />
</head>
<body>

    <nav class="navbar navbar-expand-xl navbar-light bg-light">
        <a href="" class="navbar-brand"><img src="img/paquete.png" class="yelmos" alt="Yelmos">Team<b>Yelmos</b></a>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
          <div class="navbar-nav" id="primero">
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Services</a>
              <div class="dropdown-menu">
                <a href="/verReservas" class="dropdown-item">Reserva</a>
                <div class="dropdown-divider"></div>
                <a href="/verReservasVer" class="dropdown-item">Tus Reservas</a>
                <a href="/verTusDatos" class="dropdown-item">Tus Datos</a>
              </div>
            </div>
          </div>
          <div class="navbar-nav ml-auto" id="segundo">
            <a href="#" class="nav-item nav-link notifications"><i class="fa fa-bell-o"></i><span class="badge">1</span></a>
            <div class="nav-item dropdown">
              <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action"><img src="img/usu.png" class="avatar" alt="Avatar"> Nicol User</b></a>
              <div class="dropdown-menu">
                <a href="/verPerfilPJ" class="dropdown-item"><i class="fa fa-user-o"></i> Perfil</a></a>
                <div class="dropdown-divider"></div>
                <a href="/verLogin" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Salir</a></a>
              </div>
            </div>
          </div>
        </div>
      </nav>

      <div  id="id_div_modal_registra" >
        <div class="modal-dialog" style="width: 60%">
    
            <!-- Modal content-->
            <div class="modal-content">
            <div class="modal-header" style="padding: 35px 50px">
                Registro de Reserva
                <P>Cuando registres, no vuelvas a dar a registrar <br> <b>Refresca la pagina</b> </P>
            </div>
            <div class="modal-body" style="padding: 20px 10px;">
                    <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudCliente" class="form"  method="post">
                        <div class="panel-group" id="steps">
                            <!-- Step 1 -->
                                    <div class="panel-body">
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Direccion</label>
                                                <input class="form-control" id="id_reg_direccion" name="direccion" placeholder="Ingrese direccion: " type="text"/>
                                            </div>
                                            <div class="form-group col">
                                                <label>Email</label>
                                                <input  class="form-control" id="id_reg_email" name="email" placeholder="Ingrese email: " type="text"/>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Fecah Inicio</label>
                                                <input class="form-control" id="id_reg_fechaIn" name="fechaInicio" placeholder="Ingrese fecha Inicio: " type="date"  min="2022-10-10"/>
                                            </div>
                                        
                                            <div class="form-group col">
                                                <label>Fecha Recoleccion</label>
                                                <input  class="form-control" id="id_reg_fechaReco" name="fechaRecoleccion" placeholder="Ingrese fecha Recoleccion: " type="date" />
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Telefono</label>
                                                <input class="form-control" id="id_reg_telefono" name="telefono" type="text"/>
                                            </div>
                                            <div class="form-group col">
                                                <label>Usuario</label>
                                                <select class="form"  id="id_reg_usuario" name="usuario">
                                                    <option value=" "><-Seleccione-></option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col">
                                                <label>Localidad</label>
                                                <select   class="form"  id="id_reg_localidad" name="localidad">
                                                    <option value=" "><-Seleccione-></option>
                                                </select>
                                            </div>
                                            <div class="form-group col">
                                                <label>Tipo Reserva</label>
                                                <select class="form"  id="id_reg_tipoReserva" name="tipoReserva">
                                                    <option value=" "><-Seleccione-></option>
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <div class="col-lg-9 col-lg-offset-3">
                                                <button type="button" class="btn btn-success" id="id_btn_registra">Registrar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <script type="text/javascript">
                /*Listar Datos*/
                /*Listar Foraneas*/
                $.getJSON("lsitaLocalidadCliente", {}, function(data){
                    $.each(data, function(i,item){
                        $("#id_reg_localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
                        $("#id_act_localidad").append("<option value="+item.idLocalidad +">"+ item.nombre +"</option>");
                    });
                });
                /*Listar Foraneas*/
                /*Listar Foraneas*/
                $.getJSON("listaTipoReservaCliente", {}, function(data){
                    $.each(data, function(i,item){
                        $("#id_reg_tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
                        $("#id_act_tipoReserva").append("<option value="+item.idTipoReserva +">"+ item.nombre +"</option>");
                    });
                });
                /*Listar Foraneas*/
                /*Listar Foraneas*/
                $.getJSON("listaUsuarioCliente", {}, function(data){
                    $.each(data, function(i,item){
                        $("#id_reg_usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
                        $("#id_act_usuario").append("<option value="+item.idUsuario +">"+ item.nombre +"</option>");
                    });
                });
                /*Listar Foraneas*/
                /*Limpiar Formulario*/
                function limpiarFormulario(){
                    $('#id_reg_direccion').val('');
                    $('#id_reg_email').val('');
                    $('#id_reg_fechaIn').val('');
                    $('#id_reg_fechaReco').val('');
                    $('#id_reg_telefono').val('');
                    $('#id_reg_usuario').val('');
                    $('#id_reg_localidad').val('');
                    $('#id_reg_tipoReserva').val('');
                }
                /*Limpiar Formulario*/
                /*Agregar Reserva*/
                $("#id_btn_registra").click(function(){
                    var validator = $('#id_form_registra').data('bootstrapValidator');
                    validator.validate();
                
                    if(validator.isValid()){
                        $.ajax({
                            type: "POST",
                            url: "agregaReservaCliente",
                            data: $('#id_form_registra').serialize(),
                            success: function(data){
                                listarDastos(data.lista);
                                $('#id_div_modal_registra').modal("hide");
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
                /*Agregar Reserva*/
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
        	"direccion":{
            	selector : '#id_reg_direccion',
                validators: {
                	notEmpty: {
                        message: 'La direccion esobligatorio'
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
            "fechaInicio": {
                selector: "#id_reg_fechaIn",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            },
            "fechaRecoleccion":{
            	 selector: "#id_reg_fechaReco",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            },
            "telefono": {
        		selector : '#id_reg_telefono',
                validators: {
                	notEmpty: {
                        message: 'El telefono es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'el telefono es 10 d�gitos'
                    },
                }
            },
            "usuario.nombre": {
        		selector : '#id_reg_usuario',
                validators: {
                	notEmpty: {
                        message: 'El usuario esobligatorio'
                    },
                }
            },
            "localidad.nombre": {
        		selector : '#id_reg_localidad',
                validators: {
                	notEmpty: {
                        message: 'La localidad es obligatorio'
                    },
                }
            },
            "tipoReserva.nombre": {
        		selector : '#id_reg_tipoReserva',
                validators: {
                	notEmpty: {
                        message: 'Tipo Reserva es obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>


</body>
</html>


