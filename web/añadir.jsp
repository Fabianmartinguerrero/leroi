<%-- 
    Document   : insertaAlumno
    Created on : 04-may-2017, 22:33:38
    Author     : Fabian
--%>

<%@page import="almacen.Fichero"%>
<%@page import="java.io.*"%>
<%@page import="almacen.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir</title>
    </head>
    <%
            String nombre=request.getParameter("nombre");
            String descripcion=request.getParameter("descripcion");
           
            
            
            int precio;
            String respuesta;
            
            
            try{
                Fichero f = new Fichero("fichero.bin","ab");
                precio= Integer.parseUnsignedInt(request.getParameter("precio"));   
                if(nombre==null 
                        || descripcion==null 
                        || request.getParameter("precio")==null)
                {
                    respuesta="Alguno de los campos quedó sin rellenar";
                }
                else{
                    f.escribirObjeto(new Producto(nombre,descripcion,precio));
                    respuesta="Se insertó con éxito";
                    
                }
                f.close();
            }catch(NumberFormatException nfe){
                respuesta="Error en los numeros";
            }
            
            
        %>
    <body>
        <h1>Añadir</h1>
        <%@include file="html/nav.html" %>
        <h2>Formulario</h2>
        <form action="añadir.jsp" method="POST">
            Nombre:<input type="text" name="nombre"><br>
            Descripcion:<input type="text" name="descripcion"><br>
            precio:<input type="number" name="precio"><br>
            <input type="submit" value="Enviar">
            <input type="reset" value="Reset">
        </form>
        <p><%=respuesta%></p>
              
    </body>
</html>
