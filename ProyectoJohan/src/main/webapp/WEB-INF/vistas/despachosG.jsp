
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
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
    <link rel="stylesheet" href="css/despachos.css" />
    <link rel="stylesheet" href="css/msg.css" />
    <link rel="stylesheet" href="css/logo.css" />
    <title>Despachos</title>
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
                <a href="/verReservasG" class="dropdown-item">Reservas</a>
                <div class="dropdown-divider"></div>
                <a href="/verDespachosG" class="dropdown-item">Despachos</a>
              </div>
            </div>
          </div>
          <div class="navbar-nav ml-auto" id="segundo">
            <a href="#" class="nav-item nav-link notifications"><i class="fa fa-bell-o"></i><span class="badge">1</span></a>
            <div class="nav-item dropdown">
              <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action"><img src="img/ADMIN.png" class="avatar" alt="Avatar"> Carlos Gerent</b></a>
              <div class="dropdown-menu">
                <a href="/verPerfilG" class="dropdown-item"><i class="fa fa-user-o"></i> Perfil</a></a>
                <div class="dropdown-divider"></div>
                <a href="/verLogin" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Salir</a></a>
              </div>
            </div>
          </div>
        </div>
      </nav>
    <!--Nav-->

    
    <div class="container-xl">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-4">
                            <h2>Crud <b>Despachos</b></h2>
                        </div>
                        <div class="col-sm-8">			
                            <a href="#" class="btn btn-primary" id="id_btn_filtrar"><i class="material-icons">&#xE863;</i> <span>Refrescar Datos</span></a>
                            <a href="#" class="btn btn-secondary" data-toggle="modal" data-target="#id_div_modal_registra"><i class="material-icons">&#xE148;</i> <span>Agregar Despachos</span></a>
                            <input type="text" id="id_txt_filtro" style="width: 38%;" class="form-control" placeholder="Buscar&hellip;">	
                        </div>
                    </div>
                </div>
                <table class="table table-striped" id="id_table"> 
                    <thead>
                        <tr>
                            <th>IdDespachos</th>
                            <th>Cantidad Salida</th>
                            <th>Estado</th>
                            <th>Fecha Salida</th>						
                            <th>Packing</th>						
                            <th>Producto</th>
                            <th>Action</th>
                            <th>Action</th>
                            
                        </tr>
                    </thead>
                    <tfoot>
                    </tfoot>
                </table>
            </div>
        </div> 
        <!-- Modal de Agregar Cliente -->
        <div class="modal fade" id="id_div_modal_registra" >
            <div class="modal-dialog" style="width: 60%">
        
                <!-- Modal content-->
                <div class="modal-content">
                <div class="modal-header" style="padding: 35px 50px">
                    Registro de Despachos
                </div>
                <div class="modal-body" style="padding: 20px 10px;">
                        <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudCliente" class="form"  method="post">
                            <div class="panel-group" id="steps">
                                <!-- Step 1 -->
                                        <div class="panel-body">
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Cantidad</label>
                                                    <input class="form-control" id="id_reg_cantidad" name="cantidadSalida" placeholder="Ingrese cantidad Salida: " type="int"/>
                                                </div>
                                                <div class="form-group col">
                                                    <label>Estado</label>
                                                    <input  class="form-control" id="id_reg_estado" name="estado" placeholder="Ingrese estado: " type="text"/>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col">
                                                    <label>Fecah Salida</label>
                                                    <input class="form-control" id="id_reg_fechaSal" name="fechaSalida" placeholder="Ingrese fecha Inicio: " type="date"  />
                                                </div>
                                            
                                                <div class="form-group col">
                                                    <label>Packing</label>
                                                    <select class="form"  id="id_reg_packing" name="packing">
                                                        <option value=" "><-Seleccione-></option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Producto</label>
                                                <select  style="width: 100%;" class="form"  id="id_reg_producto" name="producto">
                                                    <option value=" "><-Seleccione-></option>
                                                </select>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <div class="col-lg-9 col-lg-offset-3">
                                                    <button type="button" class="btn btn-success" id="id_btn_registra">Registrar</button>
                                                    <button type="button" class="btn btn-warning" data-dismiss="modal" value="Cancel">Cancelar</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>   
                
                <!-- Modal de Actualizar Cliente -->
                <div class="modal fade" id="id_div_modal_actualiza" >
                    <div class="modal-dialog" style="width: 60%">
                
                        <div class="modal-content">
                        <div class="modal-header" style="padding: 35px 50px">
                            Actualiza despacho
                        </div>
                        <div class="modal-body" style="padding: 20px 10px;">
                                <form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudCliente" class="form"     method="post">
                                    <div class="panel-group" id="steps">
                                        <!-- Step 1 -->
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <label>ID</label>
                                                        <input class="form-control" id="id_ID" readonly="readonly" name="idDespacho" type="text" maxlength="8"/>
                                                     </div>
                                                     <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Cantidad</label>
                                                            <input class="form-control" id="id_act_cantidad" name="cantidadSalida" placeholder="Ingrese cantidad Salida: " type="int"/>
                                                        </div>
                                                        <div class="form-group col">
                                                            <label>Estado</label>
                                                            <input  class="form-control" id="id_act_estado" name="estado" placeholder="Ingrese estado: " type="text"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Fecah Salida</label>
                                                            <input class="form-control" id="id_act_fechaSal" name="fechaSalida" placeholder="Ingrese fecha Inicio: " type="date"  />
                                                        </div>
                                                    
                                                        <div class="form-group col">
                                                            <label>Packing</label>
                                                            <select class="form"  id="id_act_packing" name="packing">
                                                                <option value=" "><-Seleccione-></option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Producto</label>
                                                        <select  style="width: 100%;" class="form"  id="id_act_producto" name="producto">
                                                            <option value=" "><-Seleccione-></option>
                                                        </select>
                                                    </div>
                                                    <br>
                                                    <div class="form-group">
                                                        <div class="col-lg-9 col-lg-offset-3">
                                                            <button type="button" class="btn btn-success" id="id_btn_actualiza">Actualizar</button>
                                                            <input type="button" class="btn btn-warning" data-dismiss="modal" value="Cancel">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
    </div>  
    
    

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
            columns:[
                {data: "idDespacho"},
                {data: "cantidadSalida"},
                {data: "estado"},
                {data: "fechaSalida"},
                {data: "packing.fechaEntrega"},
                {data: "producto.nombre"},
                {data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 40px" class="btn btn-warning btn-sm" onclick="editar(\'' + row.idDespacho + '\', \'' + row.cantidadSalida + '\', \'' + row.estado + '\', \'' + row.fechaSalida + '\', \'' + row.packing.idPacking + '\', \'' + row.producto.idProducto + '\')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 50px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idDespacho + '\')"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE14B;</i></button>';
					return salida;
				},className:'text-center'},	
            ]
        });
    }

    $("#id_btn_filtrar").click(function(){
        var fil = $("#id_txt_filtro").val();
        $.getJSON("filtrarDespachoG",{"filtro": fil},function(lista){
            listarDatos(lista);
        });
    });

    function accionEliminar(id){
    $.ajax({
        type: "POST",
        url:  "eliminarDespachoG",
        data: {"id":id},
        success: function(data){
            listarDastos(data.lista);
            mostrarMensaje(data.mensaje);
        },
        error: function(){
            mostrarMensaje(MSG_ERROR);
        }
    });
}
function eliminar(id){
    mostrarMensajeConfirmacion(MSG_ELIMINAR,accionEliminar,null,id);
}

