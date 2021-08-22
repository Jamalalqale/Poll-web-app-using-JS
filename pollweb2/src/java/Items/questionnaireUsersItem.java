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
public class questionnaireUsersItem {

    private int id;
    private String name;
    private String email;
    private String password;
    private int isenabled;
    private int questionnaire_id;
    private String date_created;

    public int getid() {
        return id;
    }

    public String getname() {
        return name;
    }

    public String getemail() {
        return email;
    }

    public String getpassword() {
        return password;
    }

    public int getisenabled() {
        return isenabled;
    }

    public int getquestionnaire_id() {
        return questionnaire_id;
    }

    public String getdate_created() {
        return date_created;
    }

    
    
    
    public void setid(int id) {
        this.id = id;
    }

    public void setisenabled(int isenabled) {
        this.isenabled = isenabled;
    }

    public void setquestionnaire_id(int questionnaire_id) {
        this.questionnaire_id = questionnaire_id;
    }

    public void setname(String name) {
        this.name = name;
    }

     public void setemail(String email) {
        this.email = email;
    }
     
      public void setpassword(String password) {
        this.password = password;
    }
      
       public void setdate_created(String date_created) {
        this.date_created = date_created;
    }

}
