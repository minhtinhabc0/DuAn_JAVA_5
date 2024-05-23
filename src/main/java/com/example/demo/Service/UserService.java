package com.example.demo.Service;


   import org.springframework.stereotype.Service;

import com.example.demo.Model.User;

import java.util.ArrayList;
   import java.util.List;

   @Service
   public class UserService {

       private List<User> users = new ArrayList<>();

       public void saveUser(User user) {
           users.add(user);
       }

       public User findByUsername(String username) {
           for (User user : users) {
               if (user.getUsername().equals(username)) {
                   return user;
               }
           }
           return null;
       }

       public boolean authenticate(String username, String password) {
           User user = findByUsername(username);
           return user != null && user.getPassword().equals(password);
       }
   }