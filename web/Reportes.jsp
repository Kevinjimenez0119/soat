<%-- 
    Document   : Reportes
    Created on : 23/05/2020, 05:49:26 PM
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
    <title>Reportes</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    </head>
    <body>
        <a href="index.jsp" class="btn btn-success">Clientes</a>
           <a href="registrarsoatvista.jsp" class="btn btn-success">soat</a>
           <a href="registrarptrvista.jsp" class="btn btn-success">PTR</a>
           <a href="Buscarcliente.jsp" class="btn btn-success">Buscar cliente</a>
        <h1> listado de los vehiculos registrados</h1>
        <table border="1" width="400">
            <tr bgcolor="skyblue">
                <th>placa</th><th>modelo</th><th>marca</th><th>año</th><th>serial</th>
                <th>valor</th><th>cedula</th>
            </tr>
        

        <% 
        Connection con=null;
        Statement st=null;
        ResultSet re=null;
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/web2parcial", "root", "");
            System.out.println("conexion establecida");
            st = con.createStatement();
            re = st.executeQuery("select * from vehiculos");
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

        %>
        </table>
        <h1> listado de los clientes registrados</h1>
        <table border="1" width="400">
            <tr bgcolor="skyblue">
                <th>cedula</th><th>nombres</th><th>direccion</th><th>telefono</th><th>estado</th>
                <th>edad</th>
            </tr>
        

        <% 
        
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/web2parcial", "root", "");
            System.out.println("conexion establecida");
            st = con.createStatement();
            re = st.executeQuery("select * from clientes");
            while(re.next()){
            %>
            <tr>
                <th><%=re.getString(1) %></th>
                <th><%=re.getString(2) %></th>
                <th><%=re.getString(3) %></th>
                <th><%=re.getString(4) %></th>
                <th><%=re.getString(5) %></th>
                <th><%=re.getString(6) %></th>
                
                
                
            </tr>
            
            
    
                
            <% 
                }
            } catch (Exception e) {
                 System.out.println(e);
            }

        %>
        </table>
        
        <h1> listado de los SOAT registrados</h1>
        <table border="1" width="700">
            <tr bgcolor="skyblue">
                <th>placa</th><th>modelo</th><th>marca</th><th>año</th><th>serial</th>
                <th>valorc</th><th>cedula cliente</th><th>monto</th><th>idsoat</th>
            </tr>
        

        <% 
        
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/web2parcial", "root", "");
            System.out.println("conexion establecida");
            st = con.createStatement();
            re = st.executeQuery("select * from soat");
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
                <th><%=re.getString(8) %></th>
                <th><%=re.getString(9) %></th>
                
                
                
            </tr>
            
            
    
                
            <% 
                }
            } catch (Exception e) {
                 System.out.println(e);
            }

        %>
        </table>
         <h1> listado de los PTR registrados</h1>
        <table border="1" width="800">
            <tr bgcolor="skyblue">
                <th>idptr</th><th>placa</th><th>modelo</th><th>marca</th><th>año</th><th>serial</th>
                <th>valorc</th><th>cedula cliente</th><th>radio</th><th>rines</th><th>aire</th><th>monto</th>
            </tr>
        

        <% 
        
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/web2parcial", "root", "");
            System.out.println("conexion establecida");
            st = con.createStatement();
            re = st.executeQuery("select * from ptr");
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
                <th><%=re.getString(8) %></th>
                <th><%=re.getString(9) %></th>
                <th><%=re.getString(10) %></th>
                <th><%=re.getString(11) %></th>
                <th><%=re.getString(12) %></th>
                
                
                
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
