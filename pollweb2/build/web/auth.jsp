


<%@page import="java.util.Arrays"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.Locale.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
 
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" a href="CSS/bootstrap.css"/>
    <title>Login</title>


</head>


<body class="bg-light">
 
        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto">
                    <div class="card mt-5">
                        <div class="card-title">
                            <h3 class="bg-danger text-white text-center py-3">Auth</h3>
                        </div>
                        <div class="card-body">

                        
                            <%
                      
                                  String  questionnaire_token = (String) request.getAttribute("questionnaire_token");
                                   String  loginmsg = (String) request.getAttribute("loginmsg");

                                    %>

                                    
                                    
                                       
                                   <div  class="d-flex justify-content-center">                        
                             
                             <h7>   <label name="loginmsg"  id = "loginmsg" type="text"  class="text-danger"  >  <%=loginmsg%> </label> </h7>
                         </div>
                                
                         
                         
                         
                            <form action ="auth">
                                
                                
                                
                           
                                
                             
                                

                            <input type="text" class="form-control mb-2" placeholder="Email" name="email" >
                              <input type="password" class="form-control mb-2" placeholder="Password" name="password" >
                              
                              <input  type= "hidden" name="questionnaire_token" value="<%=questionnaire_token%>" >

                            
                                  <button class="btn btn-success" name="login">Login</button>
                           



                            </form>



                     


                                
 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
</body>








</html>
