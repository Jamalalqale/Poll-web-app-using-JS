<%-- 
    Document   : editmanager
    Created on : Jun 7, 2020, 12:53:08 PM
    Author     : JOEY
--%>

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
                            <h3 class="bg-danger text-white text-center py-3"> Edit Manager</h3>
                        </div>
                        
                        
                                           
                        
                        <%
                            
                              int errorCode=0;
                              
                              
                              
                              try{
                                  
                              errorCode=(int) request.getAttribute("errorCode");
                              
                              }

                                catch (NullPointerException ex){

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

                         <!--   <form action ="editManager"  >  -->    
                         
                            Name <input type="text" id="name" class="form-control mb-2" disabled="true"  placeholder="Name "  name="name" >                                  
                                 
                            <button id="editname"   onclick="myFunction3('savename','editname','cancelname','name')" class="btn btn-primary" name="edit" >Edit</button> 

                             <div class="form-inline">

                                
                                <div class="form-group mx-sm-3 mb-2"> 
                            <button onclick="updateName();"  id="savename" class="btn btn-success" style="display:none;" name="updateName"  >Submit</button>                             
                                </div>
                                
                                <div class="form-group mx-sm-3 mb-2">                                               
                            <button id="cancelname"   onclick="myFunction3('savename','editname','cancelname','name')" style="display:none;" class="btn btn-danger" name="Cancel" >Cancel</button> 
                                </div>
                                
                                
                            </div>
                            
                            
                            

                           
                            Username <input type="text" id="username" class="form-control mb-2" disabled="true" placeholder="Username "    value=""    name="username" >                       
                       
                            
                                
                            <button id="editusername"   onclick="myFunction1('saveusername','editusername','cancelusername','username')" class="btn btn-primary" name="edit" >Edit</button>
                            
                            
                            <div class="form-inline">

                                
                                <div class="form-group mx-sm-3 mb-2"> 
                                <button  onclick="updateUsername();"   id="saveusername" class="btn btn-success" style="display:none;" name="updateUsername"  >Submit</button>  
                                </div>
                                
                                <div class="form-group mx-sm-3 mb-2">                                               
                                <button id="cancelusername"   onclick="myFunction1('saveusername','editusername','cancelusername','username')" style="display:none;" class="btn btn-danger" name="Cancel" >Cancel</button> 
                                </div>
                                
                                
                            </div>

                            
                            
                             
                            Email <input type="text" id="email" class="form-control mb-2" disabled="true" placeholder="Email "    value=""    name="email" >                       
                         
                            
                                
                            <button id="editemail"   onclick="myFunction4('saveemail','editemail','cancelemail','email')" class="btn btn-primary" name="edit" >Edit</button>
                            
                            
                            <div class="form-inline">

                                
                                <div class="form-group mx-sm-3 mb-2"> 
                                <button  onclick="updateEmail();"   id="saveemail" class="btn btn-success" style="display:none;" name="updateEmail"  >Submit</button>  
                                </div>
                                
                                <div class="form-group mx-sm-3 mb-2">                                               
                                <button id="cancelemail"   onclick="myFunction4('saveemail','editemail','cancelemail','email')" style="display:none;" class="btn btn-danger" name="Cancel" >Cancel</button> 
                                </div>
                                
                                
                            </div>
                            
                            
                            
                           
                            
                    
                          
                                          
                           Password  <input type="text" id="password" class="form-control mb-2" disabled="true" placeholder="Password "  value=""   name="password" > 
                   
                            
                            
                                 <button id="editpass"   onclick="myFunction2('savepass','editpass','cancelpass','password')" class="btn btn-primary" name="edit" >Edit</button> 
                                 
                                 
                                 
                            <div class="form-inline">

                                
                                <div class="form-group mx-sm-3 mb-2"> 
                                <button onclick="updatePassword();"  id="savepass" class="btn btn-success" style="display:none;" name="updatePassword"  >Submit</button>  
                                </div>
                                
                                <div class="form-group mx-sm-3 mb-2">                                               
                                 <button id="cancelpass"   onclick="myFunction2('savepass','editpass','cancelpass','password')" style="display:none;" class="btn btn-danger" name="Cancel" >Cancel</button> 
                                </div>
                                
                                
                            </div>
                                 
                                 
                        
                          
                   
                            
                               
                                </div> <!-- card -->   
                        
                             <p>
                              <script>
                                  
                                  <% if (errorCode==1)
                                  {
                                  %>
                        
                                document.getElementById("errorMsg").innerHTML ='Username already exists';
                                
                                <%}
                                else if(errorCode==2)
                                 {
                                  %>
                        
                                document.getElementById("errorMsg").innerHTML ='Email already exists';
                                
                                <%}%>

                                </script>   
                            <script>
                            
                            function updateUsername(){
                                
                                
                            
                            var id = localStorage.getItem('id');
                            var username=document.getElementById("username").value;
                            
                            
                            if(username.length<1)
                                
                               document.getElementById("errorMsg").innerHTML ="The username shouldn't be empty";

                                else
                                {
                                     localStorage.setItem("username", username);
                                     window.open("editManager?updateUsername=&username="+username+"&tokenField="+id ,"_self");  
                                }
                                               

                            }
                            
                            
                            
                            function updatePassword (){
                                
                            var id = localStorage.getItem('id');
                            var password=document.getElementById("password").value;
                            
                              if(password.length<1)
                                
                               document.getElementById("errorMsg").innerHTML ="The password shouldn't be empty";
                            else
                            {
                                 localStorage.setItem("password", password);
                                 window.open("editManager?updatePassword=&password="+password+"&tokenField="+id ,"_self");   
                                
                            }
                            
                                
                            }
                            
                             function updateName (){
                                
                            var id = localStorage.getItem('id');
                            var name=document.getElementById("name").value;
                            
                              
                              if(name.length<1)
                                
                               document.getElementById("errorMsg").innerHTML ="The name shouldn't be empty";
                            else
                            {
                                localStorage.setItem("name", name);
                                window.open("editManager?updateName=&name="+name+"&tokenField="+id ,"_self");   

                                
                            }
                                
                                
                            }
                            
                            
                            function updateEmail (){
                                
                            var id = localStorage.getItem('id');
                            var email=document.getElementById("email").value;
                            
                            
                                
                              if(email.length<1)
                                
                               document.getElementById("errorMsg").innerHTML ="The email shouldn't be empty";
                            else
                            {
                                 localStorage.setItem("email", email);
                                 window.open("editManager?updateEmail=&email="+email+"&tokenField="+id ,"_self");  
                                
                            }
                                
                             
                                
                            }
    
    
                            </script>
                               
                               
                               
                               
                            <script>
                                
                               function myFunction1(x,y,z,w){                                 
                                   
                                   var save = document.getElementById(x);
                                   var edit = document.getElementById(y);
                                   var cancel = document.getElementById(z);
                                    var username = document.getElementById(w);
                                 
                                 if (save.style.display === "none")
                                    save.style.display = "block";
                                else
                                    save.style.display = "none";
                                
                                if (edit.style.display === "none")
                                    edit.style.display = "block";
                                else
                                    edit.style.display = "none";
                                
                                if (cancel.style.display === "none")
                                    cancel.style.display = "block";
                                else
                                    cancel.style.display = "none"; 
                                
                                 if (document.getElementById("username").disabled == true)
                                    document.getElementById("username").disabled = false
                                else
                                    document.getElementById("username").disabled = true
                                    
                                                            
                                   
                               }

                                
                            </script>
                            
                             <script>
                                
                               function myFunction2(x,y,z,w){                                 
                                   
                                   var save = document.getElementById(x);
                                   var edit = document.getElementById(y);
                                   var cancel = document.getElementById(z);
                                    var username = document.getElementById(w);
                                 
                                 if (save.style.display === "none")
                                    save.style.display = "block";
                                else
                                    save.style.display = "none";
                                
                                if (edit.style.display === "none")
                                    edit.style.display = "block";
                                else
                                    edit.style.display = "none";
                                
                                if (cancel.style.display === "none")
                                    cancel.style.display = "block";
                                else
                                    cancel.style.display = "none"; 
                                
                                 if (document.getElementById("password").disabled == true)
                                    document.getElementById("password").disabled = false
                                else
                                    document.getElementById("password").disabled = true
                                    
                                                            
                                   
                               }

                                
                            </script>
                            
                            
                                    <script>
                                
                               function myFunction3(x,y,z,w){                                 
                                   
                                   var save = document.getElementById(x);
                                   var edit = document.getElementById(y);
                                   var cancel = document.getElementById(z);
                                    var username = document.getElementById(w);
                                 
                                 if (save.style.display === "none")
                                    save.style.display = "block";
                                else
                                    save.style.display = "none";
                                
                                if (edit.style.display === "none")
                                    edit.style.display = "block";
                                else
                                    edit.style.display = "none";
                                
                                if (cancel.style.display === "none")
                                    cancel.style.display = "block";
                                else
                                    cancel.style.display = "none"; 
                                
                                 if (document.getElementById("name").disabled == true)
                                    document.getElementById("name").disabled = false
                                else
                                    document.getElementById("name").disabled = true
                                    
                                                            
                                   
                               }

                                
                            </script>
                            
                            
                            
                                      <script>
                                
                               function myFunction4(x,y,z,w){                                 
                                   
                                   var save = document.getElementById(x);
                                   var edit = document.getElementById(y);
                                   var cancel = document.getElementById(z);
                                    var email = document.getElementById(w);
                                 
                                 if (save.style.display === "none")
                                    save.style.display = "block";
                                else
                                    save.style.display = "none";
                                
                                if (edit.style.display === "none")
                                    edit.style.display = "block";
                                else
                                    edit.style.display = "none";
                                
                                if (cancel.style.display === "none")
                                    cancel.style.display = "block";
                                else
                                    cancel.style.display = "none"; 
                                
                                 if (document.getElementById("email").disabled == true)
                                    document.getElementById("email").disabled = false
                                else
                                    document.getElementById("email").disabled = true
                                    
                                                            
                                   
                               }

                                
                            </script>
                            
                            
                            
                            
                            
                            
                            
                                

                        <script>
                                  
                          document.getElementById("name").value = localStorage.getItem('name');
                          document.getElementById("username").value = localStorage.getItem('username');
                          document.getElementById("email").value = localStorage.getItem('email');
                          document.getElementById("password").value = localStorage.getItem('password');
               
                       

                            </script>
                            
                       


                                
 
                       
                    </div>
                </div>
            </div>
        </div>
    
</body>



<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.switch {
  position: relative;
  display: inline-block;
  width: 46px;
  height: 24px;
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
  height: 20px;
  width: 20px;
  left: 1px;
  bottom: 2px;
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





</html>

