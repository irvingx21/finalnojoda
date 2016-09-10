/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
    
    public static void main(String[] args) {
        Consultas co=new Consultas();
        //System.out.println(co.autentificacion("admin", "1234"));
        //System.out.println(co.registrar("1313061275","leonardo","ordoñez","manta","call9","094624506"));
        
    }
    
}
