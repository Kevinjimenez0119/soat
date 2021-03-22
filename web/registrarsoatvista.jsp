<%-- 
    Document   : registrarsoatvista
    Created on : 23/05/2020, 05:39:35 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
    
    <meta name="viewport" content="width=device-width, maximum-scale=1.0">
    <title>Registros de soat</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <script class="vali2">
        
        function validarsoat()
        {
           var todo_correcto=true;
         if(document.getElementById('placa').value.length < 2 || document.getElementById('placa').value==""){
      todo_correcto = false;
      alert("La placa no puede ser vacio y menor a 2.");
      }
      if(isNaN(document.getElementById('a').value) || document.getElementById('a').value==""){
      todo_correcto = false;
      alert("El año no puede ser vacio y numerico.");
      }
      if(isNaN(document.getElementById('valorc').value) || document.getElementById('valorc').value==""){
      todo_correcto = false;
      alert("El valor comercial no puede ser vacio y numerico.");
      }
      if(isNaN(document.getElementById('cedc').value) || document.getElementById('cedc').value==""){
      todo_correcto = false;
      alert("La cedula no puede ser vacio y numerico.");
      }
      
      if(!document.getElementById('terminos2').checked){
      todo_correcto = false;
      
      }
      if(todo_correcto)
      {
          f2 = document.getElementById("form3");
          f2.submit();
      }
          
      }
    </script>
        <title>Registrar soat</title>
    </head>
    <body>
        <div class="displey-flex  main-login position-fixed-full">


            <div class="formulario contenedor-principal">





          <div class="formulario contenedor-principal">
          <h1 class="titulo">Registro de SOAT</h1>
          <h3 class="titulo">Digite todo en minusculas</h3>
          <form id="form3" action="registrarsoat.jsp" method="post" onsubmit="validarsoat(); return false;">
          <input name="placa" type="text" placeholder="placa"  id="placa" value="" class="input-text">
          <input name="modelo" type="text" placeholder="modelo" id="mod" value="" class="input-text">
          <input name="marca" type="text" placeholder="marca"  id="marca" value="" class="input-text">
          <input name="a" type="text" placeholder="año" id="a" value="" class="input-text">
          <input name="serial" type="text" placeholder="serial"  id="serial" value="" class="input-text">
          <input name="valorc" type="text" placeholder="valor comercial"  id="valorc" value="" class="input-text">
          <input name="cedulac" type="text" placeholder="cedula cliente"  id="cedc" value="" class="input-text">
          <div class="displey-flex">
           <!-- INGRESAR -->
           <button name="Ingresar2" id="calc2" type="submit">Registrar SOAT</button>
           <a href="Reportes.jsp" class="btn btn-success">Reportes</a>
           <a href="index.jsp" class="btn btn-success">soat</a>
           <a href="registrarptrvista.jsp" class="btn btn-success">PTR</a>
           <a href="Buscarcliente.jsp" class="btn btn-success">Buscar cliente</a>
          </div>
          </form>
          <div class="displey-flex contenedor-selector">


    <div class="selector">
     

      <div class="terminos">
        <input type="checkbox" id="terminos2" name="terminodeuso" value="ter">
        <label for="termino1"> Acepto los terminos</label><br>

      </div>
      </div>
        </div>
          </div>
        </div>
          </div>
    </body>
</html>
