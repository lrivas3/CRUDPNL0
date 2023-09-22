
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
}
