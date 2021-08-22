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
                <div class="col-lg-6 m-auto">
                    <div class="card mt-5">
                        <div class="card-title">
                            <h3 class="bg-danger text-white text-center py-3"> Edit Manager</h3>
                        </div>
                        <div class="card-body">
                            
                                                  
                          

                        


                               
                             <form action ="editQuestionnaireUser">
                            Name <input type="text" id="name" class="form-control mb-2" disabled="true"  placeholder="Name "  name="name" >   
                             <input id="x"  type="hidden" name ="questionnaireUser_id"/>
                              <input id="y"  type="hidden" name ="lastidQuestionnaire"/>
                            <button id="savename" class="btn btn-success" style="display:none;" name="savename"  >Submit</button>                             
                            </form>     
                            
                            <button id="editname"   onclick="myFunction1('savename','editname','cancelname','name',)" class="btn btn-primary" name="edit" >Edit</button>
                            <button id="cancelname"   onclick="myFunction1('savename','editname','cancelname','name')" style="display:none;" class="btn btn-danger" name="Cancel" >Cancel</button> 

                            <form action ="editQuestionnaireUser">

                           
                            Email <input type="text" id="email" class="form-control mb-2" disabled="true" placeholder="email"    value=""    name="email" >                       
                            <input id="m" type="hidden" name ="questionnaireUser_id"/>
                            <input id="n"  type="hidden" name ="lastidQuestionnaire"/>
                       

                           <button id="saveemail" class="btn btn-success" style="display:none;" name="saveemail"  >Submit</button>  
                            </form>
                            <button id="editemail"   onclick="myFunction2('saveemail','editemail','cancelemail','email')" class="btn btn-primary" name="edit" >Edit</button>
                            <button id="cancelemail"   onclick="myFunction2('saveemail','editemail','cancelemail','email')" style="display:none;" class="btn btn-danger" name="Cancel" >Cancel</button> 

                            
                            
                             <form action ="editQuestionnaireUser">                       
                           Password  <input type="text" id="password" class="form-control mb-2" disabled="true" placeholder="Password "  value=""   name="password" > 
                            <input id="a"   type="hidden" name ="questionnaireUser_id"/>
                            <input id="b"  type="hidden" name ="lastidQuestionnaire"/>
                            
                          <button id="savepass" class="btn btn-success" style="display:none;" name="savepass"  >Submit</button>  
                            </form>
                            
                            <button id="editpass"   onclick="myFunction3('savepass','editpass','cancelpass','password')" class="btn btn-primary" name="edit" >Edit</button> 
                            <button id="cancelpass"   onclick="myFunction3('savepass','editpass','cancelpass','password')" style="display:none;" class="btn btn-danger" name="Cancel" >Cancel</button> 

                        
                            
                            
                            <br><br>
                              
                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                             
                                
                           
                            
                            
                         
                                    
                            
                            <script>
                                
                                          function back(){
                                
                                var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
                                
                                window.open("showQuestionnaire?questionnaireId="+lastidQuestionnaire  ,"_self");                     

                            }
                            
                            
                            
                                
                               function myFunction1(x,y,z,w){                                 
                                   
                                   var save = document.getElementById(x);
                                   var edit = document.getElementById(y);
                                   var cancel = document.getElementById(z);
                             
                                 
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
                                
                               function myFunction2(x,y,z,w){                                 
                                   
                                   var save = document.getElementById(x);
                                   var edit = document.getElementById(y);
                                   var cancel = document.getElementById(z);
                             
                                 
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
                                
                               function myFunction3(x,y,z,w){                                 
                                   
                                   var save = document.getElementById(x);
                                   var edit = document.getElementById(y);
                                   var cancel = document.getElementById(z);
                             
                                 
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
                                 
                                 
                                 document.getElementById("name").value = localStorage.getItem('questionnaireUser_name');
                                 document.getElementById("email").value = localStorage.getItem('questionnaireUser_email');
                                 document.getElementById("password").value = localStorage.getItem('questionnaireUser_password');
                                 
                                 
                                 document.getElementById("y").value = localStorage.getItem('lastidQuestionnaire');
                                 document.getElementById("x").value = localStorage.getItem('questionnaireUser_id');
                                 
                                 document.getElementById("n").value = localStorage.getItem('lastidQuestionnaire');
                                 document.getElementById("m").value = localStorage.getItem('questionnaireUser_id');
                                 
                                 document.getElementById("b").value = localStorage.getItem('lastidQuestionnaire');
                                 document.getElementById("a").value = localStorage.getItem('questionnaireUser_id');

                
                
                            </script>

                    


                                
 
                        </div>
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

