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
public class subQuestionsItem {
    private int id;
    private int ques_id;
   private String sub_ques_text;
  


    public String getsub_ques_text() {
        return sub_ques_text;
    }
    public int getques_id() {
        return ques_id;
    }
    public int getid() {
        return id;
    }
  
    
  
    
    public void setsub_ques_text(String sub_ques_text) {
        this.sub_ques_text = sub_ques_text;
    }

     public void setques_id(int ques_id) {
        this.ques_id = ques_id;
    }
     
     
    public void setId(int id) {
        this.id = id;
    }
} 