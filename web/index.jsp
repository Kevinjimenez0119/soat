<%-- 
    Document   : registrarclientevista
    Created on : 23/05/2020, 05:36:10 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
    
    <meta name="viewport" content="width=device-width, maximum-scale=1.0">
    <title>Registros de clientes</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <script class="vali">
        function validarcliente()
        {
           var todo_correcto=true;
            if(document.getElementById('nom').value.length < 2 || document.getElementById('nom').value==""){
      todo_correcto = false;
      alert("El nombre no puede ser vacio y menor a 2.");
      }
      if(isNaN(document.getElementById('tel').value) || document.getElementById('tel').value==""){
      todo_correcto = false;
      alert("El telefono no puede ser vacio y numerico.");
      }
      if(isNaN(document.getElementById('ced').value) || document.getElementById('ced').value==""){
      todo_correcto = false;
      alert("El documento no puede ser vacio y numerico.");
      }
      if(!document.getElementById('est').value=="soltero" || !document.getElementById('est').value=="casado" || document.getElementById('est').value==""){
      todo_correcto = false;
      alert("Debe de escribir un estado valido.");
      }
      if(isNaN(document.getElementById('eda').value) || document.getElementById('eda').value==""){
      todo_correcto = false;
      alert("La edad no puede ser vacio y numerico.");
      }
      
      
      if(!document.getElementById('terminos').checked){
      todo_correcto = false;
      
      }
      if(todo_correcto)
      {
          f1 = document.getElementById("form2");
          f1.submit();
      }
          
      }
    </script>
        <title>Seguros</title>
    </head>
    <body>
        <div class="displey-flex  main-login position-fixed-full">


            <div class="formulario contenedor-principal">





          <div class="formulario contenedor-principal">
          <h1 class="titulo">Registro de clientes</h1>
          <h3 class="titulo">Digite todo en minusculas</h3>
          <form id="form2" action="registrarcliente.jsp" method="post" onsubmit="validarcliente(); return false;">
          <input name="cedula" type="text"  placeholder="cedula" id="ced" class="input-text">
          <input name="nombres" type="text" placeholder="nombre completo" id="nom" class="input-text">
          <input name="telefono" type="text" placeholder="telefono"  id="tel" class="input-text">
          <input name="direccion" type="text" placeholder="direccion" id="dir" class="input-text">
          <input name="estado" type="text" placeholder="estado civil (soltero-casado)" id="est" class="input-text">
          <input name="edad" type="text" placeholder="edad"  id="eda" value="" class="input-text">
           <div class="displey-flex">
           <!-- INGRESAR -->
           <button name="Ingresar" id="calc" type="submit">Registrar</button>
           <a href="Reportes.jsp" class="btn btn-success">Reportes</a>
           <a href="registrarsoatvista.jsp" class="btn btn-success">soat</a>
           <a href="registrarptrvista.jsp" class="btn btn-success">PTR</a>
           <a href="Buscarcliente.jsp" class="btn btn-success">buscar cliente</a>
          </div>
  			
          </form>
          <div class="displey-flex contenedor-selector">


    <div class="selector">
     

      <div class="terminos">
        <input type="checkbox" id="terminos" name="terminodeuso" value="ter">
        <label for="termino1"> Acepto los terminos</label><br>

      </div>
      </div>
        </div>
          </div>
        </div>
          </div>
    </body>
</html>
