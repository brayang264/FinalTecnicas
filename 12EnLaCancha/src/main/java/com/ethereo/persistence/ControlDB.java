/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ethereo.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.apache.commons.dbcp2.BasicDataSource;

/**
 *
 * @author Admin
 */
public class ControlDB {
    
     private static ControlDB dataSource;
     private BasicDataSource basicDataSource = null;

    private ControlDB(){
        // Configuración del pool de conexiones
        BasicDataSource basicData = new BasicDataSource();
        basicData.setDriverClassName("com.mysql.cj.jdbc.Driver");
        basicData.setUrl("jdbc:mysql://localhost:3306/webproject");
        basicData.setUsername("root");
        basicData.setPassword("Brayan1201?!");

        // Configuración adicional (opcional)
        basicData.setMinIdle(5);
        basicData.setMaxIdle(20);
        basicData.setMaxOpenPreparedStatements(100);
        this.basicDataSource = basicData;
    }
    public static ControlDB getInstance(){
        if(dataSource == null){
            dataSource = new ControlDB();
        }
        return dataSource;
    }
    
    protected Connection getConnection() throws SQLException{
        return this.basicDataSource.getConnection();
    }
    protected void closeConnecton(Connection connection) throws SQLException {
        connection.close();
    }

}
