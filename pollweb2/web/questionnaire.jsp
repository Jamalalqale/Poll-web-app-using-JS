  <%-- 
    Document   : questionnaire
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
                          <h3 id="title" class="bg-danger text-white text-center py-3"> Add Question</h3>
                        </div>

                        
                        
                        
                        
                        
                        <%
                          
                          int question_pointer= (int)request.getAttribute("question_pointer");
                          String token= (String)request.getAttribute("token");
                          String user_token= (String)request.getAttribute("user_token");
                          String questionnaire_title= (String)request.getAttribute("questionnaire_title");
                          

                          
                          %>
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
                              
                              
                              
                              
                              <!--  clear chache if pointer is zero-->
                              

                              
                              
                              <script>
                                   document.getElementById("title").innerHTML = '<%=questionnaire_title%>'  ;
                                   
                                if(<%=question_pointer%>==0)
                                localStorage.clear();
                                
                                
                                
                                
                              </script>
                              

                              
                              
                              <div id="Q_div">
                               
                                <%
                                  //int pointer=3;
                                  
                                  questionsItem item = new questionsItem();
                                  item = list.get(question_pointer);
                                  // out.println(item.getques_text());
                                  //out.println(actor.getFirstname());
                                  //out.println(actor.getLastname());
                                  %>
                                  
                                  <h5>   Q<%=question_pointer+1+"-"+" "+item.getques_text() %>  </h5> <br>


                                  
                                  <%
                                    
                                    if( Integer.parseInt(item.getques_type()) == 1){
                                    %>
                                    
                                    <input id="answer" name="answer" width=100px type="text" class="form-control mb-2" placeholder="Short answer" >
                                      
                                      <%
                                        }

                                        else if( Integer.parseInt(item.getques_type()) == 2){
                                        %>
                                        
                                        <textarea id="answer" name="answer"  width=100px type="text" class="form-control mb-2" placeholder="Long answer" ></textarea>
                                          
                                          <%
                                            }
                                            
                                         else if (Integer.parseInt(item.getques_type()) == 5) {
                                          %>
                                        
                                        <input id="answer" name="answer"  onkeypress="return isNumber(event)"  type="number" class="form-control mb-2" placeholder="Number answer" >
                                          
                                          <%
                                              }


                                            else if (Integer.parseInt(item.getques_type()) == 6) {
                                          %>
                                        
                                        <input id="answer" name="answer"  width=100px type="date" class="form-control mb-2" placeholder="Date answer" >
                                          
                                          <%
                                              }

                                            
                                            else if( Integer.parseInt(item.getques_type()) == 3){

                                            for (int j = 0; j < list2.size(); j++) {
                                            subQuestionsItem item2 = new subQuestionsItem();
                                            item2 = list2.get(j);
                                            if (item2.getques_id() == item.getid()) {
                                            // out.println(item2.getsub_ques_text());
                                            
                                            %>
                                            
                                            <input type="checkbox" name="answer" value="<%=item2.getsub_ques_text()%>"><%=item2.getsub_ques_text()%><br>
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
                                               
                                               
                                               <input type="radio" name="answer" value="<%=item2.getsub_ques_text()%>"><%=item2.getsub_ques_text()%><br>
                                               <br>
                                                 
                                                <%


                                                 }//if
                                                 }//for

                                                 
                                                 }

                                                 %>                                    
                                                 
                                               </div>     
                                               
                                               <!-- ---------------------------------------------------------------------------------------------------------------------------------- -->

                                               
                                               <div  class="d-flex justify-content-center">                        

                                                <h7>   <label name="errorMsg"  id = "errorMsg" type="text"  class="text-danger" > </label>  </h7>
                                              </div>



                                              <!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
 
                            
                                            <div class="dropdown">
                                              <button id="nex_submit" onclick="getvalues()"  class="btn btn-success" >Next</button>                    
                                            </div> 
                                              
                                              
                                           
                                              
                                              
                                              <script>
                                                  
                                                  function isNumber(evt) {
                                                    evt = (evt) ? evt : window.event;
                                                    var charCode = (evt.which) ? evt.which : evt.keyCode;
                                                    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                                                        return false;
                                                    }
                                                    return true;
                                                }
                                                  
                                              </script>
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              <script>
                                                
                                                
                                                if(<%=question_pointer%>==<%=list.size()-1%>){
                                                document.getElementById('nex_submit').innerHTML='Submit';
                                                
                                                
                                                
                                                }
                                                
                                                
                                                function getvalues(){
                                                
                                                
                                                
                                                
                                                
                                                
                                                if( <%=Integer.parseInt(item.getques_type())%> == 1){
                                                    
                                                    
                                                    
                                                var items=document.getElementById('answer').value;                                           
                                                
                                                if(items.length<1)
                                                    document.getElementById("errorMsg").innerHTML ="The answer box shouldn't be empty";
                                                else
                                                    {
                                                        var temp_list = JSON.parse(localStorage.getItem("items"));
                                                        var answer_list=[]; 
                                                        if (Array.isArray(temp_list) && temp_list.length)
                                                        { 
                                                        answer_list=temp_list;                             
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items ,"type" : <%=item.getques_type()%>});
                                                        }
                                                        else
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items ,"type" : <%=item.getques_type()%>});
                                                        //{"name" : "rrr", "Age" : 30}

                                                      //
                                                      //    alert(JSON.stringify(answer_list)); 
                                                        localStorage.setItem("items", JSON.stringify(answer_list));
                                                        next(answer_list);
                                                        
                                                    }
                                                

                                                
                                                
                                                
                                                }// //if  type 1 
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                else if( <%=Integer.parseInt(item.getques_type())%> === 2){  
                                                    
                                                var items=document.getElementById('answer').value;
                                                
                                                if(items.length<1)
                                                    document.getElementById("errorMsg").innerHTML ="The answer box shouldn't be empty";
                                                else
                                                    {
                                                        
                                                        var temp_list = JSON.parse(localStorage.getItem("items"));
                                                        var answer_list=[]; 
                                                        if (Array.isArray(temp_list) && temp_list.length)
                                                        { 
                                                        answer_list=temp_list;                             
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items ,"type" : <%=item.getques_type()%>});
                                                        }
                                                        else
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items ,"type" : <%=item.getques_type()%>});

                                                        localStorage.setItem("items", JSON.stringify(answer_list));
                                                        //alert(JSON.stringify(answer_list));
                                                        next(answer_list);

                                                    }

                                                
                                                
                                                } //if  type 2
                                                
                                                
                                                else if( <%=Integer.parseInt(item.getques_type())%> === 5){
                                                
                                                
                                                var items=document.getElementById('answer').value;
                                                
                                                if(items.length<1)
                                                    document.getElementById("errorMsg").innerHTML ="The answer box shouldn't be empty and only number allowed";
                                                else
                                                    {
                                                        var temp_list = JSON.parse(localStorage.getItem("items"));
                                                        var answer_list=[]; 
                                                        if (Array.isArray(temp_list) && temp_list.length)
                                                        { 
                                                        answer_list=temp_list;                             
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items ,"type" : <%=item.getques_type()%>});
                                                        }
                                                        else
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items ,"type" : <%=item.getques_type()%>});

                                                        localStorage.setItem("items", JSON.stringify(answer_list));
                                                        //alert(JSON.stringify(answer_list));
                                                         next(answer_list);
                                                        

                                                    }
                                                
 
                                                
                                                
                                                } //if  type 5
                                                
                                                 else if( <%=Integer.parseInt(item.getques_type())%> === 6){
                                                     
                                                var items=document.getElementById('answer').value;
                                                
                                                if(items.length<1)
                                                    document.getElementById("errorMsg").innerHTML ="The answer box shouldn't be empty";
                                                else
                                                    {
                                                        var temp_list = JSON.parse(localStorage.getItem("items"));
                                                        var answer_list=[]; 
                                                        if (Array.isArray(temp_list) && temp_list.length)
                                                        { 
                                                        answer_list=temp_list;                             
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items ,"type" : <%=item.getques_type()%>});
                                                        }
                                                        else
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items ,"type" : <%=item.getques_type()%>});

                                                        localStorage.setItem("items", JSON.stringify(answer_list));
                                                        //alert(JSON.stringify(answer_list));
                                                         next(answer_list);
                                                        

                                                    }  
                                                
                                                
                                                } //if  type 6
                                                
                                                
                                                
                                                
                                                else if( <%=Integer.parseInt(item.getques_type())%> === 3){
                                                
                                                
                                                var items=document.getElementsByName('answer');
                                                var counter=0;
                                                for(var i=0; i<items.length; i++){
                                                    
                                                    if(items[i].type=='checkbox' && items[i].checked==true)
                                                    {
                                                        counter=counter+1;
                                                        var temp_list = JSON.parse(localStorage.getItem("items"));
                                                        var answer_list=[]; 
                                                        if (Array.isArray(temp_list) && temp_list.length)
                                                        { 
                                                        answer_list=temp_list;                             
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items[i].value ,"type" : <%=item.getques_type()%>});
                                                        }
                                                        else
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items[i].value ,"type" : <%=item.getques_type()%>});

                                                        localStorage.setItem("items", JSON.stringify(answer_list));


                                                    }
                                                    
                                                }
                                                //alert(JSON.stringify(answer_list));   
                                                
                                                 if(counter==0)
                                                    document.getElementById("errorMsg").innerHTML ="Please choose one of the options";
                                                else
                                                    next(answer_list)
                                                
                                                
                                                } //if  type 3 
                                                
                                                
                                                else if( <%=Integer.parseInt(item.getques_type())%> === 4){
                                                
                                                
                                                var items=document.getElementsByName('answer');
                                                var counter=0;
                                                for(var i=0; i<items.length; i++){
                                                    if(items[i].type=='radio' && items[i].checked==true)
                                                    {
                                                        
                                                        counter=counter+1;
                                                        var temp_list = JSON.parse(localStorage.getItem("items"));
                                                        var answer_list=[]; 
                                                        if (Array.isArray(temp_list) && temp_list.length)
                                                        { 
                                                        answer_list=temp_list;                             
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items[i].value ,"type" : <%=item.getques_type()%>});
                                                        }
                                                        else
                                                        answer_list.push(     {"id" : <%=item.getid()%>, "answer" : items[i].value ,"type" : <%=item.getques_type()%>});
                                                        localStorage.setItem("items", JSON.stringify(answer_list));
                                                    }
                                                
                                                }
                                                
                                                if(counter==0)
                                                    document.getElementById("errorMsg").innerHTML ="Please choose one of the options";
                                                else
                                                    next(answer_list)
                                                
                                                
                                               // alert(JSON.stringify(answer_list));  
                                                
                                                
                                                ;
                                                
                                                }   //if  type 4
                                                
                                                
                                                
                                               
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                }// function
                                                
                                                
                                                
                                                
                                                function next (answer_list){
                                                    
                                                     <%question_pointer=question_pointer+1;%>
                                                
                                                
                                                if(<%=question_pointer%> >= <%=list.size()%>){
                                                
                                                
                                                // store cached answetr list in data base 
                                                
                                                
                                                
                                                // then here clear cacge
                                                
                                                // var myJsonString = JSON.stringify(answer_list);
                                                
                                                // document.write(myJsonString);
                                                
                                                window.open("submitAnswers?answers="+JSON.stringify(answer_list)+"&token="+'<%=token%>'+"&user_token="+'<%=user_token%>',"_self");  
                                                
                                                localStorage.clear();
                                                
                                                
                                                
                                                
                                                
                                                }
                                                
                                                else
                                                window.open("nextQuestion?question_pointer="+<%=question_pointer%>+"&token="+'<%=token%>'+"&user_token="+'<%=user_token%>'  ,"_self");                     
                                                
                                                
                                                
                                                
                                                    
                                                    
                                                } //  next() function 
                                                
                                              </script>

                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              

                                              


                                              
                                              
                                              
                                              
                                              







                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              


                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              
                                              




                                            </div>
                                          </div>
                                        </div>
                                      </div>



                                      
                                      

                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                    </body>
                                    
                                    

                                    
                                  </html>
