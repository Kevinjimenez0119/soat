/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package base;

import com.mysql.jdbc.PreparedStatement;

import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author USUARIO
 */
public class Metodossql {
   
    public Metodossql()
    {
        
    }
    public void guardarcliente(String cedula, String nombre, String direccion, String telefono, String estado, String edad)
    {
        
        
        
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_guardar ="INSERT INTO clientes VALUES ('"+cedula+"','"+nombre+"','"+direccion+"','"+telefono+"','"+estado+"','"+edad+"')";
            
            PreparedStatement se= (PreparedStatement) cone.prepareStatement(sentencia_guardar);
            se.executeUpdate();
            
            
           
        } catch (Exception e) {
            System.out.println(e);
        }
       
    }
    public static String buscarcliente(String cedula)
    {
        String busqueda=null;
        
        PreparedStatement sentencia;
        ResultSet resultado;
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_buscar=("SELECT cedula FROM clientes WHERE cedula = '"+cedula+"'");
            sentencia = (PreparedStatement) cone.prepareStatement(sentencia_buscar);
            resultado = sentencia.executeQuery();
            if(resultado.next())
            {
                busqueda = "encontrado";
            }else
            {
                busqueda = "no encontrado";
            }
            cone.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return busqueda;
    }
    public static String buscarsoat(String placa)
    {
        String busqueda=null;
        
        PreparedStatement sentencia;
        ResultSet resultado;
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_buscar=("SELECT placa FROM soat WHERE placa = '"+placa+"'");
            sentencia = (PreparedStatement) cone.prepareStatement(sentencia_buscar);
            resultado = sentencia.executeQuery();
            if(resultado.next())
            {
                busqueda = "encontrado";
            }else
            {
                busqueda = "no encontrado";
            }
            cone.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return busqueda;
    }
  
    
    public void guardarsoat(String placa, String modelo, String marca, String año, String serial, String valorc, String cedulac, String monto)
    {
        
        
        
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_guardar ="INSERT INTO soat (placa,modelo,marca,año,serial,valorc,cedulacliente,monto) VALUES ('"+placa+"','"+modelo+"','"+marca+"','"+año+"','"+serial+"','"+valorc+"','"+cedulac+"','"+monto+"')";
            
            PreparedStatement se= (PreparedStatement) cone.prepareStatement(sentencia_guardar);
            se.executeUpdate();
            
            
           
        } catch (Exception e) {
            System.out.println(e);
        }
       
    }
    public static String buscarvehiculo(String placa)
    {
        String busqueda=null;
        
        PreparedStatement sentencia;
        ResultSet resultado;
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_buscar=("SELECT placa FROM vehiculo WHERE placa = '"+placa+"'");
            sentencia = (PreparedStatement) cone.prepareStatement(sentencia_buscar);
            resultado = sentencia.executeQuery();
            if(resultado.next())
            {
                busqueda = "encontrado";
            }else
            {
                busqueda = "no encontrado";
            }
            cone.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return busqueda;
    }
  
    public void guardarvehiculo(String placa, String modelo, String marca, String año, String serial, String valorc, String cedulac)
    {
        
        
        
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_guardar ="INSERT INTO vehiculos VALUES ('"+placa+"','"+modelo+"','"+marca+"','"+año+"','"+serial+"','"+valorc+"','"+cedulac+"')";
            
            PreparedStatement se= (PreparedStatement) cone.prepareStatement(sentencia_guardar);
            se.executeUpdate();
            
            
           
        } catch (Exception e) {
            System.out.println(e);
        }
       
    }
    public static String buscarpoliza(String placa)
    {
        String busqueda=null;
        
        PreparedStatement sentencia;
        ResultSet resultado;
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_buscar=("SELECT placa FROM ptr WHERE placa = '"+placa+"'");
            sentencia = (PreparedStatement) cone.prepareStatement(sentencia_buscar);
            resultado = sentencia.executeQuery();
            if(resultado.next())
            {
                busqueda = "encontrado";
            }else
            {
                busqueda = "no encontrado";
            }
            cone.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return busqueda;
    }
    public static String buscarclientepoliza(String cedula, String edad, String estado)
    {
        String busqueda=null;
        
        PreparedStatement sentencia;
        ResultSet resultado;
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_buscar=("SELECT cedula,estado,edad FROM clientes WHERE cedula = '"+cedula+"' && estado = '"+estado+"' && edad = '"+edad+"'");
            sentencia = (PreparedStatement) cone.prepareStatement(sentencia_buscar);
            resultado = sentencia.executeQuery();
            if(resultado.next())
            {
                busqueda = "encontrado";
            }else
            {
                busqueda = "no encontrado";
            }
            cone.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return busqueda;
    }
     public void guardarpoliza(String placa, String modelo, String marca, String año, String serial, String valorc, String cedulac, String radio, String rines, String aire, String monto, String m1, String m2, String m3)
    {
        
        
        
        try {
            Conexiondb c=new Conexiondb();
            Connection cone=null;
            cone = Conexiondb.conectar();
            String sentencia_guardar ="INSERT INTO ptr (placa,modelo,marca,año,serial,valorc,cedulacliente,radio,rines,aire,monto,montoradio,montorines,montoaire) VALUES ('"+placa+"','"+modelo+"','"+marca+"','"+año+"','"+serial+"','"+valorc+"','"+cedulac+"','"+radio+"','"+rines+"','"+aire+"','"+monto+"','"+m1+"','"+m2+"','"+m3+"')";
            
            PreparedStatement se= (PreparedStatement) cone.prepareStatement(sentencia_guardar);
            se.executeUpdate();
            
            
           
        } catch (Exception e) {
            System.out.println(e);
        }
       
    }
}

