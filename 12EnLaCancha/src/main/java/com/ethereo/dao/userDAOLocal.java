/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/SessionLocal.java to edit this template
 */
package com.ethereo.dao;

import com.ethereo.model.User;
import jakarta.ejb.Local;
import java.util.List;

/**
 *
 * @author Admin
 */
@Local
public interface userDAOLocal {
    public void addUser(User user);
    public void updateUser(User user);
    public void deleteUser(String email);
    public User getUser(String email);
    public List<User> getAllUsers();
}
