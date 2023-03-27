<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form id="emailForm">
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
      </form>


      <script type="text/javascript">
             $(function() {
  $('#emailForm').submit(function(e) {
    e.preventDefault();
    
    var email = $('#email').val();
    
    $.ajax({
      url: '/sendEmail',
      type: 'POST',
      data: {email: email},
      success: function(data) {
        alert('Correo enviado exitosamente');
      },
      error: function() {
        alert('Ocurrió un error al enviar el correo');
      }
    });
  });
});
      </script>
</body>
</html>

