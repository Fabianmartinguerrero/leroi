/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package almacen;



/**
 *
 * @author Fabian
 */
public class pruebas {
    public static void main(String args[]){
        try {
            Fichero f = new Fichero("ejemplo.bin","ab");
            Producto prod = new Producto("lechuga","verdura",33);
            f.escribirObjeto(prod);
        } catch (AperturaFicheroExcepcion ex) {
            System.out.println("Error en la apertura");
        }
       
        Fichero f;
        try {
            f = new Fichero("ejemplo.bin","rb");
            Producto prod = (Producto)f.leerObjeto();
            while(prod!=null){
              
                System.out.println(prod.toString());
                //respuesta+=aux.toString();
                   
                    
                prod = (Producto) f.leerObjeto();
            }
        }catch (AperturaFicheroExcepcion ex) {
            System.err.println(ex.getMessage());
        }    
    }
}
