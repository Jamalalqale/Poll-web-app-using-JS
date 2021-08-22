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
public class questionnairesItem {
    private int id;
    private String name;
   private int isenabled;
     private int isprivate;
   private String date_created;
    private String token;


    public String getname() {
        return name;
    }
    public int getisenabled() {
        return isenabled;
    }
    public int getid() {
        return id;
    }
    public String getdate_created() {
        return date_created;
    }
    
    public String gettoken() {
        return token;
    }
    
    
    
    public int getisprivate() {
        return isprivate;
    }
  
    
    public void setname(String name) {
        this.name = name;
    }

     public void setisenabled(int isenabled) {
        this.isenabled = isenabled;
    }
     
     
        public void setisprivate(int isprivate) {
        this.isprivate = isprivate;
    }
        
      public void setdate_created(String date_created) {
        this.date_created = date_created;
    }
      
        public void settoken(String token) {
        this.token = token;
    } 
      
      
    public void setId(int id) {
        this.id = id;
    }
} 