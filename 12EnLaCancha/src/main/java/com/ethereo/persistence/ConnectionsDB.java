/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ethereo.persistence;

import com.ethereo.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class ConnectionsDB {
    //Campos para l connección con la BASE DE DATOS
    private Connection connection;
    private ControlDB control = ControlDB.getInstance();
    private String sql;
    PreparedStatement statement;
    //Metodos para el CRUD
    public void create(User user) throws SQLException{
        connection = control.getConnection();
        sql = "INSERT INTO users (Name, lastName, email) VALUES (?, ?, ?)";
        try{
            statement = connection.prepareStatement(sql);
            statement.setString(1, user.getName());
            statement.setString(2,user.getLastName());
            statement.setString(3, user.getEmail());
            statement.executeUpdate();
            control.closeConnecton(connection);
        }catch(SQLException ex){
            System.out.println(ex.toString());
        }
    }
    //Envia un mensaje de bienvenida
    public void sendWelcome(User user){
        SendEmail sendEmail = new SendEmail();
        String subjet ="Bienvenido, ahora eres el #12";
        String content = "Gracias por ser parte de este gran proyecto.\n"
                + "Hola "+user.getName()+" "+user.getLastName()+
                "\nDe ahora en adelante vas a recibir correos de manera semanal "
                + "con todo el resumen de la liga Colombiana\n"
                + "Puedes dejar de recibir estos correos en cualquier comento en "
                + "nuestra página indicando el siguiente id:"+user.getUserId()+"y tú correo"
                + " electronico asociado\n"
                + "BIENVENIDO!";
        sendEmail.createEmail(user.getEmail(), subjet, content);
        sendEmail.send();
    }
    //Actualiza un usuario
    public void update(User user) throws SQLException{
        connection = control.getConnection();
        sql = "UPDATE users SET Name = ?, lastName = ?, email = ? WHERE ID = ?";
        try{
            statement = connection.prepareStatement(sql);
            statement.setString(1,user.getName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setInt(4, user.getUserId());
            statement.executeUpdate();
            control.closeConnecton(connection);
            sendUpdate(user);
        }catch(SQLException ex){
            System.out.println(ex.toString());
        }
    }
    //Comprueba si un usuario ya existe 
    public boolean userExist(String email, int id) throws SQLException{
        Connection connection = control.getConnection();
        try{
            sql = "SELECT COUNT(*) FROM users WHERE email = ? AND ID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setInt(2, id);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                int count = resultSet.getInt(1);
                control.closeConnecton(connection);
                return count >0;
            }
        }catch(SQLException e){
            return false;
        }
        return false;
    }
    //Envia un correo de despedida
    public void SendBye(User user){
        SendEmail sendEmail = new SendEmail();
        String subjet ="Lamentamos que te hayas ido";
        String content = "Gracias por confiar en nosotros!\nEsperamos que no sea un "
                + "adiós sino un hasta pronto\nAtentamente: equipo de 12EnLaCancha";
        sendEmail.createEmail(user.getEmail(), subjet, content);
        sendEmail.send();
    }
    //Envia un correo informando la actualización
    public void sendUpdate(User user){
         SendEmail sendEmail = new SendEmail();
        String subjet ="Se ha actualizado tu correo";
        String content = "Hola "+user.getName()+" "+user.getLastName()+"\n"
                + "Te informamos que hemos actualizado tu derección de correo a la "
                + "siguiente: "+user.getEmail()+"\nSi no has sido tú actualiza esta "
                + "informaciíon através de la pagina y usando el id: "+user.getUserId()+" "
                + "y el correo anteriormente mencionado";
        sendEmail.createEmail(user.getEmail(), subjet, content);
        sendEmail.send();
    }
    public User getUser(int id) throws SQLException{
        User user = null;
        connection = control.getConnection();
        sql = "SELECT * FROM users WHERE id = ?";
        try{
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            while(result.next()){
                String name = result.getString("Name");
                String lastName = result.getString("lastName");
                String email = result.getString("email");
                user = new User(id,name,lastName,email);
            }
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        return user;
    }
    //Elimina un usuario
    public void delete(User user) throws SQLException{
         connection = control.getConnection();
        sql = "DELETE FROM users WHERE email = ? AND ID = ?";
        try{
            statement = connection.prepareStatement(sql);
            statement.setString(1, user.getEmail());
            statement.setInt(2, user.getUserId());
            statement.executeUpdate();
            control.closeConnecton(connection);
            //Envia un mensaje de despedida
            SendBye(user);
        }catch(SQLException ex){
            System.out.println(ex.toString());
        }
    }
    //Obtiene un usuario por el correo (Poco eficiente)
    public User getUser(String email) throws SQLException{
        connection = control.getConnection();
        User user = new User();
        sql = "SELECT * FROM users where = ?";
        try{
            statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            ResultSet result = statement.executeQuery();
            while(result.next()){
                String name = result.getString("Name");
                String lastName = result.getString("lastName");
                email = result.getString("email");
                int id = result.getInt("ID");
                user = new User(id,name,lastName,email);
            }
            control.closeConnecton(connection);
            return user;
        }catch(SQLException ex){
            System.out.println(ex.toString());
            return null;
        }
    }
}
