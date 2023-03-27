<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <link rel="stylesheet" href="css/proveedores.css" />
    <link rel="stylesheet" href="css/logo.css" />
    <link rel="stylesheet" href="css/msg.css" />
    <title>Proveedores</title>
</head>
<body>
    <!--Nav-->
    <nav class="navbar navbar-expand-xl navbar-light bg-light">
        <a href="" class="navbar-brand"><img src="img/paquete.png" class="yelmos" alt="Yelmos">Team<b>Yelmos</b></a>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
          <div class="navbar-nav" id="primero">
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Services</a>
              <div class="dropdown-menu">
                <a href="/verReservas" class="dropdown-item">Reservas</a>
                <a href="/verUsuarios" class="dropdown-item">Usuarios</a>
                <a href="verContratos" class="dropdown-item">Contratos</a>
                <a href="/verAlquiler" class="dropdown-item">Alquiler</a>
                <a href="/verProveedores" class="dropdown-item">Proveedores</a>
                <div class="dropdown-divider"></div>
                <a href="/verProductos" class="dropdown-item">Productos</a>
                <a href="/verDespachos" class="dropdown-item">Despachos</a>
              </div>
            </div>
          </div>
          <div class="navbar-nav ml-auto" id="segundo">
            <a href="#" class="nav-item nav-link notifications"><i class="fa fa-bell-o"></i><span class="badge">1</span></a>
            <div class="nav-item dropdown">
              <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action"><img src="img/ADMIN.png" class="avatar" alt="Avatar"> Johan Franco</b></a>
              <div class="dropdown-menu">
                <a href="/verPerfilA" class="dropdown-item"><i class="fa fa-user-o"></i> Perfil</a></a>
                <div class="dropdown-divider"></div>
                <a href="/verLogin" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Salir</a></a>
              </div>
            </div>
          </div>
        </div>
      </nav>
    <!--Nav-->

    <!--Tabla-->
    <div class="container-xl">
        <div class="table">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Crud <b>Proveedor</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a class="btn btn-success" data-toggle="modal" data-target="#id_div_modal_registra"><i class="material-icons">&#xE147;</i> <span>Agregar Proveedor</span></a>
                            <a class="btn btn-secondary"  id="id_btn_filtrar"><i class="material-icons">&#xE863;</i> <span>Ajustar Datos</span></a>
                            <input type="text" id="id_txt_filtro" style="width: 30%;" class="form-control" placeholder="Buscar&hellip;">		
                        </div>
                    </div>
                </div>
                <table class="table table-striped" id="id_table">
                    <thead>
                        <tr>
                            <th>idProveedor</th>
                            <th>Email</th>
                            <th>Nombre Proveedor</th>
                            <th>Telefono</th>
                            <th>Tipo Proveedor</th>
                            <th>Actualizar</th>
                            <th>Bloquear</th>
                        </tr>
                    </thead>
                    <tfoot>
                    </tfoot>
                </table>
            </div>
            <!--Formulario Registrar-->
            <div class="modal fade" id="id_div_modal_registra" >
                <div class="modal-dialog" style="width: 60%">
            
                    <!-- Modal content-->
                    <div class="modal-content">
                    <div class="modal-header" style="padding: 35px 50px">
                        <h4>Registro de Proveedores</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body" style="padding: 20px 10px;">
                            <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudModalidad" class="form"  method="post">
                                <div class="panel-group" id="steps">
                                    <!-- Step 1 -->
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Proveedore</a></h4>
                                        </div>
                                        <div id="stepOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label >Email</label>
                                                        <input class="form-control" id="id_reg_email" name="email" placeholder="" type="text" />
                                                    </div>
                                                    <div class="form-group col">
                                                        <label >Nombre Proveedor</label>
                                                        <input class="form-control" id="id_reg_nombre" name="nombre" placeholder="" type="text" />
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label >Telefono</label>
                                                        <input class="form-control" id="id_reg_telefono" name="telefono" placeholder="" type="text" />
                                                    </div>
                                                    <div class="form-group col">
                                                        <div class="form-group">
                                                            <label >Tipo Proveedor</label>
                                                            <select id="id_reg_tipoProv" name="tipoProveedor" class='form'>
                                                                <option value=" ">[TipoProveedor]</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-lg-9 col-lg-offset-3">
                                                        <button type="button" class="btn btn-primary" id="id_btn_registra">Registrar</button>
                                                        <button type="button" class="btn btn-warning" data-dismiss="modal" value="Cancel">Cancelar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--Formulario Registrar-->
            <!--Formualrio Actualiza-->
            <div class="modal fade" id="id_div_modal_actualiza" >
                <div class="modal-dialog" style="width: 60%">
            
                    <div class="modal-content">
                    <div class="modal-header" style="padding: 35px 50px">
                        <h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Proveedor</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body" style="padding: 20px 10px;">
                            <form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudModalidad" class="form"     method="post">
                                <div class="panel-group" id="steps">
                                    <!-- Step 1 -->
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Proveedores</a></h4>
                                        </div>
                                        <div id="stepOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <label>ID</label>
                                                    <div>
                                                       <input class="form-control" id="id_ID" readonly="readonly" name="idProveedor" type="text" maxlength="8"/>
                                                    </div>
                                                 </div>
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label class="label" for="id_act_email">Email</label>
                                                        <input class="form-control" id="id_act_email" name="email" placeholder="" type="text" />
                                                    </div>
                                                    <div class="form-group col">
                                                        <label class="label" for="id_act_nombre">Nombre Proveedor</label>
                                                        <input class="form-control" id="id_act_nombre" name="nombre" placeholder="" type="text" />
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label class="label" for="id_act_telefono">Telefono</label>
                                                        <input class="form-control" id="id_act_telefono" name="telefono" placeholder="" type="text" />
                                                    </div>
                                                    <div class="form-group col">
                                                        <select id="id_act_tipoProv" name="tipoProveedor" class='form'>
                                                            <option value=" ">[TipoProveedor]</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-lg-9 col-lg-offset-3">
                                                        <button type="button" class="btn btn-primary" id="id_btn_actualiza">Actualiza</button>
                                                        <button type="button" class="btn btn-warning" data-dismiss="modal" value="Cancel">Cancelar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
    
                            </form>   
                    
                    </div>
                </div>
            </div>
                
            </div>
            <!--Formualrio Actualiza-->
        </div> 
        <!--Tabla-->

