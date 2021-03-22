<%-- 
    Document   : registrarptrvista
    Created on : 23/05/2020, 05:47:31 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
    
    <meta name="viewport" content="width=device-width, maximum-scale=1.0">
    <title>Registros de ptr</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <script class="vali2">
        
        function validarpoliza()
        {
           var todo_correcto=true;
         if(document.getElementById('placa2').value.length < 2 || document.getElementById('placa2').value==""){
      todo_correcto = false;
      alert("La placa no puede ser vacio y menor a 2.");
      }
      if(isNaN(document.getElementById('a2').value) || document.getElementById('a2').value==""){
      todo_correcto = false;
      alert("El año no puede ser vacio y numerico.");
      }
      if(isNaN(document.getElementById('valorc2').value) || document.getElementById('valorc2').value==""){
      todo_correcto = false;
      alert("El valor comercial no puede ser vacio y numerico.");
      }
      if(isNaN(document.getElementById('cedc2').value) || document.getElementById('cedc2').value==""){
      todo_correcto = false;
      alert("La cedula no puede ser vacio y numerico.");
      }
      if(!document.getElementById('esta').value=="soltero" || !document.getElementById('esta').value=="casado" || document.getElementById('esta').value==""){
      todo_correcto = false;
      alert("Debe de escribir un estado valido.");
      }
      if(isNaN(document.getElementById('edaa').value) || document.getElementById('edaa').value==""){
      todo_correcto = false;
      alert("La edad no puede ser vacio y numerico.");
      }
      if(isNaN(document.getElementById('m1').value) || document.getElementById('m1').value==""){
      todo_correcto = false;
      alert("El monto no puede ser vacio y numerico.");
      }
      if(isNaN(document.getElementById('m2').value) || document.getElementById('m2').value==""){
      todo_correcto = false;
      alert("El monto no puede ser vacio y numerico.");
      }
      if(isNaN(document.getElementById('m3').value) || document.getElementById('m3').value==""){
      todo_correcto = false;
      alert("El monto no puede ser vacio y numerico.");
      }
      if(!document.getElementById('terminos3').checked){
      todo_correcto = false;
      
      }
      if(todo_correcto)
      {
          f3 = document.getElementById("form4");
          f3.submit();
      }
          
      }
           
    </script>
    </head>
    <body>
        <div class="displey-flex  main-login position-fixed-full">


            <div class="formulario contenedor-principal">





          <div class="formulario contenedor-principal">
          <h1 class="titulo">Registro de polizas a todo riesgo</h1>
          <h3 class="titulo">Digite todo en minusculas</h3>
          <form id="form4" action="registrarpoliza.jsp" method="post" onsubmit="validarpoliza(); return false;">
          <input name="placa2" type="text" placeholder="placa"  id="placa2" value="" class="input-text">
          <input name="modelo2" type="text" placeholder="modelo" id="mod2" value="" class="input-text">
          <input name="marca2" type="text" placeholder="marca"  id="marc2" value="" class="input-text">
          <input name="a2" type="text" placeholder="año" id="a2" value="" class="input-text">
          <input name="serial2" type="text" placeholder="serial"  id="serial2" value="" class="input-text">
          <input name="valorc2" type="text" placeholder="valor comercial"  id="valorc2" value="" class="input-text">
          <input name="cedulac2" type="text" placeholder="cedula cliente"  id="cedc2" value="" class="input-text">
          <input name="ed" type="text" placeholder="edad"  id="edaa" value="" class="input-text">
          <input name="esta" type="text" placeholder="estado civil (soltero-casado)" id="esta" class="input-text">
          <input name="monto1" type="text" placeholder="monto de radio"  id="m1" value="" class="input-text">
          <input name="monto2" type="text" placeholder="monto de rines"  id="m2" value="" class="input-text">
          <input name="monto3" type="text" placeholder="monto de aire acondicionado"  id="m3" value="" class="input-text">
          <div class="displey-flex">
           <!-- INGRESAR -->
           <button name="Ingresar3" id="calc3" type="submit">Registrar poliza</button>
           <a href="Reportes.jsp" class="btn btn-success">Reportes</a>
           <a href="registrarsoatvista.jsp" class="btn btn-success">soat</a>
           <a href="index.jsp" class="btn btn-success">Clientes</a>
           <a href="Buscarcliente.jsp" class="btn btn-success">Buscar clientes</a>
          </div>
         
          <div class="displey-flex contenedor-selector">


    <div class="selector">
     <h5 class="subtitulo">Asegurar</h5>
      <input type="checkbox" id="s1" name="hab1" value="radio">
      <label for="habilidad1"> radio</label><br>
      <input type="checkbox" id="s2" name="hab2" value="rines">
      <label for="habilidad2"> rines</label><br>
      <input type="checkbox" id="s3" name="hab3" value="aire acondicionado">
      <label for="habilidad3"> aire acondicionado</label><br>
      </div>

      <div class="terminos">
        <input type="checkbox" id="terminos3" name="terminodeuso" value="ter">
        <label for="termino1"> Acepto los terminos</label><br>

      </div>
      
        </div>
           </form>
          </div>
        </div>
          </div>
    </body>
</html>
