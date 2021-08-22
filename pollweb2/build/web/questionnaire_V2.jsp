<%-- 
    Document   : questionnaire_1
    Created on : Aug 27, 2020, 11:57:16 AM
    Author     : JOEY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Arrays"%>
<%@page import="Items.questionnaireUsersItem"%>
<%@page import="Items.subQuestionsItem"%>
<%@page import="Items.questionsItem"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.Locale.Category"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" a href="CSS/bootstrap.css" />
        
        
        <title>JSP Page</title>
    </head>
    <body>
   
            
    <body class="bg-light">

        <div class="container">
            <div class="row">
                <div class="col m-auto">
                    <div class="card mt-5">

                        <div class="card-title">
                            <h3 class="bg-danger text-white text-center py-3"> Add Question</h3>
                        </div>

                        
        
        
                        <%
                            ArrayList<questionsItem> list = new ArrayList<questionsItem>();
                            list = (ArrayList<questionsItem>) request.getAttribute("questionslist");


                                     for (int i = 0; i < list.size(); i++) {
                                    questionsItem item3 = new questionsItem();
                                    item3 = list.get(i);
                                   //  out.println(item3.getques_text());
                                     
                                     }
                                     

                        %>



                        <%
                            ArrayList<subQuestionsItem> list2 = new ArrayList<subQuestionsItem>();
                            list2 = (ArrayList<subQuestionsItem>) request.getAttribute("sub_questionslist");

                        %>
                        
                                   


                        
                        
                        
                        
                              <div class="col-lg-6 m-auto">               
                                  <h3>  <Label name="quesionnaireTitle"  class="text-center"  id="quesionnaireTitleLabel"> Questionnaire </Label></h3>
                              </div>

    <form action="submitQuestionnaire">

                        <table  class="table table-bordered">
                  
                            <% for (int i = 0; i < list.size(); i++) {
                                    questionsItem item = new questionsItem();
                                    item = list.get(i);
                                    // out.println(item.getques_text());
                                    //out.println(actor.getFirstname());
                                    //out.println(actor.getLastname());
                            %>

                            
                        
                            
                            
                            
                            <tr>

                                <td > <h5>   Q<%=i+1+"-"+" "+item.getques_text() %>  </h5> <br>


                                    
                                    <%
                                        
                                        if( Integer.parseInt(item.getques_type()) == 1){
                                            %>
                                            
                                      <input id="<%=item.getid()%>" name="shortanswer" width=100px type="text" class="form-control mb-2" placeholder="Short answer" >
                                          
                                          <%
                                        }

                                        else if( Integer.parseInt(item.getques_type()) == 2){
                                            %>
                                            
                                      <input id="<%=item.getid()%>" name="longanswer" width=100px type="text" class="form-control mb-2" placeholder="Long answer" >
                                          
                                          <%
                                        }
                                    

                                        
                                        else if( Integer.parseInt(item.getques_type()) == 3){

                                            for (int j = 0; j < list2.size(); j++) {
                                            subQuestionsItem item2 = new subQuestionsItem();
                                            item2 = list2.get(j);
                                            if (item2.getques_id() == item.getid()) {
                                               // out.println(item2.getsub_ques_text());
                                                
                                                        %>
                                              <input      name="checkboxStatus" type="checkbox"  >                                          
                                                <input id="<%=item2.getid()%>"        name="checkboxText"  class="form-check-label"  disabled for="exampleCheck1" value="<%=item2.getsub_ques_text()%>"    >   </input>
                                               
                                                 <br><br>
                                             
                                                 <%
                                               

                                           }//if
                                        }//for



                                         

                                              }
                                   

                                        
                                        else if (Integer.parseInt(item.getques_type()) == 4) {


                                            for (int j = 0; j < list2.size(); j++) {
                                            subQuestionsItem item2 = new subQuestionsItem();
                                            item2 = list2.get(j);
                                            if (item2.getques_id() == item.getid()) {
                                                //out.println(item2.getsub_ques_text());


                                            %>
                                    <input  type="radio" name="radioStatus" id="radioStatus"  >
                                    <label id="<%=item2.getid()%>" class="form-check-label" name="radioText">  <%=item2.getsub_ques_text()%> </label>
                                                <br>
                                               
                                            <%


                                           }//if
                                        }//for

                                            
                                              }
                                    

                                        
                                     




                                    %> 
                                    
                                    
                                    

                                </td>                                
         

                                </tr>
                                
                                
                                
                                
                                
                                

                            <%
                                };
                            %> 

                            
                            

                        </table>

                        <!-- ---------------------------------------------------------------------------------------------------------------------------------- -->

     
                         
                                
                                
                                
                                </form>
                            
                            
                              <button onclick="getvalues()"  class="btn btn-success" >Submit</button>
                              
                               <p id="demo"></p>
                                  
                            <script>
                                
                                function getvalues(){
                                    
                                    
                                   
        
        
                                        //document.getElementById("demo").innerHTML = 5 + 6;
                                    
                                       //var old= document.getElementById("demo").value;
                                       document.getElementById("demo").innerHTML =document.getElementById(2).value;
                                        //document.write(document.getElementById(x).value); 
                                        
                                        
                                      
                                    
                                     <% 
                                       
                                         for (int i = 1; i <= 4; i++) {
                                    questionsItem item = new questionsItem();
                                    item = list.get(i);
                                    // out.println(item.getques_text());
                                    
                                    
                                    if( (Integer.parseInt(item.getques_type()) == 1)  || (Integer.parseInt(item.getques_type()) == 2)  ){
                                        
                                        
                                        %>
                                                
                                       
                                      
                                        
                                        <%
                                    }

                                     }
                            %>
                                    
                                    
                              
                      
                                          
                // document.write(document.getElementById(x).value);
                                                            
                                    
                                }
                                
                            </script>

                        
           
                       
                           
                        
    
                        
                    
                

                                    


    
    
    
    
       







                        
                 
                        
                        
                        
                        
                        
                        
                


                       
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         




                    </div>
                </div>
            </div>
        </div>



        
        

        
        
        
        
        
        
        
        
                        
                        
                        
                        
                        
                        
                        
                        
        
        
        
        
    </body>
    
    

    
</html>
