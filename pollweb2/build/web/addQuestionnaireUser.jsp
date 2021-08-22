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
                            <h3 class="bg-danger text-white text-center py-3"> Add Questionnaire User</h3>
                        </div>
                        
                        
                        
                        
                        <div class="card-body">
                            


                         
                                Name      <input type="text" id="name" class="form-control mb-2"  placeholder="Name "  name="name" > 
                                Email     <input type="text" id="email" class="form-control mb-2"  placeholder="Email"     name="email" >  
                                Password  <input type="text" id="password" class="form-control mb-2"  placeholder="Password "  name="password" > 
               

                                
                               <div  class="d-flex justify-content-center">                       
                             
                               <h7>   <label name="errorMsg"  id = "errorMsg" type="text"  class="text-danger" disabled > </label>  </h7>
                              </div> 
                    

                                <div class=" clearfix">
                                <button onclick="back();"     id="back"  name ="back"   type="button" class="btn btn-secondary float-left ml-2">Back</button>
                                <button onclick="add();"     id="add"  name ="add"   type="button" class="btn btn-success float-right ml-2">Add</button>
                                
                            </div> 
                                
                            
                            <script>
                                
                                   function back(){
                                
                                var lastidQuestionnaire = localStorage['lastidQuestionnaire'];
                                
                                window.open("showQuestionnaire?questionnaireId="+lastidQuestionnaire  ,"_self");                     

                            }
                            
                            
                            
                                function add(){
                                    
                                 
                                 var name = document.getElementById("name").value;
                                  var email = document.getElementById("email").value;
                                   var password = document.getElementById("password").value;
                                   var lastidQuestionnaire = localStorage.getItem('lastidQuestionnaire');
                                   
                                    if(name.length<1  || email.length<1  || password.length<1)
                                             
                                 document.getElementById("errorMsg").innerHTML ="The Boxs Shouldn't Be Empty";
                                   
                                   else
                                
                                     window.open("addQuestionnaireUser?name="+name+"&email="+email+"&password="+password+"&lastidQuestionnaire="+lastidQuestionnaire  ,"_self");
                                 }
                                    
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

