<%-- 
    Document   : controlAdmin
    Created on : Jun 6, 2020, 11:53:58 AM
    Author     : JOEY
--%>

<%@page import="Items.questionnairesItem"%>
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
    <title>View Records</title>
    
    
</head>
<body class="bg-light">
 
        <div class="container">
            <div class="row">
                <div class="col m-auto">
                    <div class="card mt-5">

                                              
                        
                        <!-- taking values from java cache -->
                        <%
                             int managerId;
                              managerId = (int) request.getAttribute("managerId");                           
                          %>
                          

                        <%

                              ArrayList<questionnairesItem> list = new ArrayList<questionnairesItem>();
                              list = (ArrayList<questionnairesItem>) request.getAttribute("questionnaireslist");
                              
                          %>
                          
                          

                          <div class="card-title">
                            <h3 class="bg-danger text-white text-center py-3">Questionnaires</h3>
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
                                        
                      <input id="manager_id"  name="manager_id" type="hidden" value= <%=managerId%>  />
                   

                                    </form>
                                          


                           </ul>

                           <div  class="form-inline my-2 my-lg-0">     
                               
                         <a href="loginmanager.html">     <button id="logout" name="logout"   onclick="clearCache()"  class="btn btn-outline-danger my-2 my-sm-0"  type="button">Logout</button> </a>
              
                           </div>


                       </div>
                   </nav>
                          
                                                 
                         
      
                    <script>

                            function clearCache() {
                                
               
                                
                                window.localStorage.clear();
                                

                                


                            }


                        </script>                         

                
       <!----------------------------------------------- End  Menu-------------------------------   -->            
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                       
                          <div class="card-title">
                        <button  id="addQuestionnaire"  class="btn btn-primary" > Add Questionnaire </button>
                        </div>
                                          
                                        



                        <table class="table table-bordered">
                            <tr>
                              <td> Name </td>
                              <td> Status </td>  
                                <td> Date </td>
                                                             
                                
                            </tr>
 
                            
                            
                              <% for(int i = 0; i < list.size(); i++) {
                            questionnairesItem item = new questionnairesItem();
                            item = list.get(i);
                          
                            //out.println(actor.getFirstname());
                            //out.println(actor.getLastname());
                        %>
                                                           
                              <tr>
                       
                                  <td>
                                      
                      <label onclick="location.href = 'showQuestionnaire?questionnaireId='+<%=item.getid()%>;"        type="text" name = "questionnaireTitle" class="btn btn-link" ><%=item.getname()%> </label>
                                   
        
                                     
                                  
                                  </td>
                                  
                                 
                                  <td>
                                      
                                          <%
                                          if (item.getisenabled()==1){
                                          %>
                                         <p class="text-success">Published</p>
                                          <%} else {%>
                                          <p class="text-warning">Unpublished</p>
                                          <%} %>
                                          
                                      
                                  
                                  </td>  
                                  
                                <td> <%=item.getdate_created()%> </td>            
                              
                                <td>
                                    
                                    
                                        
                                 
                                    
                                   
                                          <%
                                          if (item.getisenabled()==1){
                                          %>
                                           <button id="enableQuestinnaire" onclick="location.href = 'EnDisDelQuestinnaire?disableQuestinnaire=&lastidQuestionnaire='+<%=item.getid()%>+'&managerId='+<%=managerId%>;"   name="disableQuestinnaire" class="btn btn-warning" >Unpublish</button>
                                          <%} else {%>
                                            <button id="disableQuestinnaire" onclick="location.href = 'EnDisDelQuestinnaire?enableQuestinnaire=&lastidQuestionnaire='+<%=item.getid()%>+'&managerId='+<%=managerId%>;" name="enableQuestinnaire" class="btn btn-success" >Publish</button>
                                          <%} %>
                                          
                                         <button class="btn btn-danger" onclick="deleteQuestinnaire(<%=item.getid()%>,<%=managerId%>);"  >Delete</button>

                                         
                                         <button id="share"  onclick="share('<%=item.gettoken()%>');"  class="btn btn-link" name="edit" >Share</button>

                                    
                               
                    
                               </td>
                                
                                
                                
                                
                            </tr>
                            
                            <%
                             };
                            %> 
                                                                                                    
                                   
 
                        </table>


                   
                   
                    <!-- -----------------------------------------------Modal content 1------------------------------------------------------- -->
 
                    
                    
               
                    
                           <div id="myModal1" class="modal">
                          
                                    
                              <div class="modal-content">
                                <span class="close">&times;</span>
                                                      

                                
                             <!-- <form action="addQuestionnaire"  -->
                                      
                
                             
                            <div class="col-sm-5"> 
                                
                          <h7>   <label   id = "errorMsgTitle" type="text"  class="text-danger" > </label>  </h7>
                              
                            <input class="form-control" type="text" id="quesionnaireTitle" name="quesionnaireTitle"  placeholder="Quesionnaire Title"> 
                            
                      
                    
                               <p><p><p>
                                   
                            <button id="addQuestionnaire" onclick="addQuestionnaire()"  class="btn btn-primary" > Create Questionnaire </button>
                             </div>
                            
                            
                      

                             </div>
                               
                               
                            
                            </div>    
                               
                             
                         
                                
                                
                           

                             </div>
     
                    
                            
                               <script>
                            
                          
                               </script>
                               
                               
                            <script>
                            
                             
                              
                            
                            
                            
                            function addQuestionnaire(){
                                
                                
                             var quesionnaireTitle = document.getElementById("quesionnaireTitle").value;
                             if(quesionnaireTitle.length<1){
                                   document.getElementById("errorMsgTitle").innerHTML ="The title box shouldn't be empty";
                             }                                           
                            
                                     
                                     
                                     else
                                  window.open("addQuestionnaire?quesionnaireTitle="+ quesionnaireTitle +"&managerId="+<%=managerId%> ,"_self");                     

                            }
                            
                            
                            </script>
                            
                            
        <!-- how to open the model -->
                            
                          <script>
                            // Get the modal
                            var modal1 = document.getElementById("myModal1");

                            // Get the button that opens the modal
                            var btn1 = document.getElementById("addQuestionnaire");
                            // Get the <span> element that closes the modal
                            var span1 = document.getElementsByClassName("close")[0];

                            // When the user clicks the button, open the modal 
                            btn1.onclick = function() {
                              modal1.style.display = "block";
                            }

                            // When the user clicks on <span> (x), close the modal
                            span1.onclick = function() {
                              modal1.style.display = "none";
                            }

                            // When the user clicks anywhere outside of the modal, close it
                            window.onclick = function(event) {
                              if (event.target == modal1) {
                                modal1.style.display = "none";
                              }
                            }
                                                        
                            </script>
                            
                                <!-- store it in javascript catche -->
                          <script>

                              var managerId = <%=managerId%>;  
                              localStorage['managerId'] = managerId ;
                           


                          </script>                          
                    
                                        

                          
                          
                              <!-- -----------------------------------------------share Modal content 1------------------------------------------------------- -->
 
                              
                              
                           <div id="shareModal" class="modal">
                               
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    
                              <div class="modal-content">            
                   
                                  
                                  
                                        <div class="modal-body">
                                     
                                       
                                          <input class="form-control" type="text" id="link" name="link"  placeholder="Quesionnaire Title">
                                          
                                                <div  class="d-flex justify-content-center">  
                                         <label id="copied" class="text-secondary" ></label>
                                                </div>
                                         

                                      
                              
                                          
                                        </div>
                                  
                                  
                                        <div class="modal-footer">
                                        
                                          <button id="copyLink" onclick="copyLink();"  type="button" class="btn btn-primary">Copy</button>
                                          <button id="close"  type="button" class="btn btn-secondary" >Close</button>
                                        </div>

                               
                              </div>
                               
                             
                               
                              </div>
                              </div>
                               
                               
 <!-- -------------------------------------------------------------- Delete------------------------------------------------------- -->                            
                                   <div id="deleteModal" class="modal">
                               
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    
                              <div class="modal-content">            
                   
                                  
                                  
                                        <div class="modal-body">
                                     
                                       
                                                                                  
                                        <div  class="d-flex justify-content-center">  
                                         <label>  Are you sure?  </label>
                                                </div>                                          
                                        </div>
                                  
                                  
                                        <div class="modal-footer">
                                        
                                          <button id="deleteQuestinnaire"   type="button" class="btn btn-danger">Delete</button>
                                          <button id="closeDeleteModel"  type="button" class="btn btn-secondary" >Close</button>
                                        </div>

                               
                              </div>
                               
                             
                               
                              </div>
                              </div>
                               
 
 
                             </div>
                          
                              
                       

                            <script>
                            // Get the modal
                            var deleteModal = document.getElementById("deleteModal");

                         
                         var id;
                         var manager_id;
                           function deleteQuestinnaire(x,y){
                               
                               id=x;
                               manager_id=y;
                               
                                deleteModal.style.display = "block"; 
                                
                                
                                var deleteQuestinnaire = document.getElementById("deleteQuestinnaire");
                                
                                deleteQuestinnaire.onclick = function() {
                                    
                                    
                                window.open('EnDisDelQuestinnaire?deleteQuestinnaire=&lastidQuestionnaire='+ x  +'&managerId='+y  ,"_self");  
                           
                                }
                               
                               
                               
                               
                           }


                              var closeDeleteModel = document.getElementById("closeDeleteModel");

                            // When the user clicks the button, open the modal 
                         

                            // When the user clicks on <span> (x), close the modal
                            closeDeleteModel.onclick = function() {
                              deleteModal.style.display = "none";
                            }

                            // When the user clicks anywhere outside of the modal, close it
                            window.onclick = function(event) {
                              if (event.target == deleteModal) {
                                deleteModal.style.display = "none";
                              }
                            }
                    
                                                        
                            </script>
                      
                          
                          
                          



                               
                               
                               <script>
                  
                  
                        var shareModal = document.getElementById("shareModal");
                         var copyText =  document.getElementById("link");
                  
                       function copyLink(){
                           
                       

                        /* Select the text field */
                        copyText.select();
                        copyText.setSelectionRange(0, 99999); /*For mobile devices*/

                        /* Copy the text inside the text field */
                        document.execCommand("copy");
                        
                        document.getElementById("copied").innerHTML = 'Copied';
                           
                       }
                       
                       
                        function share(token){
                            
                            document.getElementById("copied").innerHTML = '';
                              shareModal.style.display = "block";
                              document.getElementById("link").value = 'http://localhost:8084/pollweb2/checkquestionnaire?token='+token;
                       }
                      
                  
                       
                        
                            
                            var span = document.getElementById("close");

                            // When the user clicks the button, open the modal 
                         

                            // When the user clicks on <span> (x), close the modal
                            span.onclick = function() {
                              shareModal.style.display = "none";
                            }

                            // When the user clicks anywhere outside of the modal, close it
                            window.onclick = function(event) {
                              if (event.target == shareModal) {
                                shareModal.style.display = "none";
                              }
                            }
                                                        
                            </script>
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          

                          
                          
                          
                          


                    </div>
                </div>
            </div>
        </div>
    
    
    
    
    
    
    
    
    
</body>





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