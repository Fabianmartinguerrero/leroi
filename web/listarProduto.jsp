<%-- 
    Document   : listaProducto
    Created on : 04-may-2017, 23:16:50
    Author     : Fabian
--%>

<%@page import="java.io.EOFException"%>
<%@page import="almacen.Producto"%>
<%@page import="java.io.*"%>
<%@page import="almacen.Fichero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Producto</title>
    </head>
    <body>
        <h1>Listar producto</h1>
        <%@include file="html/nav.html" %>
        <table>
            <tr>
                <th>Nombre</th>
                <th>Descricion</th>
                <th>Precio</th>
            </tr>
        <%
            ObjectInputStream ois;
            String respuesta="";
            
           
                Fichero f = new Fichero("fichero.bin","rb");
                Producto aux = (Producto) f.leerObjeto();
                while(aux!=null){
                    
                    respuesta+="<tr>\n"
                            + "<td>"+aux.getNombre()+"</td>\n"
                            + "<td>"+aux.getDescripcion()+"<td>\n"
                            + "<td>"+aux.getPrecio()+"</td>\n"
                            + "</tr>\n";
                    //respuesta+=aux.toString();
                   
                    
                    aux = (Producto) f.leerObjeto();
                }
            
            f.close();
        %>
        <%=respuesta%>
       </table>
        
    </body>
</html>
