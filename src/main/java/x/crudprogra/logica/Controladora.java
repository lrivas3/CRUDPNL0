
package x.crudprogra.logica;

import java.util.List;
import x.crudprogra.persistencia.ControladoraPersistencia;

public class Controladora {
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearCliente (Cliente cliente){
            controlPersis.crearCliente(cliente);
    }
    
    public List<Cliente> traerClientes (){
        return controlPersis.traerClientes();
    }

    public void borrarCliente(int id_eliminar) {
        controlPersis.borrarCliente(id_eliminar);
    }

    public Cliente traerUsuario(int id_editar) {
        return controlPersis.traerCliente(id_editar);
    }

    public void editarCliente(Cliente cliente) {
        controlPersis.editarCliente(cliente);
    }
}
