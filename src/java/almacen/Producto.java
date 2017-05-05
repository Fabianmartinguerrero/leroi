package almacen;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.Serializable;

/**
 *
 * @author Fabian
 */
public class Producto implements Serializable {

    private static final long serialVersionUID = 1L;
    
    String nombre;
    String descripcion;
    int precio;
    public Producto(String nombre, String descripcion, int precio) {
      this.nombre = nombre;
      this.descripcion = descripcion;
      this.precio = precio;
    }

    @Override
    public String toString() {
        return "Producto{" + "nombre=" + nombre + ", descripcion=" + descripcion+ ", precio=" + precio + '}';
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

  
}
