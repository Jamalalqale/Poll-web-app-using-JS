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
public class answers {
    
    private int id;
    private int ques_id;
    private String answer;
    private int ques_type;
    private int questionnaire_id;
    private int participant_id;
    private String date_created;
      

       
    //-----------------
    public void set_id(int id) {
        this.id = id;
    }
    
    
    public void set_ques_id(int ques_id) {
        this.ques_id = ques_id;
    }
    
    
    
    public void set_ques_type(int ques_type) {
        this.ques_type = ques_type;
    }
    
    
    public void set_questionnaire_id(int questionnaire_id) {
        this.questionnaire_id = questionnaire_id;
    }
    
    
    public void set_answer(String answer) {
        this.answer = answer;
    }
    
    
    public void set_participant_id(int participant_id) {
        this.participant_id = participant_id;
    }
    
    public void set_date_created(String date_created) {
        this.date_created = date_created;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     public String get_answer() {
        return answer;
    }
    
      public int get_participant_id() {
        return participant_id;
    }
      public String get_date_created() {
        return date_created;
    }
    
    public int get_id() {
        return id;
    }

    public int get_ques_id() {
        return ques_id;
    }

    public int get_ques_type() {
        return ques_type;
    }

    public int get_questionnaire_id() {
        return questionnaire_id;
    }
 
    
    
    
    
    
    
    
    
    
 
    

} 