/*Listar Foraneas*/
$.getJSON("listaPackingG", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_packing").append("<option value="+item.idPacking +">"+ item.idPacking +"</option>");
		$("#id_act_packing").append("<option value="+item.idPacking +">"+ item.idPacking +"</option>");
	});
});
/*Listar Foraneas*/
/*Listar Foraneas*/
$.getJSON("listaProductosG", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_producto").append("<option value="+item.idProducto +">"+ item.nombre +"</option>");
		$("#id_act_producto").append("<option value="+item.idProducto +">"+ item.nombre +"</option>");
	});
});
/*Listar Foraneas*/


function limpiarFormulario(){
    $('#id_reg_cantidad').val('');
    $('#id_reg_estado').val('');
    $('#id_reg_fechaSal').val('');
    $('#id_reg_packing').val('');
    $('#id_reg_producto').val('');
}

$("#id_btn_registra").click(function(){
    var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();

    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "insertarDespachoG",
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

function editar(id,cantidadSalida,estado,fechaSalida,idPacking,idProducto){
    $('#id_ID').val(id);
    $('#id_act_cantidad').val(cantidadSalida);
    $('#id_act_estado').val(estado);
    $('#id_act_fechaSal').val(fechaSalida);
    $('#id_act_packing').val(idPacking);
    $('#id_act_producto').val(idProducto);
    $('#id_div_modal_actualiza').modal("show");
}

$("#id_btn_actualiza").click(function(){
    var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "actualizarDespachoG",
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
        	"cantidadSalida":{
            	selector : '#id_reg_cantidad',
                validators: {
                	notEmpty: {
                        message: 'La cantidad esobligatorio'
                    },
                }
            },
            "estado": {
        		selector : '#id_reg_estado',
                validators: {
                	notEmpty: {
                        message: 'El estado es obligatorio'
                    },
                }
            },
            "fechaSalida":{
            	 selector: "#id_reg_fechaSal",
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
            "packing.nombre": {
        		selector : '#id_reg_packing',
                validators: {
                	notEmpty: {
                        message: 'Packing es obligatorio'
                    },
                }
            },
            "producto.nombre": {
        		selector : '#id_reg_producto',
                validators: {
                	notEmpty: {
                        message: 'Producto es obligatorio'
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
        	"cantidadSalida":{
            	selector : '#id_act_cantidad',
                validators: {
                	notEmpty: {
                        message: 'La cantidad esobligatorio'
                    },
                }
            },
            "estado": {
        		selector : '#id_act_estado',
                validators: {
                	notEmpty: {
                        message: 'El estado es obligatorio'
                    },
                }
            },
            "fechaSalida":{
            	 selector: "#id_act_fechaSal",
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
            "packing.nombre": {
        		selector : '#id_act_packing',
                validators: {
                	notEmpty: {
                        message: 'Packing es obligatorio'
                    },
                }
            },
            "producto.nombre": {
        		selector : '#id_act_producto',
                validators: {
                	notEmpty: {
                        message: 'Producto es obligatorio'
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