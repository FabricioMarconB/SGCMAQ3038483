package framework.dao;

import java.util.ArrayList;

import java.sql.SQLException;

public class Main {
    
    public static void main(String[] args) throws SQLException{
        
        Usuario usuario = new Usuario(11);
        usuario.setNome("Usuário 11");
        usuario.setSenha("1111");
        
        Usuario usuario1 = new Usuario(12);
        usuario1.setNome("Usuário 12");
        usuario1.setSenha("1212");
        
        Usuario usuario2 = new Usuario(13);
        usuario2.setNome("Usuário 13");
        usuario2.setSenha("1313");
        
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        
//        usuarioDAO.insert(usuario1);
//        usuarioDAO.insert(usuario2);
//        
//        usuario.setNome("Usuário 13 13 13");
//        usuario.setSenha("3131");
//        
        //usuarioDAO.update(usuario);
        
        
        //usuarioDAO.delete(usuario);
        
        ArrayList<Usuario> listaUsuarios = usuarioDAO.getAll();
        System.out.println(listaUsuarios);
        
        usuario = usuarioDAO.getUnique(1951);
        System.out.println(usuario);
        
        usuario = usuarioDAO.getUnique(13);
        System.out.println(usuario);
    }
}
