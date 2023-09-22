
package x.crudprogra.persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import x.crudprogra.logica.Cliente;
import x.crudprogra.persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersistencia {
    ClienteJpaController cliJPA = new ClienteJpaController ();
    
    //CREATE
    public void crearCliente(Cliente cliente){
        try {
            cliJPA.create(cliente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //READ
    
    public List<Cliente> traerClientes(){
        return cliJPA.findClienteEntities();
    }
     
    //UPDATE
    
    //DELETE

    public void borrarCliente(int id_eliminar) {
        
        try {
            cliJPA.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Cliente traerCliente(int id_editar) {
        return cliJPA.findCliente(id_editar);
    }

    public void editarCliente(Cliente cliente) {
        try {
            cliJPA.edit(cliente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
