/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.util.List;

import model.Feedback;

/**
 *
 * @author AJAY KUMAR
 */
public interface User {
    public void save(Feedback feedback);
    public boolean isValidUser(String userid,String password);
    public List<Feedback> getAllFeedbacks();
}
