<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="Items.StudentBean"%>
<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
 
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" a href="CSS/bootstrap.css"/>
    <title>Add Manager</title>


</head>


<body class="bg-light">
 
        <div class="container">
            <div class="row">
             <div class="col m-auto">
                    <div class="card mt-5">
                        <div class="card-title">
                            <h3 class="bg-danger text-white text-center py-3"> Add Manager</h3>
                        </div>
                        
                        
                        <%
                            
                              String msg="888";
                              
                              
                              
                              try{
                                  
                              msg=(String) request.getAttribute("msg");
                              
                              }

                                catch (NullPointerException ex){
                                    msg="";
                                    

                                }
                         
                          %>
                        
                      
                         
                        
                                                      
 <!-- -------------------------------------------------------  Menu   ----------------------------------------------------------------------------------------------->


                        <nav class="navbar navbar-expand-lg navbar-light bg-light">

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>



                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto">


                                    
                                    
                                   <form action="adminMenu">

                                        <button id="home"  name="home"  class="btn btn-link">Home</button>

                                    </form>
                                    
                                 
                                     
                                     


                                </ul>

                                <div  class="form-inline my-2 my-lg-0">     

                                    <a href="index.html">     <button id="logout" name="logout"   onclick="clearCache()"  class="btn btn-outline-danger my-2 my-sm-0"  type="button">Logout</button> </a>

                                </div>


                            </div>
                        </nav>




                        <script>

                            function clearCache() {

                                window.localStorage.clear();
                            }





                        </script>     


                        <!----------------------------------------------- End  Menu-------------------------------   -->            

                  
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        <p>
                     <div class="col-lg-5 m-auto">

                        
                                                <div  class="d-flex justify-content-center">                        

                                                <h7>   <label name="errorMsg"  id = "errorMsg" type="text"  class="text-danger" > </label>  </h7>
                                              </div>


                      

                            <input type="text" class="form-control mb-2" placeholder="Name "      id="name"   name="name" >
                            <input type="text" class="form-control mb-2" placeholder="Username "  id="username"   name="username" >                            
                            <input type="text" class="form-control mb-2" placeholder="Email "      id="email"  name="email" >
                            <input type="text" class="form-control mb-2" placeholder="Password "   id="password"  name="password" >

                            <button  onclick="submit();" class="btn btn-success" name="submit">Submit</button>
                   

                         

 
                        </div>   
                        <p>
                          
                             <script>
                                document.getElementById("errorMsg").innerHTML ='<%=msg%>';
                                </script>
                                
                                
                                
                            <script>
                                
                                function submit(){
                                    
                                    var name=document.getElementById('name').value;
                                     var username=document.getElementById('username').value;
                                      var email=document.getElementById('email').value;
                                       var password=document.getElementById('password').value;
                                       
                                       
                                       if(name.length<1 ||  username.length<1 ||   email.length<1 ||  password.length<1){
                                           
                                            document.getElementById("errorMsg").innerHTML ="The boxs shouldn't be empty";
                                           
                                             
            
                                       }
                                       else
                                         window.open("addmanager?name="+ name  +"&username="+ username  +"&email="+ email +"&password="+password  ,"_self");   
                                           
                                  
        
                                                

                                    
                                }
                                
                                
                                
                            </script>    
                            
                            
                            
                            
                            
                    </div>
                </div>
            </div>
        </div>
    
</body>








</html>
