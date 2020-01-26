/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daos.User;
import model.Feedback;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author AJAY KUMAR
 */
@Controller
public class UserController {
 
 @Autowired
 User dao;
 
 @Autowired
 HttpSession session;
 
 @RequestMapping("/addFeedback.html")
 public ModelAndView addFeedback(@ModelAttribute Feedback feedback)
 {
	 feedback.setFaddedon("26-01-2020");
	 feedback.setFstatus("1");
     ModelAndView mav=new ModelAndView();
     dao.save(feedback);
     mav.setViewName("result");
     mav.addObject("message", "Thanks for your valuable suggestion.If you'r idea choosen , We will Contact you soon.");
     return mav;
 }
 
 @RequestMapping("/adminlogin.html")
 public ModelAndView adminlogin(@RequestParam("userid") String userid,@RequestParam("password") String password)
 {	 
     ModelAndView mav=new ModelAndView();
//     System.out.println("user id="+userid+"/password="+password);
     boolean isvalid=dao.isValidUser(userid,password);
     if(!isvalid) {
    	 mav.addObject("errMsg", "Either User Id or Password is Incorrect.");
    	 mav.setViewName("adminlogin");
     }else {
    	 List<Feedback> list=dao.getAllFeedbacks();
    	 mav.addObject("Feedbacks", list);
    	 mav.setViewName("allFeedback"); 
     }
     
    return mav;
 }
 
 @RequestMapping("/logout.html")
 public ModelAndView logout()
 {	 
     ModelAndView mav=new ModelAndView();     
     mav.setViewName("adminlogin");
     session.invalidate();
    return mav;
 }
 
 @RequestMapping("/index.html")
 public ModelAndView index()
 {	 
     ModelAndView mav=new ModelAndView();
     
     mav.setViewName("index");
    return mav;
 }
}
