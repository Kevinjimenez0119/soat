<%-- 
    Document   : registrarsoat
    Created on : 23/05/2020, 01:43:42 PM
    Author     : USUARIO
--%>

<%@page import="base.Metodossql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
                String plac=request.getParameter("placa");
                String mod=request.getParameter("modelo");
                String mar=request.getParameter("marca");
                String a=request.getParameter("a");
                String ser=request.getParameter("serial");
                String valor=request.getParameter("valorc");
                String ced=request.getParameter("cedulac");
                double mo=Integer.parseInt(valor);
                double mont=mo*0.01;
                String monto=String.valueOf(mont);
                Metodossql m=new Metodossql();
                if(m.buscarcliente(ced).equals("encontrado"))
                {
                    if(m.buscarsoat(plac).equals("no encontrado"))
                    {
                        m.guardarsoat(plac, mod, mar, a, ser, valor, ced, monto);
                        
                            m.guardarvehiculo(plac, mod, mar, a, ser, valor, ced);
                        
                        
                    }
                
                }
%>
<jsp:forward page="registrarsoatvista.jsp"></jsp:forward>
