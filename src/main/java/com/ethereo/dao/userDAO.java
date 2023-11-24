/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.ethereo.dao;

import com.ethereo.model.User;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;

/**
 *
 * @author Admin
 */
@Stateless
public class userDAO implements userDAOLocal {

    @PersistenceContext
    private EntityManager em;
    
    @Override
    public void addUser(User user) {
        em.persist(user);
    }

    @Override
    public void updateUser(User user) {
        em.merge(user);
    }

    @Override
    public void deleteUser(String email) {
        em.remove(getUser(email));
    }

    @Override
    public User getUser(String email) {
        return em.find(User.class,email);
    }

    @Override
    public List<User> getAllUsers() {
        return em.createNamedQuery("users.getAll").getResultList();
    }

    
    
}
