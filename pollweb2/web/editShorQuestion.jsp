

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



                        <!-- raking values from JS cache-->


                        <!--  <h1><span id="quesionnaireTitle"></span></h1>   -->
                        <!--  <h1><span id="lastidQuestionnaire"></span></h1>   -->


                         <%
                        
                            int question_type = (int) request.getAttribute("question_type");  
                            int question_id = (int) request.getAttribute("question_id");                       
                           String question_text = (String) request.getAttribute("question_text");
                        %>

                        
                        
                      
                        



                        <div class="card-body">


                        

                                <input id="question_input" type="text" class="form-control mb-2" placeholder=" Question Text " name="shortQuestion" >
                                <input id="answer" type="password" class="form-control mb-2" disabled placeholder="Short answer" name="answer" >

                                <input id="lastidQuestionnaire"   type="hidden"name ="lastidQuestionnaire"/>
                                <input id="question_id"   type="hidden"name ="question_id"/>
                  
                                
                                
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
                                var question_text = document.getElementById("question_input").value;
                                var question_id = '<%=question_id %>';
                                
                            
                                if(question_text.length<1)
                                
                                 document.getElementById("errorMsg").innerHTML ="The Question Box Shouldn't Be Empty";
                                
                                else
                                window.open("updateQuestion?shortQuestion="+question_text+"&lastidQuestionnaire="+lastidQuestionnaire+"&question_id="+question_id+"&updateShortQuestion="  ,"_self");                     

                            }
                            
                            
                        </script>    
                        
                           <script>
                         
                         var question_type=<%=question_type%>;
                         
                         if(question_type==1)
                             document.getElementById("answer").placeholder="Short answer";
                         else if(question_type==2)
                             document.getElementById("answer").placeholder="Long answer";
                         else if(question_type==5)
                             document.getElementById("answer").placeholder="Number answer";
                         else if(question_type==6)
                             document.getElementById("answer").placeholder="Date answer";
                         
                         
                         //document.getElementById("answer").placeholder="Date answer";
                         </script>
                         
                         
                         

        <script>

            //var quesionnaireTitle = localStorage['quesionnaireTitle'];
            var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
            //var isprivate = localStorage['isprivate'];
            // document.getElementById("quesionnaireTitle").innerHTML = quesionnaireTitle;
            //  document.getElementById("lastidQuestionnaire").innerHTML = lastidQuestionnaire;
            document.getElementById("lastidQuestionnaire").value = lastidQuestionnaire;
            //document.getElementById("quesionnaireTitle").value = quesionnaireTitle;
            document.getElementById("question_input").value ='<%=question_text %>';
             document.getElementById("question_id").value ='<%=question_id %>';


        </script>



    </body>


