package Items;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author JOEY
 */
public class StudentBean {
    private String id;
    private String username;
   private String name;
   private String password;
  
      private String email;

    public String getname() {
        return name;
    }
    public String getusername() {
        return username;
    }
    public String getid() {
        return id;
    }
   
    
     public String getpassword() {
        return password;
    }
     
         public String getemail() {
        return email;
    }

    
    
    
    public void setname(String name) {
        this.name = name;
    }

     public void setusername(String username) {
        this.username = username;
    }
     
      public void setpassword(String password) {
        this.password = password;
    }
      
  
   

    public void setId(String id) {
        this.id = id;
    }
       public void setemail(String email) {
        this.email = email;
    }
    
    
    
} 