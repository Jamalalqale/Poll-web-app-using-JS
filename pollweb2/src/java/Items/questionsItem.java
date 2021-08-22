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
public class questionsItem {
    private int id;
    private String ques_text;
   private String ques_type;
   private String date_created;


    public String getques_text() {
        return ques_text;
    }
    public String getques_type() {
        return ques_type;
    }
    public int getid() {
        return id;
    }
    public String getdate_created() {
        return date_created;
    }
    
  
    
    public void setques_text(String ques_text) {
        this.ques_text = ques_text;
    }

     public void setques_type(String ques_type) {
        this.ques_type = ques_type;
    }
     
      public void setdate_created(String date_created) {
        this.date_created = date_created;
    }
    public void setId(int id) {
        this.id = id;
    }
} 