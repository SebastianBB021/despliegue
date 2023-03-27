var MSG_ERROR = "Se gener&oacute; un error, consulte al administrador";
var MSG_ELIMINAR = "&#191;Desea eliminar el registro&#63;";

function mostrarMensaje(msg, ejecutarAccion){
	$('#id_my_modal').remove();
	
	$("body").append( '<div class="modal fade" id="id_my_modal" role="dialog">'+
                      '<div class="modal-dialog modal-confirm">'+
                          '<div class="modal-content">'+
                              '<div class="modal-header flex-column">'+
                                  '<div class="icon-box">'+
                                      '<i class="material-icons">&hellip;</i>'+
                                  '</div>'+
                                  '<h4 class="modal-title w-100">Mensaje</h4>'+
                                  '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>'+
                              '</div>'+
                              '<div class="modal-body">'+
                                  '<h5>'+msg+'</h5>'+
                              '</div>'+
                              '<div class="modal-footer justify-content-center">'+
                                  '<button type="button" class="btn btn-danger" id="id_btn_dialog_aceptar">Aceptar</button>'+
                              '</div>'+
                              '</div></div></div>');
	
	$("#id_btn_dialog_aceptar").click(function(){
		$('#id_my_modal').modal("hide");
		if(ejecutarAccion != undefined){
			window.location.href = ejecutarAccion;
		}
	});
	
	$('#id_my_modal').modal("show");
}


function mostrarMensajeConfirmacion(msg, accionAceptar, accionCancelar, data){
	$('#id_my_modal_confirmacion').remove();
	
	$("body").append('<div id="id_my_modal_confirmacion" class="modal fade" role="dialog">'+
                     '<div class="modal-dialog modal-confirm">'+
                         '<div class="modal-content">'+
                             '<div class="modal-header flex-column">'+
                                 '<div class="icon-box">'+
                                     '<i class="material-icons">&#xE5CD;</i>'+
                                 '</div>'+
                                 '<h4 class="modal-title w-100">Mensaje</h4>'+
                                 '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>'+
                             '</div>'+
                             '<div class="modal-body">'+
                                 '<p>'+msg+'</p>'+
                             '</div>'+
                             '<div class="modal-footer justify-content-center">'+
                                 '<button type="button" class="btn btn-secondary" id="id_btn_dialog_no">Cancel</button>'+
                                 '<button type="button" class="btn btn-danger" id="id_btn_dialog_si">Delete</button>'+
                             '</div> </div> </div> </div>');
	
	$("#id_btn_dialog_si").click(function(){
		$('#id_my_modal_confirmacion').modal("hide");
		if(accionAceptar != null){
			accionAceptar(data);
		}
	});
	$("#id_btn_dialog_no").click(function(){
		$('#id_my_modal_confirmacion').modal("hide");
		if(accionCancelar != null){
			accionCancelar(data);
		}
	});
	
	$('#id_my_modal_confirmacion').modal("show");
}
