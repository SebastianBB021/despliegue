window.alert("Bienvenido a Yelmos Logistica y soluciones")

function validation (){
    //validacion de usuario
    var usuario = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    //verificacion de campos
    if(usuario =="")
        alert("Digite su nombre de usuario o documento")

    if(password=="")
        alert("Digite su contraseña")
        
      

    //consicional para l acontrasea usuario y rol
    if (usuario == "jiolia@playjvs07.xyz" && password == "admin123"){
        alert ("Bienvenido");
        window.location = "/verPerfilA";
    return false;
}
if (usuario == "francojohan451@gamil.com" && password == "personaN123" ){
    alert ("Bienvenido");
    window.location = "/verPerfilPN";
return false;
}
if (usuario == "francojohan321@gamil.com" && password == "personaJ123" ){
    alert ("Bienvenido");
    window.location = "/verPerfilPJ";
return false;
}
if (usuario == "johan12franco@gmail.com" && password == "gerente123"){
    alert ("Bienvenido");
    window.location = "/verPerfilG";
return false;
}
if (usuario == "123456789" && password == "cliente1234"){
    alert ("Bienvenido");
    window.location = "inicioCliente.html";
return false;
}else{
    alert("usuario y contraseña incorrecta")
}
}        


// mail =document.getElementById("mailEventos").value;

// function mailVerification(){
//     if( !(/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)/.test(mail)) ) {
//         return false;
//     }   
// }

// phoneEvent = document.getElementById("telEvento").value;
// function phoneVerification(){
//     if( !(/^\d{9}$/.test(phoneEvent)) ) {
//         alert("digite un numero valido")
//         return false;
//     }
// }
/* Validar solo nuemores */
 function valideKey(evt){
    
    // code is the decimal ASCII representation of the pressed key.
    var code = (evt.which) ? evt.which : evt.keyCode;
    
    if(code==8) { // backspace.
      return true;
    } else if(code>=48 && code<=57) { // is a number.
      return true;
    } else{ // other keys.
      return false;
    }
} 

function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = "áéíóúabcdefghijklmnñopqrstuvwxyz123456789";
    especiales = [8, 37, 39, 46];

    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(letras.indexOf(tecla) == -1 && !tecla_especial)
        return false;
}


/*   
function validarNumeros(e){
    Key=e.KeyCod || e.which;

    teclado= String.fromCharCode(Key);
    numero="0123456789";
    Tespeciales="8-37-38-46"
    Teclado_especial=false;

    for(var i in Tespeciales){
        if(Key=Tespeciales[i]){

            Teclado_especial=true;

        }

    }

    if(numero.indexOf(teclado)==-1 && !Teclado_especial){
        return false;

    }
} */


/* ***************** */
/* ***************** */
/* ***************** */
/* Validacion colores */



/* Validacion de Correo  */
function validacionEmail(){
    var correo = document.getElementById ("email").value;

    if(correo == "")
    alert("Ingrese su correo para enviar codigo")

    if(correo == "francojohan@gmail.com"){
        alert ("El codigo ya se ha enviado a su correo")
        return false
    }else{
        alert ("su correo no es valido")
    }
}






