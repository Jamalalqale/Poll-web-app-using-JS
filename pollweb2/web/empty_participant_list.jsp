

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
                        

              
                          
                                                 
                  
                 
                        
                         <div  class="d-flex justify-content-center">                        
                             
                             
                             <h5>   <label name="quesionnaireTitle" type="text"  disabled  id="quesionnaireTitleLabel"  >There is no participants </label>  </h5>
                         </div>
                          
                  
                   
                       <div class=" clearfix">

                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>

                                
                            </div>  
                    
       <!----------------------------------------------- End  Menu-------------------------------   -->            
                          
                          
        
        <script>
        
        
          function back(){
                                
                                var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
                                
                                window.open("showQuestionnaire?questionnaireId="+lastidQuestionnaire  ,"_self");                     

                            }
                          </script>
                        
                        
                        
                        
               


                    </div>
                </div>
            </div>
        </div>








    </body>


 
 
    
</html>