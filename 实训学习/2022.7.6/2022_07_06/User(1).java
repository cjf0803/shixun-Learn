package com.neu.abstract1;

public interface User {
   public abstract void login();
   
   public void delUser(int id);
   public User findUser(int id);
}
