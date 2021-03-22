<%-- 
    Document   : registrarpoliza
    Created on : 23/05/2020, 02:22:19 PM
    Author     : USUARIO
--%>

<%@page import="base.Metodossql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
                String plac=request.getParameter("placa2");
                String mod=request.getParameter("modelo2");
                String mar=request.getParameter("marca2");
                String a=request.getParameter("a2");
                String ser=request.getParameter("serial2");
                String valor=request.getParameter("valorc2");
                String ced=request.getParameter("cedulac2");
                String estado=request.getParameter("esta");
                String dad=request.getParameter("ed");
                String s1=request.getParameter("hab1");
                String s2=request.getParameter("hab2");
                String s3=request.getParameter("hab3");
                String m1=request.getParameter("monto1");
                String m2=request.getParameter("monto2");
                String m3=request.getParameter("monto3");
                double monedad;
                double mo=Integer.parseInt(valor);
                double mo1=Integer.parseInt(m1);
                double mo2=Integer.parseInt(m2);
                double mo3=Integer.parseInt(m3);
                double mon1=mo1*0.1;
                double mon2=mo2*0.1;
                double mon3=mo3*0.1;
                double mont=mon1+mon2+mon3;
                int edad=Integer.parseInt(dad);
                if(edad>60)
                {
                    monedad=mo*0.04;
                }else if(edad<60 && edad>40)
                {
                    monedad=mo*0.06;
                }else 
                {
                    monedad=mo*0.08;
                }
                double k=mont+monedad;
                String monto=String.valueOf(k);
                Metodossql m=new Metodossql();
                if(m.buscarclientepoliza(ced,dad,estado).equals("encontrado"))
                {
                    if(m.buscarpoliza(plac).equals("no encontrado"))
                    {
                        m.guardarpoliza(plac, mod, mar, a, ser, valor, ced, s1, s2, s3, monto, m1, m2, m3);
                       
                        
                    }
                
                }
%>
<jsp:forward page="registrarptrvista.jsp.jsp"></jsp:forward>
