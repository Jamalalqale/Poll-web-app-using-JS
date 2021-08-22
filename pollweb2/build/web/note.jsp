<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" a href="CSS/bootstrap.css" />
        
        
        
    </head>
    <body>
        
        
        
  
        
        
        <script>
             
             
                  localStorage.clear(); 
             
        </script>
             
             <%
                            
                              String note="";
                              
                              
                              
                              try{
                                  
                              note=(String) request.getAttribute("note");
                              
                              }

                                catch (NullPointerException ex){
                                    note="";
                                    

                                }
                         
                          %>
        
        

                            <div class="jumbotron text-center">
                      <h1 class="display-3">We're sorry!</h1>
                      <p class="lead">  <%=note%>  </p>
                      <hr>
                     
                    </div>
             
             
             
             
       
        
        
    </body>
</html>
