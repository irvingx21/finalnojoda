/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.print.attribute.standard.DateTimeAtCompleted;

/**
 *
 * @author Usuario
 */
public class Consultas extends Conexion {
    
    public boolean autentificacion(String usuario , String contraseña){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta="select * from administrador where  usuario =? and contraseña = ? ";
            pst = getConnection().prepareStatement(consulta,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            //pst.setString(1, usuario);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            rs = pst.executeQuery();
            
            if (rs.absolute(1)) {
                return true;
            }
      
        } catch (Exception e) {
            System.out.println("Error "+e);
        }finally{
            try {
                if(getConnection() != null)getConnection().close();
                if(pst != null)pst.close();
                if(rs != null)rs.close();
            } catch (Exception e) {
                System.out.println("Error "+e);
            }
        }
        
     return false;   
    }
    
    public boolean registrar (String Cedula,String Nombres,String Apellidos,String Residencia, String Direccion, String Telefono){
        
        PreparedStatement pst=null;
        try {
            String consulta="insert into propietario (cedula,nombres,apellidos,residencia,direccion,telefono) values (?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
            //pst = getConnection().prepareStatement(consulta,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            pst.setString(1, Cedula);
            pst.setString(2, Nombres);
            pst.setString(3, Apellidos);
            pst.setString(4, Residencia);
            pst.setString(5, Direccion);
            pst.setString(6, Telefono);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
        }finally{
            try {
                if(getConnection()!=null)getConnection().close();
                if (pst != null) pst.close();
               
            } catch (Exception e) {
                System.out.println("Error "+e);
            }
        }
        return false;
    }
    
    public boolean registrarmatricula (String codigo,
            String fechamatriculacionanterior,
            String fechamatriculacionactual,
            String caduca,
            String jefatura, 
            String totalmatricula,
            String revision,
            String multa,
            String placaactual,
            String cedulapropietario){
        
        PreparedStatement pst=null;
        try {
            String consulta="insert into matricula (codigo,fechamatriculacionanterior,fechamatriculacionactual,caduca"
                    + ",jefatura,totalmatricula,revicion,multa,placaactual,cedulapropietario) values (?,?,?,?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
            //pst = getConnection().prepareStatement(consulta,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            pst.setString(1, codigo);
            pst.setString(2, fechamatriculacionanterior);
            pst.setString(3, fechamatriculacionactual);
            pst.setString(4, caduca);
            pst.setString(5, jefatura);
            pst.setString(6, totalmatricula);
            pst.setString(7, revision);
            pst.setString(8, multa);
            pst.setString(9, placaactual);
            pst.setString(10, cedulapropietario);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
        }finally{
            try {
                if(getConnection()!=null)getConnection().close();
                if (pst != null) pst.close();
               
            } catch (Exception e) {
                System.out.println("Error "+e);
            }
        }
        return false;
    }
    
    public boolean actualizarmatricula (String codigo,
            String fechadematriculacionanterior,
            String fechadematriculacionactual,
            String caduca,
            String jefatura, 
            String totaldematricula,
            String revision,
            String multa,
            String placaactual,
            String cedulapropietario){
        
        PreparedStatement pst=null;
        try {
            String consulta="update matricula set fechadeatriculacionanterior=?,fechadematriculacionactual=?,"
                    + "caduca=?,jefatura=?,totaldematricula=?,revision=?,"
                    + "multa=?,placaactual=?,cedulapropietario=? where  codigo=?;";
            //pst = getConnection().prepareStatement(consulta);
            //pst = getConnection().prepareStatement(consulta,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            pst.executeUpdate(consulta);
            pst.setString(1, fechadematriculacionanterior);
            pst.setString(2, fechadematriculacionactual);
            pst.setString(3, caduca);
            pst.setString(4, jefatura);
            pst.setString(5, totaldematricula);
            pst.setString(6, revision);
            pst.setString(7, multa);
            pst.setString(8, placaactual);
            pst.setString(9, cedulapropietario);
            pst.setString(10, codigo);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
        }finally{
            try {
                if(getConnection()!=null)getConnection().close();
                if (pst != null) pst.close();
               
            } catch (Exception e) {
                System.out.println("Error "+e);
            }
        }
        return false;
    }
  
    public boolean registrarvehiculo (String placaactual,
            String marca,String añofabricacion,
            String modelo, String tipo, 
            String cedulapropietario){
        
        PreparedStatement pst=null;
        try {
            String consulta="insert into vehiculo (placaactual,marca,añofabricacion,modelo,tipo,cedulapropietario) values (?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
            //pst = getConnection().prepareStatement(consulta,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            pst.setString(1, placaactual);
            pst.setString(2, marca);
            pst.setString(3, añofabricacion);
            pst.setString(4, modelo);
            pst.setString(5, tipo);
            pst.setString(6, cedulapropietario);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
        }finally{
            try {
                if(getConnection()!=null)getConnection().close();
                if (pst != null) pst.close();
               
            } catch (Exception e) {
                System.out.println("Error "+e);
            }
        }
        return false;
    }
    
    
    public static void main(String[] args) {
        Consultas co=new Consultas();
        //System.out.println(co.registrar("258258","nombres","apellidos","residencia","direccion","telefono"));
       //System.out.println(co.registrarvehiculo("digimon","FORD","2001","CAMIONETA","CAMIONETA","789789"));
        //System.out.println(co.actualizarmatricula(codigo, fechamatriculacionanterior, fechamatriculacionactual, caduca, jefatura, totalmatricula, revision, multa, placaactual, cedulapropietario));
    }
    
}
