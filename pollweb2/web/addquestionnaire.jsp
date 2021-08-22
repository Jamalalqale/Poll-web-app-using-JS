

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
                            <h3 class="bg-danger text-white text-center py-3"> Add Question</h3>
                        </div>






                        <!-- taking values from java cache -->
                        <%
                            int lastidQuestionnaire;
                            lastidQuestionnaire = (int) request.getAttribute("lastidQuestionnaire");
                            String quesionnaireTitle;
                            quesionnaireTitle = (String) request.getAttribute("quesionnaireTitle");
                            
                         

                            int isprivate = (int) request.getAttribute("isprivate");
                            //out.println(isprivate);

                        %>


                        <%                            ArrayList<questionsItem> list = new ArrayList<questionsItem>();
                            list = (ArrayList<questionsItem>) request.getAttribute("questionslist");

                        %>



                        <%                            ArrayList<subQuestionsItem> list2 = new ArrayList<subQuestionsItem>();
                            list2 = (ArrayList<subQuestionsItem>) request.getAttribute("sub_questionslist");

                        %>



                        <%                             ArrayList<questionnaireUsersItem> list3 = new ArrayList<questionnaireUsersItem>();
                            list3 = (ArrayList<questionnaireUsersItem>) request.getAttribute("questionnaireUserslist");

                            /*  for (int i = 0; i < list3.size(); i++) {
                                   questionnaireUsersItem item3 = new questionnaireUsersItem();
                                   item3 = list3.get(i);
                                    out.println(item3.getname());
                                   out.println(item3.getemail());
                                   out.println(item3.getpassword());
                        }
                             */

                        %>







 <!-- -------------------------------------------------------  Menu   ----------------------------------------------------------------------------------------------->


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


                        <script>
                            document.getElementById("manager_id").value = localStorage['managerId'];
                        </script>   



                        <!----------------------------------------------- End  Menu-------------------------------   -->            


                        <p>
                        <div class="col-lg-6 m-auto">
                            <form action="editQuesionnaireTitle">
                                Questionnaire Title <input name="quesionnaireTitle" type="text" class="form-control mb-2"  disabled  id="quesionnaireTitleLabel">
                                <button id="savequesionnaireTitle" class="btn btn-success" style="display:none;" name="save"  >Submit</button>
                                <input id="lastidQuestionnaire"  type= "hidden"    name ="lastidQuestionnaire" value="<%=lastidQuestionnaire%>"/>



                            </form>

                            <button id="editquesionnaireTitle"   onclick="myFunction('savequesionnaireTitle', 'editquesionnaireTitle', 'cancelquesionnaireTitle', 'quesionnaireTitleLabel')" class="btn btn-link" name="edit" >Edit Title</button>
                            <button id="cancelquesionnaireTitle"   onclick="myFunction('savequesionnaireTitle', 'editquesionnaireTitle', 'cancelquesionnaireTitle', 'quesionnaireTitleLabel')" style="display:none;" class="btn btn-danger" name="Cancel" >Cancel</button> 



                        </div>



                                <!--
                         <div class="d-flex justify-content-between">
                            
                             <div class="dropdown">
                            <button class="btn btn-primary"
                                    onclick="location.href = 'display_prticipant_answers?lastidQuestionnaire=' +<%=lastidQuestionnaire%> + '&participant_pointer=0&quesionnaireTitle=' + '<%=quesionnaireTitle%>' + '&participant_length=0'" >
                                Participants
                            </button>                       
                        </div>
                        </div>
                       
                        -->
                        
                
                                
                                
                                
                                

                    </div>




                                
                       
                                

                    <div class="card mt-5">
                        
                            <div class="clearfix">

                          
                                  
                                  <div class="dropdown">
                            <button onclick="location.href = 'test.jsp';" class="dropbtn">Add Question</button>                       
                        </div>
                                
                                
                                
                                     <div class="dropdown">
                           <button class="dropbtn"
                                    onclick="location.href = 'display_prticipant_answers?lastidQuestionnaire=' +<%=lastidQuestionnaire%> + '&participant_pointer=0&quesionnaireTitle=' + '<%=quesionnaireTitle%>' + '&participant_length=0'" >
                                Participants
                            </button>                      
                        </div>
                                
                                
                            </div>  
                        
                        
                        

                        <!--
                        <div class="dropdown">
                            <button class="dropbtn">Add Question</button>
                            <div class="dropdown-content">


                                <button onclick="location.href = 'shorQuestion.jsp';" class="btn btn-primary" >Short</button>                                  

                                <button onclick="location.href = 'longQuestion.jsp';" class="btn btn-primary" >Long</button>  

                                <button onclick="location.href = 'checkboxQuestion.jsp';" class="btn btn-primary" >Checkbox</button>                                  

                                <button onclick="location.href = 'radioQuestion.jsp';" class="btn btn-primary" >Radio</button>
                                
                                <button onclick="location.href = 'test.jsp';" class="btn btn-primary" >Number</button> 

                                <button onclick="location.href = 'test.jsp';" class="btn btn-primary" >Date</button>
                                



                            </div>
                        </div>

                     -->
                        
                        



                        <table class="table table-bordered">
                            <tr>

                                <td> Question</td>
                                        

                            </tr>


                            <% for (int i = 0; i < list.size(); i++) {
                                    questionsItem item = new questionsItem();
                                    item = list.get(i);
                                    // out.println(item.getques_text());
                                    //out.println(actor.getFirstname());
                                    //out.println(actor.getLastname());
                            %>

                            <tr>

                                <td > <h5>Q<%=i + 1%>- <%=item.getques_text()%>  </h5> <br>



                            <% for (int j = 0; j < list2.size(); j++) {
                                    subQuestionsItem item2 = new subQuestionsItem();
                                    item2 = list2.get(j);
                                    if (item2.getques_id() == item.getid()) {
                                        out.println(item2.getsub_ques_text());


                            %>
                                    <br>
                            <%                                    }//if
                                }//for
                            %>                      

                                </td>                                
                                     


                                <td>
                                    <form action="editDeleteQuestion">


                                        <button id="editQuestionButton" name="editQuestionButton" class="btn btn-primary" >Edit</button> 
                                        <button id="deleteQuestionButton"  name="deleteQuestionButton"   onclick="return confirm('Are you sure?');" class="btn btn-danger" name="deleteQuestionButton" >Delete</button>

                                        <input id="lastidQuestionnaire"  type= "hidden"    name ="lastidQuestionnaire" value="<%=lastidQuestionnaire%>"/>                                       
                                        <input id="question_id"   type= "hidden"      name ="question_id" value=  <%=item.getid()%> />
                                        <input id="question_type"   type= "hidden"      name ="question_type" value=  <%=item.getques_type()%> />
                                        <input id="question_text"   type= "hidden"      name ="question_text" value="<%=item.getques_text()%>" />


                                    </form>
                                </td>
                            </tr>

                            <%
                                };
                            %> 


                        </table>



                    </div>
                    <!-- ---------------------------------------------------------------------------------------------------------------------------------- -->

                    
                    
                    <div class="card mt-5">
                        <div class="p-3 mb-2 ">

                            <lablel> Privacy</lablel>

                            <label class="switch">
                                <input type="checkbox" id="privacyToggle" name="privacyToggle" onclick="toggleClicked();"/>
                                <span class="slider round"></span>
                            </label>

                            <form action="changeQuestionnairePrivacyServlet">
                                <button id="saveToggleStatus"  style="display:none;"   class="btn btn-success" name="saveToggleStatus" >Save</button>

                                <input id="lastidQuestionnaire"  type= "hidden"    name ="lastidQuestionnaire" value="<%=lastidQuestionnaire%>"/>       
                                <input id="isToggleChecked"  type= "hidden"    name ="isToggleChecked"/>       

                            </form>   




                        </div>                          









                        <table   id="uestionnaireUsersTable" class="table table-bordered">
                            <tr>

                                <td> Name</td>
                                <td> Email </td>  
                                <td> Password </td>
                                <td> Enable </td>


                            </tr>



                            <% for (int i = 0; i < list3.size(); i++) {
                                    questionnaireUsersItem item3 = new questionnaireUsersItem();
                                    item3 = list3.get(i);
                                    // out.println(item.getques_text());
                                    //out.println(actor.getFirstname());
                                    //out.println(actor.getLastname());
%>

                            <tr>

                                <td ><%=item3.getname()%></td>                                 
                                <td> <%=item3.getemail()%> </td>
                                <td> <%=item3.getpassword()%> </td>
                                <td>
                                    <% if (item3.getisenabled()==1){                                        
                                        %>
                                        <label type="text"  class="text-success" > Yes </label>  
                                        
                                    <%}else if (item3.getisenabled()==0){
                                    %>
                                    <label type="text"  class="text-danger" > No </label>  
                                    
                                    <%}%>
                                
                                
                                </td>



                                <td> <a href="editQuestionnaireUser.jsp"> <button id="QuestionnaireUser"
                                                                                  name="editQuestionnaireUser" class="btn btn-primary"
                                                                                  onclick="storeToCache(
                                                                                  <%=item3.getid()%>,
                                                                                                  '<%=item3.getname()%>',
                                                                                                  '<%=item3.getemail()%>',
                                                                                                  '<%=item3.getpassword()%>'
                                                                                                  );">Edit</button></a></td>

                                </td>

                                <td>
                                    <form action="deleteQuestionnaireUser">

                                        <button id="deleteQuestionButton"  name="deleteQuestionnaireUser"   onclick="return confirm('Are you sure?');" class="btn btn-danger">Delete</button>

                                        <input id="lastidQuestionnaire"  type= "hidden"    name ="lastidQuestionnaire" value="<%=lastidQuestionnaire%>"/>
                                        <input id="questionnaireUser_id"  type= "hidden"    name ="questionnaireUser_id" value="<%=item3.getid()%>"/>


                                    </form>
                                </td>



                            </tr>

                            <%
                                };
                            %> 







                        </table>   







                        <form action ="addQuestionnaireUser.jsp">
                            <button id="addQuestionnaireUserButton" class="btn btn-success" > Add User  </button>

                        </form>



                    </div>




                    <script>
                        function storeToCache(id, name, email, password, isenabled) {
                            localStorage.setItem("questionnaireUser_id", id);
                            localStorage.setItem("questionnaireUser_name", name);
                            localStorage.setItem("questionnaireUser_email", email);
                            localStorage.setItem("questionnaireUser_password", password);

                        }
                    </script>










                    <!-- change privacy toggle state  -->
                    <script>

                        if (<%=isprivate%> == 1) {
                            document.getElementById("privacyToggle").checked = true;
                        } else {
                            document.getElementById("privacyToggle").checked = false;
                        }
                    </script>



                    <!-- show/hide questionnaire user table  -->


                    <script>



                        if (<%=isprivate%> == 1) {
                            document.getElementById("uestionnaireUsersTable").style.visibility = "visible";
                            document.getElementById("addQuestionnaireUserButton").style.display = "block";

                        } else {
                            document.getElementById("uestionnaireUsersTable").style.visibility = "hidden";
                            document.getElementById("addQuestionnaireUserButton").style.display = "none";
                        }


                    </script>






                    <script>
                        function toggleClicked()
                        {






                            if (document.getElementById('privacyToggle').checked)
                            {
                                document.getElementById('isToggleChecked').value = 1;
                            } else {
                                document.getElementById('isToggleChecked').value = 0;
                            }
                            document.getElementById('saveToggleStatus').style.display = "block";

                        }
                    </script>

















                    <!-- store it in javascript catche -->
                    <script>

                        var quesionnaireTitle = '<%= quesionnaireTitle%>';
                        var lastidQuestionnaire = <%= lastidQuestionnaire%>;
                        // var isprivate = '<%= isprivate%>';



                        //localStorage['quesionnaireTitle'] = quesionnaireTitle;
                        localStorage['lastidQuestionnaire'] = lastidQuestionnaire;
                        // localStorage['isprivate'] = isprivate;
                        document.getElementById("quesionnaireTitleLabel").value = quesionnaireTitle;
                        document.getElementById("lastidQuestionnaire").value = lastidQuestionnaire;
                        //document.getElementById("quesionnaireTitle").value = quesionnaireTitle;


                    </script>                       


                    <script>

                        function myFunction(x, y, z, w) {

                            var save = document.getElementById(x);
                            var edit = document.getElementById(y);
                            var cancel = document.getElementById(z);
                            var questionTitle = document.getElementById(w);

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

                            if (document.getElementById("quesionnaireTitleLabel").disabled == true)
                                document.getElementById("quesionnaireTitleLabel").disabled = false
                            else
                                document.getElementById("quesionnaireTitleLabel").disabled = true



                        }


                    </script>                         











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