

<%@page import="java.util.ArrayList"%>
<%@page import="Items.subQuestionsItem"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.Locale.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" a href="CSS/bootstrap.css" />


        <title>View Records</title>



    </head>
    <body class="bg-light">

        <div class="container">
            <div class="row">
                <div class="col m-auto">
                    <div class="card mt-5">

                        <div class="card-title">
                            <h3 class="bg-danger text-white text-center py-3"> Edit Question</h3>
                        </div>




                        <%
                            int question_id;
                            question_id = (int) request.getAttribute("question_id");
                            String question_text;
                            question_text = (String) request.getAttribute("question_text");
                        %>



                        <%
                            ArrayList<subQuestionsItem> list2 = new ArrayList<subQuestionsItem>();
                            list2 = (ArrayList<subQuestionsItem>) request.getAttribute("sub_questionslistById");
                            for (int i = 0; i < list2.size(); i++) {
                                subQuestionsItem item3 = new subQuestionsItem();
                                item3 = list2.get(i);
                                // out.println(item3.getsub_ques_text());


                        %>

                     
                        
                        <% }


                        %>






                        <div class="card-body">  
                          

                                <input id="radioQuestion" type="text" class="form-control mb-2" placeholder=" Question Text " name="radioQuestion" >
                                        <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                                 <input id="question_id"   type="hidden"name ="question_id"/>


                                <div class="list-group-item" id="container">

                                    
                                    <%
                                        for (int i = 0; i < list2.size(); i++) {
                                            subQuestionsItem item3 = new subQuestionsItem();
                                            item3 = list2.get(i);
                                            // out.println(item3.getsub_ques_text());

                                    %>

                                    
                         
                               
                                    
                                     <input class="form-check-input" type="checkbox" name="radioStatus"  >
                                    <input class="form-check-label" name="radioText" value ="  <%=item3.getsub_ques_text()%>"  > </input>
                               
                                    
                   
                                      <br>
                                    
                                    <% } %>

                       


                                </div> 
                                    
                                    <p><p>
                             
                               
                               <div class=" clearfix">
           <button class="btn btn-primary"  id="submit">Add</button>
        <button   onclick="deleteCheckedElement()" class="btn btn-danger"  id="createCheckbox"   >Delete</button>
          
      </div>


                                   <div  class="d-flex justify-content-center">                        
                             
                               <h7>   <label name="errorMsg"  id = "errorMsg" type="text"  class="text-danger" disabled > </label>  </h7>
                              </div> 

                                    
                                    
                                    
                                    
                                   
                                     
                                    
                          <div class=" clearfix">

                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                                <button onclick="updateShortQuestion();"  id="updateShortQuestion"  name ="updateShortQuestion"   type="button" class="btn btn-success float-right">Update Question</button>
                            </div> 
                                    

                        </div>     


                    </div>
                </div>
            </div>
        </div>



                                    
                                      <script>
                            
                            function back(){
                                
                                var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
                                
                                window.open("showQuestionnaire?questionnaireId="+lastidQuestionnaire  ,"_self");                     

                            }
                            
                            
                               function updateShortQuestion(){
                                
                                var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
                                var question_text = document.getElementById("radioQuestion").value;
                                var question_id = '<%=question_id %>';
                                
                            
                                if(question_text.length<1)
                                
                                 document.getElementById("errorMsg").innerHTML ="The Question Box Shouldn't Be Empty";
                                
                                else
                                {
                                var items=document.getElementsByName('radioText');
                                  var selectedItems="";
                                  var flag=0;
				for(var i=0; i<items.length; i++)
                                {
                                    //selectedItems=items[i].value;
                                    if(items[i].value.length<1)
                                        flag=1;
                                    else
                                        selectedItems=selectedItems+"&radioText="+items[i].value;
                                }
                                
                                if(flag==1)
                                    document.getElementById("errorMsg").innerHTML ="Checkboxs Shouldn't Be Empty";
                                else                                    
                                {
                                     
                                     window.open("updateQuestion?radioQuestion="+question_text+"&lastidQuestionnaire="+lastidQuestionnaire+
                                            "&question_id="+question_id+"&updateRadioQuestion="+selectedItems  ,"_self");
                                     
                                     
                                }
                                    
                                      
                            //
                                }

                            }
                            
                            
                        </script>    
                        
                        
                        
                        
                        
                        
                        
                        
                        

        <script>

            var lastidQuestionnaire = localStorage['lastidQuestionnaire'];

            document.getElementById("lastidQuestionnaire").value = lastidQuestionnaire;

            document.getElementById("radioQuestion").value = '<%=question_text%>';
            
                  document.getElementById("question_id").value ='<%=question_id %>';


        </script>


        <script>




            document.getElementById('submit').onclick = function () {
                var checkbox = document.createElement('input');
                checkbox.type = 'checkbox';
          
                checkbox.class = 'form-control';
                checkbox.name = 'radioStatus';



                var label = document.createElement('input')
                label.name = 'radioText';
                
             

               var br = document.createElement('br');

                var container = document.getElementById('container');
                container.appendChild(checkbox);
                container.appendChild(label);
          
                container.appendChild(br);
            }

        </script>     


        
           <script>
              function deleteCheckedElement(){
                
             
       
                                              
                                             
                                var items=document.getElementsByName('radioText');
                   
                                 var checked=document.getElementsByName('radioStatus');                           
                            
				for(var i=0; i<checked.length; i++)
                                            {       
                                                    if(checked[i].checked==true)
                                                    {
                                       
                                                           checked[i].parentElement.removeChild(checked[i]);
                                                         items[i].parentElement.removeChild(items[i]); 
                                                         
                                                    }
                                                }
                                                
                                                
                
            }
            
               </script>  
            
    </body>


