<%-- 
    Document   : registrar
    Created on : 23/05/2020, 12:46:34 PM
    Author     : USUARIO
--%>

<%@page import="base.Metodossql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String ced=request.getParameter("cedula");
                String nom=request.getParameter("nombres");
                String dir=request.getParameter("direccion");
                String tel=request.getParameter("telefono");
                String est=request.getParameter("estado");
                String edad=request.getParameter("edad");
                Metodossql m=new Metodossql();
                if(m.buscarcliente(ced).equals("no encontrado"))
                {
                m.guardarcliente(ced, nom, dir, tel, est, edad);
                }
%>
<jsp:forward page="index.jsp"></jsp:forward>
