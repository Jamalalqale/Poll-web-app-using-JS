

<%@page import="Items.answers"%>
<%@page import="java.util.Arrays"%>
<%@page import="Items.questionnaireUsersItem"%>
<%@page import="Items.subQuestionsItem"%>
<%@page import="Items.questionsItem"%>
<%@page import="java.util.ArrayList"%>
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
                            <h3 class="bg-danger text-white text-center py-3">Participations</h3>
                        </div>

  

                                
                                             
                   <!--   Menu   -->
                        

                   <nav class="navbar navbar-expand-lg navbar-light bg-light">

                       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                           <span class="navbar-toggler-icon"></span>
                       </button>



                       <div class="collapse navbar-collapse" id="navbarSupportedContent">
                           <ul class="navbar-nav mr-auto">


                                          
                             <form action="menueBar">
                                      
                    <button id="home"  name="home"  class="btn btn-link">Home</button>
                                        
                      <input id="manager_id"  name="manager_id" type="hidden" />
                   

                     </form>
                                          
                            <script>
                            document.getElementById("manager_id").value = localStorage['managerId'];
                        </script>  
                        

                           </ul>

                           <div  class="form-inline my-2 my-lg-0">     
                               
                         <a href="loginmanager.html">     <button id="logout" name="logout"   onclick="clearCache()"  class="btn btn-outline-danger my-2 my-sm-0"  type="button">Logout</button> </a>
              
                           </div>


                       </div>
                   </nav>
                          
                                                 
                  
                   
                    <%
                      
                           int  participant_pointer = (int) request.getAttribute("participant_pointer");                       
                            String   quesionnaireTitle = (String) request.getAttribute("quesionnaireTitle");
                            int   questionnaire_id = (int) request.getAttribute("questionnaire_id");
                            int   participant_length = (int) request.getAttribute("participant_length");
                            
                              String   particibant_name = (String) request.getAttribute("particibant_name");
                            
                          
                            
                            ArrayList<questionsItem> list = new ArrayList<questionsItem>();
                            list = (ArrayList<questionsItem>) request.getAttribute("questionslist");
                            

                            ArrayList<answers> list2 = new ArrayList<answers>();
                            list2 = (ArrayList<answers>) request.getAttribute("answers_list");

                        %>

                   
                        
                         <div  class="d-flex justify-content-center">                        
                             
                             
                             <h3>   <label name="quesionnaireTitle" type="text"  disabled  id="quesionnaireTitleLabel"  > <%=quesionnaireTitle%></label>  </h3>
                         </div>
                          
                   
                         
                         <div class="d-flex justify-content-center">
                             
                    <label>  <%int x =participant_pointer+1;out.println(x);%> / <%=participant_length%>  </label>

                             
                             </div>
                    
                    
                    
                    <div >
                             
                    <label class="font-weight-bold" >Username </label> <label> <%=particibant_name%></label>

                             
                             </div>
                         
                   
                   
                      <table class="table table-bordered">
                            <tr>

                                                         

                            </tr>


                            <%  String Date_submitted="";
                                for (int i = 0; i < list.size(); i++) {
                                    questionsItem item = new questionsItem();
                                    item = list.get(i);
                                    // out.println(item.getques_text());
                                    //out.println(actor.getFirstname());
                                    Date_submitted=item.getdate_created();
                            %>

                            <tr>

                                <td > <h5>   Q<%=i+1%>- <%=item.getques_text()%>  </h5> <br>



                                    <% for (int j = 0; j < list2.size(); j++) {
                                            answers item2 = new answers();
                                            item2 = list2.get(j);
                                            if (item2.get_ques_id()== item.getid()) {
                                                out.println(item2.get_answer());


                                    %>
                                    <br>
                                    <%                                    }//if
                                        }//for
                                    %>                      

                                </td>                                
                              


                              
                            </tr>

                            <%
                                };
                            %> 


                        </table>
                   
                   
                   
                  
                     <div  class="d-flex justify-content-center">                        
                             
                             <h7>   <label name="quesionnaireTitle" type="text"  disabled  id="quesionnaireTitleLabel"  > Date Submitted <%=Date_submitted%></label>  </h7>
                         </div>
                        
                         <div class="clearfix">
                                
                                              
                                <div class="float-right">
                      
                                <button  id="next"   style="display:block;"  onclick="next();" class="dropbtn">Next</button>  
                                     
                                </div>
                                   
                         
                             
                             
                            
                             
                             
                             <div class="float-left">
                      
                                <button id="perviousButton" style="display:none;" onclick="Pervious();" class="dropbtn">Pervious</button>  
                                     
                                </div>
                             
                             
                            </div>
                        
                        
      
                         
                         
                         
                        
                        
                        
                       
                            
                            <script>
                                
                                
                               
                                 var perviousButton = document.getElementById("perviousButton");
                                 var next = document.getElementById("next");
                                 
                                 var participant_pointer=<%=participant_pointer%>;
                                  var participant_length=<%=participant_length%>;
                                 
                          
                                           if(participant_pointer==0)
                                     perviousButton.style.display = "none";
                                        else
                                          perviousButton.style.display = "block";
                                      
                                  if(participant_pointer==participant_length-1)
                                        next.style.display = "none";
                                    else
                                        next.style.display = "block"; 
                                    
                                  
                           
                            
                                                     
                            </script> 
                            
                            
                            
                    <script>

                            function next() {
                              //   alert("JSON.stringify(answer_list)"); 
                              
                              var participant_pointer=<%=participant_pointer%>;
                            
                             participant_pointer=participant_pointer+1;
               
                   window.open('display_prticipant_answers?lastidQuestionnaire='+<%=questionnaire_id%>+'&participant_pointer='+participant_pointer +'&participant_length='+'<%=participant_length%>' +  '&quesionnaireTitle='+'<%=quesionnaireTitle%>'   ,"_self");  
                                      
                            }
                            
                            
                   
                            
                            
                            
                            
                   </script>
                        
                   
                   <script>
                                
                             function Pervious() {
                                 
                                 
                                var participant_pointer=<%=participant_pointer%>;
                            
                             participant_pointer=participant_pointer-1;
                              
                              
               
               
                   window.open('display_prticipant_answers?lastidQuestionnaire='+<%=questionnaire_id%>+'&participant_pointer='+participant_pointer    +'&participant_length='+'<%=participant_length%>' +   '&quesionnaireTitle='+'<%=quesionnaireTitle%>'   ,"_self");  
                                      
                            }
                            
                            </script>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                   
                   
                   
                   
      
                    <script>

                            function clearCache() {
                                
               
                                
                                window.localStorage.clear();
                                

                                


                            }





                        </script>                         

                        
                    <script>
                   document.getElementById("manager_id").value = localStorage['managerId'] ;
                    </script>   
                    
                    
                    
       <!----------------------------------------------- End  Menu-------------------------------   -->            
                          
                          
       
                        
                        
                        
                        
                        
               


                    </div>
                </div>
            </div>
        </div>








    </body>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        
        #uestionnaireUsersTable {
    visibility: none;
}


        .switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 34px;
        }

        .switch input { 
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 26px;
            width: 26px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            -webkit-transition: .4s;
            transition: .4s;
        }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:focus + .slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked + .slider:before {
            -webkit-transform: translateX(26px);
            -ms-transform: translateX(26px);
            transform: translateX(26px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 34px;
        }

        .slider.round:before {
            border-radius: 50%;
        }
    </style>

    <style>

        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {background-color: #f1f1f1}

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }


        body {font-family: Arial, Helvetica, sans-serif;}

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
    
    
</html>