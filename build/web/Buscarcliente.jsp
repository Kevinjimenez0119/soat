<%-- 
    Document   : reportes
    Created on : 23/05/2020, 05:41:49 PM
    Author     : USUARIO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
    
    <meta name="viewport" content="width=device-width, maximum-scale=1.0">
    <title>Buscar cliente y comision</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    </head>
    <body>
        <a href="Reportes.jsp" class="btn btn-success">Reportes</a>
           <a href="registrarsoatvista.jsp" class="btn btn-success">soat</a>
           <a href="registrarptrvista.jsp" class="btn btn-success">PTR</a>
           <a href="index.jsp" class="btn btn-success">clientes</a>
        <form id="form5">
                <h3 class="titulo">Digite todo en minusculas</h3>
          <input name="placa3" type="text" placeholder="cedula"  id="placa2" value="" class="input-text">
          <div class="displey-flex">
           
           <button name="most" id="cal">Buscar cliente</button>
          </div>
            </form>
         <h1> listado de los vehiculos del cliente</h1>
        <table border="1" width="600">
            <tr bgcolor="skyblue">
                <th>placa</th><th>modelo</th><th>marca</th><th>año</th><th>serial</th><th>valoc</th>
                <th>cedulacliente</th>
            </tr>
            <% 
        
     if(request.getParameter("most")!=null)
     {
        try {
            Connection con=null;
        Statement st=null;
        ResultSet re=null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/web2parcial", "root", "");
            System.out.println("conexion establecida");
            st = con.createStatement();
            re = st.executeQuery("select * from vehiculos where cedulacliente='" +request.getParameter("placa3")+"'");
            while(re.next()){
            %>
            <tr>
                <th><%=re.getString(1) %></th>
                <th><%=re.getString(2) %></th>
                <th><%=re.getString(3) %></th>
                <th><%=re.getString(4) %></th>
                <th><%=re.getString(5) %></th>
                <th><%=re.getString(6) %></th>
                <th><%=re.getString(7) %></th>
                
                
                
            </tr>
            
            
    
                
            <% 
                }
            } catch (Exception e) {
                 System.out.println(e);
            }
}
        %>
                    </table>
                    
                    <h1> Comision del 15%</h1>
                    <table border="1" width="600">
            <tr bgcolor="skyblue">
                <th>id</th><th>Comision 15 %</th>
            </tr>
            <% 
        
     
        try {
            Connection con=null;
        Statement st=null;
        ResultSet re=null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/web2parcial", "root", "");
            System.out.println("conexion establecida");
            st = con.createStatement();
            re = st.executeQuery("select idsoat,monto from soat ");
            while(re.next()){
            %>
            <tr>
                <th>SOAT=<%=re.getString(1) %></th>
                <th><%=re.getInt(2)*0.15%></th>
                
                
                
                
            </tr>
            
            
    
                
            <% 
                }
            } catch (Exception e) {
                 System.out.println(e);
            }

        %><% 
        
     
        try {
            Connection con=null;
        Statement st=null;
        ResultSet re=null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/web2parcial", "root", "");
            System.out.println("conexion establecida");
            st = con.createStatement();
            re = st.executeQuery("select idptr,monto from ptr ");
            while(re.next()){
            %>
            <tr>
                <th>PTR=<%=re.getString(1)%></th>
                <th><%=re.getInt(2)*0.15%></th>
                
                
                
                
            </tr>
            
            
    
                
            <% 
                }
            } catch (Exception e) {
                 System.out.println(e);
            }

        %>
                    </table>
    </body>
</html>