<script type="text/javascript">

    function listarDatos(lista){
        $('#id_table').DataTable().clear();
        $('#id_table').DataTable().destroy();
        $('#id_table').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'excel', 'pdf'
            ],
            data: lista,
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
            columns:[
                {data: "idProveedor"},
                {data: "email"},
                {data: "nombre"},
                {data: "telefono"},
                {data: "tipoProveedor.nombreTipo"},
                {data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 40px" class="btn btn-warning btn-sm" onclick="editar(\'' + row.idProveedor + '\', \'' + row.email + '\', \'' + row.nombre + '\', \'' + row.telefono + '\', \'' + row.tipoProveedor.idTipoProveedor + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 50px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idProveedor + '\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE14B;</i></button>';
					return salida;
				},className:'text-center'},	
            ]
        });
    }
    $("#id_btn_filtrar").click(function(){
        var fil = $("#id_txt_filtro").val();
        $.getJSON("filtrarProveedores",{"filtro": fil},function(lista){
            listarDatos(lista);
        });
    });


    function eliminar(id){
        mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
    }

    function accionEliminar(id){
        $.ajax({
            type: "POST",
            url: "eliminarProveedor",
            data: {"id":id},
            success: function(data){
                listarDatos(data.lista);
                mostrarMensaje(data.mensaje);
            },
            error: function(){
                mostrarMensaje(MSG_ERROR);
            }
        });
    }

    $.getJSON("listaTipoProveedor",{},function(data){
        $.each(data, function(i,item){
            $("#id_reg_tipoProv").append("<option value="+item.idTipoProveedor +">"+ item.nombreTipo +"</option>");
            $("#id_act_tipoProv").append("<option value="+item.idTipoProveedor +">"+ item.nombreTipo +"</option>");
        });
    });

    function limpiarFormulario(){
        $('#id_reg_email').val('');
        $('#id_reg_nombre').val('');
        $('#id_reg_telefono').val('');
        $('#id_reg_tipoProv').val('');
    }

    $("#id_btn_registra").click(function(){
        var validator = $('#id_form_registra').data('bootstrapValidator');
        validator.validate();

        if (validator.isValid()){
            $.ajax({
              type: "POST",
              url: "registrarProveedor",
              data: $('#id_form_registra').serialize(),
              success: function(data){
                  listarDatos(data.lista);
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

    function editar(id,email,nombre,telefono,idTipoProveedor){
        $('#id_ID').val(id);
        $('#id_act_email').val(email);
        $('#id_act_nombre').val(nombre);
        $('#id_act_telefono').val(telefono);
        $('#id_act_tipoProv').val(idTipoProveedor);
        $('#id_div_modal_actualiza').modal("show");
    }

    $("#id_btn_actualiza").click(function(){
        var validator = $('#id_form_actualiza').data('bootstrapValidator');
        validator.validate();

        if(validator.isValid()){
            $.ajax({
                type: "PUT",
                url: "actualizarProveedor",
                data: $('#id_form_actualiza').serialize(),
                success: function(data){
                    listarDatos(data.lista);
                    $('#id_div_modal_actualiza').modal("hide");
                    mostrarMensaje(data.mensaje);
                },
                error: function(){
                    mostrarMensaje(MSG_ERROR);
                }
            });
        }
    });
    
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
            "nombre": {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 3 a 50 caracteres',
                    	min : 3,
                    	max : 50
                    }
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
            "tipoProveedor.idTipoProveedor": {
        		selector : '#id_reg_tipoProv',
                validators: {
                	notEmpty: {
                        message: 'El tipo un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>
<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"email": {
                selector : '#id_act_email',
                validators:{
                    notEmpty: {
                         message: 'El correo es obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    },
                }
            },
            "nombre": {
        		selector : '#id_act_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 3 a 50 caracteres',
                    	min : 3,
                    	max : 50
                    }
                }
            },
            "telefono": {
        		selector : '#id_act_telefono',
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
            "tipoProveedor.idTipoProveedor": {
        		selector : '#id_act_tipoProv',
                validators: {
                	notEmpty: {
                        message: 'El tipo un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>



<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">

<script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>

</body>
</html>